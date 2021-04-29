#include <avr/io.h>
#include <avr/interrupt.h>

//#include "remote.h"
#include "libnecdecoder.h"

volatile struct ir_struct ir;
volatile uint8_t ir_state;
//volatile uint8_t ir_state_prev;
volatile uint8_t ir_bitctr;

#ifdef PROTOCOL_NEC_EXTENDED
  volatile uint8_t ir_tmp_address_l;
  volatile uint8_t ir_tmp_address_h;
#else
  volatile uint8_t ir_tmp_address;
#endif

#ifdef PROTOCOL_APPLE_EXTENDED
  volatile uint8_t ir_tmp_id;
#endif

volatile uint8_t ir_tmp_command;
volatile uint8_t ir_tmp_keyhold;
volatile uint8_t ir_tmp_ovf;

volatile uint8_t cnt_state = 0;
volatile uint8_t old_cnt_state = 0;

//-----------------------------------------------------------------------------

// Setup the IR LED
void IR_LED_Init(void) {
	REMOTE_REGISTER |= (REMOTE_LED);
	REMOTE_PORT |= (REMOTE_LED); // LED off (active low)
}

//-----------------------------------------------------------------------------

 // ###### Initializes ir function ######
 void IR_Init(void) {
   // Timer: 8bit, Clock: 8MHz via XTAL, Prescaler 1024, Overflow = 32.768ms, Tick = 0.128ms 
   TCCR0A &= ~((1 << WGM00) | (1 << WGM01));
   TCCR0B |= ((1 << CS00) | (1 << CS02)); // Prescaler 1024
   TIMSK0 |= (1 << TOIE0); // When the TOIE0 bit is written to one, 
                        // and the I-bit in the Status Register is set (one), the
                        // Timer/Counter0 Overflow interrupt is enabled.

   // Interrupt 0 (PD2): Inverted signal input, triggered by logical change
   REMOTE_REGISTER &= ~(1 << PD2);
   REMOTE_PORT |= REMOTE_IR;
   
   EICRA |= (1 << ISC00);			// Logical change ICS00 = 1, ISC01 = 0
   EICRA &= ~(1 << ISC01);
   EIMSK |= (1 << INT0);			// Enable INT0

   // Reset state
   ir_state = IR_BURST;
   
   ir.status &= ~(1 << IR_RECEIVED);
	   
   // Reset global variables
   ir_tmp_keyhold = 0;
   ir_tmp_ovf = 0;
   TCNT0 = 0;
 }

 //-----------------------------------------------------------------------------


 // ###### Stops ir function ######
 void IR_Stop(void) {
   // Stop timer and disable interrupt.
   TCCR0B &= ~((1 << CS00)| (1 << CS02));
   TIMSK0 &= ~(1<<TOIE0);
   EIMSK &= ~(1 << INT0);
   //TCCR0 &= ~((1<<CS00) | (1<<CS02));
   //TIMSK &= ~(1<<TOIE0);
   //GICR  &= ~(1<<INT0);
}

//-----------------------------------------------------------------------------

void IR_Decode(void) {
 // ###### INT0 for decoding ######  
 //ISR(INT0_vect) {
	// Get current port state to check if we triggered on rising or falling edge
	cli();
    uint8_t port_state = (PIND & REMOTE_IR);
    cnt_state = TCNT0;
    sei();
   

    if (ir_tmp_ovf != 0) {
		// Overflow, so reset and ignore.
		ir_tmp_ovf = 0;
		ir_state = IR_BURST;
		TCNT0 = 0;
		return;
    }

    switch (ir_state) {
     
		case IR_BURST:
			if (!port_state) {  // falling edge (active low)
				TCNT0 = 0;
			} else {
				if ((cnt_state > TIME_BURST_MIN) && (cnt_state < TIME_BURST_MAX)) {
					ir_state = IR_GAP; // Next state
					TCNT0 = 0; // Reset counter
				}        
			}
			break;
      
		case IR_GAP: 
			if (!port_state) {
				if ((cnt_state>TIME_GAP_MIN) && (cnt_state<TIME_GAP_MAX)) {    
					TCNT0 = 0; // Reset counter         
					ir_state = IR_ADDRESS; // Next state
					ir_bitctr = 0; // Reset bit counter
					ir.status &= ~(1<<IR_KEYHOLD);
					break;
				} else {
					if ((cnt_state > TIME_HOLD_MIN) && (cnt_state < TIME_HOLD_MAX)) {
						if(ir.status & (1<<IR_SIGVALID)) {
							ir.status |= (1<<IR_KEYHOLD);
							ir_tmp_keyhold = IR_HOLD_OVF;
						}
						ir_state = IR_BURST;
						break;
				   }  
				}                                                                      
			}             
			// Should not happen, must be invalid. Reset.
			ir_state = IR_BURST;   
			break;
	  
		case IR_ADDRESS:
			if (port_state) {
				// Must be short pulse
				if((cnt_state > TIME_PULSE_MIN) && (cnt_state < TIME_PULSE_MAX)) {    
					TCNT0 = 0; // Reset counter
					break;        
				}
				// Should not happen, must be invalid. Reset.
				ir_state = IR_BURST;
			} else {
				if ((cnt_state > TIME_ZERO_MIN) && (cnt_state < TIME_ZERO_MAX)) {
					// 0
					#ifdef PROTOCOL_NEC_EXTENDED
						ir_tmp_address_l &= ~(1<<ir_bitctr++);
					#else
						ir_tmp_address &= ~(1<<ir_bitctr++);
					#endif 
					TCNT0 = 0; // Reset counter
					if (ir_bitctr >= 8) {
						ir_state = IR_ADDRESS_INV; // Next state
						ir_bitctr = 0; // Reset bit counter
					}
					break;
				} else {
					if ((cnt_state > TIME_ONE_MIN) && (cnt_state < TIME_ONE_MAX)) {
						// 1
						#ifdef PROTOCOL_NEC_EXTENDED
							ir_tmp_address_l |= (1<<ir_bitctr++);
						#else
							ir_tmp_address |= (1<<ir_bitctr++);
						#endif
						TCNT0 = 0; // Reset counter
						if (ir_bitctr >= 8) {
							ir_state = IR_ADDRESS_INV; // Next state
							ir_bitctr = 0; // Reset bit counter
						}
						break;
					}
				}
				// Should not happen, must be invalid. Reset.
				ir_state = IR_BURST;                
				break;  
			}
			break;   
 
		case IR_ADDRESS_INV:
			if (port_state) {
				// Must be short pulse
				if ((cnt_state > TIME_PULSE_MIN) && (cnt_state < TIME_PULSE_MAX)) {    
					TCNT0 = 0; // Reset counter
					break;        
				}
				// Should not happen, must be invalid. Reset.
				ir_state = IR_BURST;
			} else {
				if ((cnt_state > TIME_ZERO_MIN) && (cnt_state < TIME_ZERO_MAX)) {
					// 0 (inverted) or high address
					#ifdef PROTOCOL_NEC_EXTENDED
						ir_tmp_address_h &= ~(1<<ir_bitctr++);
					#else
						if (!(ir_tmp_address & (1<<ir_bitctr++))) {
							// Should not happen, must be invalid. Reset.
							ir_state = IR_BURST;
							break;
						}
					#endif 
					TCNT0 = 0; // Reset counter
					if (ir_bitctr >= 8) {
						ir_state = IR_COMMAND; // Next state
						ir_bitctr = 0; // Reset bit counter
					}
					break;
				} else {
					if ((cnt_state > TIME_ONE_MIN) && (cnt_state < TIME_ONE_MAX)) {
						// 1 (inverted) or high address
						#ifdef PROTOCOL_NEC_EXTENDED
							ir_tmp_address_h |= (1<<ir_bitctr++);
						#else
							if ((ir_tmp_address & (1<<ir_bitctr++))) {
								// Should not happen, must be invalid. Reset.
								ir_state = IR_BURST;
								break;
							}
						#endif
						TCNT0 = 0; // Reset counter
						if (ir_bitctr >= 8) {
							ir_state = IR_COMMAND; // Next state
							ir_bitctr = 0; // Reset bit counter
						} 
						break;
					}
				}
				// Should not happen, must be invalid. Reset.
				ir_state = IR_BURST;              
				break; 
			}
			break;
     
		case IR_COMMAND:
			if (port_state) {
				// Must be short pulse
				if ((cnt_state > TIME_PULSE_MIN) && (cnt_state < TIME_PULSE_MAX)) {    
					TCNT0 = 0; // Reset counter
					break;        
				}
				// Should not happen, must be invalid. Reset.
				ir_state = IR_BURST;
			} else {
				if ((cnt_state > TIME_ZERO_MIN) && (cnt_state < TIME_ZERO_MAX)) {
					// 0
					ir_tmp_command &= ~(1<<ir_bitctr++);
					TCNT0 = 0; // Reset counter
					if(ir_bitctr >= 8) {
						ir_state = IR_COMMAND_INV; // Next state
						ir_bitctr = 0; // Reset bit counter
					}
					break;
				} else {
					if((cnt_state > TIME_ONE_MIN) && (cnt_state < TIME_ONE_MAX)) {
						// 1
						ir_tmp_command |= (1<<ir_bitctr++);
						TCNT0 = 0; // Reset counter
						if (ir_bitctr >= 8) {
							ir_state = IR_COMMAND_INV; // Next state
							ir_bitctr = 0; // Reset bit counter
						}
						break;
					}
				}
				// Should not happen, must be invalid. Reset.
				ir_state = IR_BURST;                
				break;  
			}
			break;
	  
		case IR_COMMAND_INV:
			if (port_state) {
				// Must be short pulse
				if ((cnt_state > TIME_PULSE_MIN) && (cnt_state < TIME_PULSE_MAX)) {    
					TCNT0 = 0; // Reset counter
					break;        
				}
				// Should not happen, must be invalid. Reset.
				ir_state = IR_BURST;
			} else {
				if ((cnt_state > TIME_ZERO_MIN) && (cnt_state < TIME_ZERO_MAX)) {
					// 0 (inverted)
					#ifdef PROTOCOL_APPLE_EXTENDED
						ir_tmp_id &= ~(1<<ir_bitctr++);
					#else  
						if (!(ir_tmp_command & (1<<ir_bitctr++))) {
							// Should not happen, must be invalid. Reset.
							ir_state = IR_BURST;
							break;
						}
					#endif
					TCNT0 = 0; // Reset counter
					if (ir_bitctr >= 8) {
						ir_state = IR_BURST; // Decoding finished.
						// Only apply if received flag is not set, must be done
						// by the main program after reading address and command
						if(!(ir.status & (1<<IR_RECEIVED))) {
							#ifdef PROTOCOL_NEC_EXTENDED
								ir.address_l = ir_tmp_address_l;
								ir.address_h = ir_tmp_address_h;
							#else
								ir.address = ir_tmp_address;
							#endif
    						#ifdef PROTOCOL_APPLE_EXTENDED
								ir.id = ir_tmp_id;
								// According to https://hifiduino.wordpress.com/apple-aluminum-remote/
								// LSB is a parity check so let's shift it out!
								ir_tmp_command = ir_tmp_command >> 1;
							#endif
							ir.command = ir_tmp_command;
							ir.status |= (1<<IR_RECEIVED) | (1<<IR_SIGVALID);
							ir_tmp_keyhold = IR_HOLD_OVF; // To make sure that valid flag is cleared
							// Don't go to sleep.
							//sleep_reset();
						}
						ir_bitctr = 0; // Reset bit counter
					}
					break;
				} else {
					if ((cnt_state > TIME_ONE_MIN) && (cnt_state < TIME_ONE_MAX)) {
						// 1 (inverted)
						#ifdef PROTOCOL_APPLE_EXTENDED
							ir_tmp_id |= (1<<ir_bitctr++);
						#else
							if ((ir_tmp_command & (1<<ir_bitctr++))) {
								// Should not happen, must be invalid. Reset.
								ir_state = IR_BURST;
								break;
							}
						#endif
						TCNT0 = 0; // Reset counter
						if (ir_bitctr >= 8) {
							ir_state = IR_BURST; // Decoding finished.
							// Only apply if received flag is not set, must be done
							// by the main program after reading address and command
							if (!(ir.status & (1<<IR_RECEIVED))) {
								#ifdef PROTOCOL_NEC_EXTENDED
									ir.address_l = ir_tmp_address_l;
									ir.address_h = ir_tmp_address_h;
								#else
									ir.address = ir_tmp_address;
								#endif
								#ifdef PROTOCOL_APPLE_EXTENDED
									ir.id = ir_tmp_id;
									// According to https://hifiduino.wordpress.com/apple-aluminum-remote/ 
									// LSB is a parity check so let's shift it out!
									ir_tmp_command = ir_tmp_command >> 1;
								#endif
								ir.command = ir_tmp_command;
								ir.status |= (1<<IR_RECEIVED) | (1<<IR_SIGVALID);
								ir_tmp_keyhold = IR_HOLD_OVF; // To make sure that valid flag is cleared
								// Don't go to sleep.
								//sleep_reset();
							}
							ir_bitctr = 0; // Reset bit counter
						}
						break;
					}
				}
				// Should not happen, must be invalid. Reset.
				ir_state = IR_BURST;                
				break; 
			}    
			break;
    }
 }

 //-----------------------------------------------------------------------------

// ###### Timer 0 Overflow for hold flag clear ###### 
// ISR (TIMER0_OVF_vect) {
void IR_Overflow(void) {
   ir_tmp_ovf = 1;
   if (ir_tmp_keyhold > 0) {
     ir_tmp_keyhold--;
     if (ir_tmp_keyhold==0) {
		 ir.status &= ~((1<<IR_KEYHOLD) | (1<<IR_SIGVALID));
	 }
   }
 }

 //-----------------------------------------------------------------------------