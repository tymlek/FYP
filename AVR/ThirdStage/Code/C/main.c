#include "cpu_speed.h"

#include <stdbool.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <util/delay.h>

#include "remote.h"
#include "libnecdecoder.h"
#include "fifo.h"
#include "eeprom.h"
#include "stepper_motor.h"
#include "volume_limits.h"
#include "output_relays.h"
#include "panel_buttons.h"
#include "output_LED.h"
#include "bit_manip.h"

#define SLEEP_DELAY			100000
#define DEBOUNCE_DELAY		100
#define PAIRING_LED_DELAY	500
#define IR_LED_DELAY		150
#define MOTOR_DELAY			100
#define LEVEL_UP_DELAY		500										// msec
#define VOLUME_DELAY		250										// msec (500 ms - DEBOUNCE_DELAY - IR_LED_DELAY)

static volatile bool powerDown = false;
static volatile bool levelFlag = false;								// Flag to execute only once if button hold
static volatile uint8_t currentVol = 0;
static volatile uint8_t previousVol = 0;
static volatile uint32_t count = 0;									// Counter to power down

static inline void sleepNow(void);
static inline void decodeCommand(void);
static inline void remoteAlternateCommands(const struct ir_struct ir);
static inline void decodeButton(void);
static inline void decodeKnob(void);
static inline void levelShiftUp(void);
static inline void levelShiftDown(void);
static inline void setLevelHigh(void);
static inline void setLevelMedium(void);
static inline void setLevelLow(void);

//-----------------------------------------------------------------------------

ISR (INT0_vect) {
	if (powerDown) {
		sleep_disable();
		cli();

		// Change interrupt to state change
		SETBIT(EICRA,(1 << ISC00));
		powerDown = false;

		sei();
	}

	IR_Decode();
}

//-----------------------------------------------------------------------------

ISR (PCINT0_vect) {
	if (powerDown) {
		sleep_disable();
		cli();

		powerDown = false;

		sei();
	}

	decodeButton();
}

//-----------------------------------------------------------------------------

ISR (PCINT1_vect) {
	if (powerDown) {
		sleep_disable();
		cli();

		powerDown = false;

		sei();
	}

	decodeKnob();
}

//-----------------------------------------------------------------------------

ISR (TIMER0_OVF_vect) {
	IR_Overflow();
}

//-----------------------------------------------------------------------------

int main(void)
{
	uint8_t paired_id = 0;
	uint8_t last_level = 0;

	EEPROM_Init();
	IR_Init();
	IR_LED_Init();
	Fifo_Init();
	Stepper_Init();
	VolLimits_Init();
	OutputRelays_Init();
	OutputLED_Init();
	PanelButtons_Init();

	paired_id = EEPROM_Read(PAIR_ADDR);
	last_level = EEPROM_Read(LEVEL_ADDR);
	
	switch (last_level) {
		case OUTPUT_LED_HIGH: {									// Switch to medium
			setLevelHigh();

			break;
		}

		case OUTPUT_LED_MED: {									// Switch to low
			setLevelMedium();

			break;
		}

		case OUTPUT_LED_LOW: {									// Switch to high
			setLevelLow();
			
			break;
		}

		default: {
			setLevelLow();
			
			break;
		}
	}

	while (1) {
		if (CHECKBIT(ir.status,(1 << IR_RECEIVED))) {
			cli();
			//CLEARBIT(REMOTE_PORT,REMOTE_LED);

			if (ir.address_l == 0xEE /*238*/ && ir.address_h == 0x87 /*135*/) {
				if (paired_id == ir.id) {
					Fifo_Put(ir.command);
				}
			
			}

			// Reset state
			CLEARBIT(ir.status,(1 << IR_RECEIVED));
		} else if (CHECKBIT(ir.status,(1 << IR_KEYHOLD))) {
			remoteAlternateCommands(ir);
			paired_id = EEPROM_Read(PAIR_ADDR);

			// Reset state
			CLEARBIT(ir.status,((1 << IR_RECEIVED) | (1 << IR_KEYHOLD)));
		} else {
			decodeCommand();
			//SETBIT(REMOTE_PORT,REMOTE_LED);		
		}

		++count;

		if (count >= SLEEP_DELAY) {
			count = 0;
			sleepNow();
		}

		sei();
	}

	return 0;
}

//-----------------------------------------------------------------------------

static void sleepNow(void) {
	cli();
	
	set_sleep_mode(SLEEP_MODE_PWR_DOWN);
	sleep_enable();
	
	// Change interrupt to low state trigger
	CLEARBIT(EICRA,((1 << ISC01) | (1 << ISC00)));
	powerDown = true;

	sei();
	sleep_cpu();
}

//-----------------------------------------------------------------------------

static void decodeCommand(void) {
	uint8_t command = 0;
	bool remaining = Fifo_Get(&command);
	
	while (remaining) {

		switch (command) {
			case REMOTE_UP: {
				CLEARBIT(OUTPUT_RELAYS_PORT,OUTPUT_RELAYS_MUTE);			// Mute off
				CLEARBIT(OUTPUT_LED_PORT,OUTPUT_LED_MUTE);

				//if (!VolLimits_Up() && ((OUTPUT_LED_PIN & 0xe0) != OUTPUT_LED_HIGH)) {
					Stepper_CW();											// Volume up (stepper clockwise)
				//}
				
				CLEARBIT(REMOTE_PORT,REMOTE_LED);
				_delay_ms(IR_LED_DELAY);
				SETBIT(REMOTE_PORT,REMOTE_LED);
				
				_delay_ms(DEBOUNCE_DELAY);
				
				break;
			}
			
			case REMOTE_DOWN: {
				CLEARBIT(OUTPUT_RELAYS_PORT,OUTPUT_RELAYS_MUTE);			// Mute off
				CLEARBIT(OUTPUT_LED_PORT,OUTPUT_LED_MUTE);

				//if (!VolLimits_Down() && ((OUTPUT_LED_PIN & 0xe0) != OUTPUT_LED_LOW)) {
					Stepper_CCW();											// Volume down (stepper counter clockwise)
				//}
				
				CLEARBIT(REMOTE_PORT,REMOTE_LED);
				_delay_ms(IR_LED_DELAY);
				SETBIT(REMOTE_PORT,REMOTE_LED);
				
				_delay_ms(DEBOUNCE_DELAY);
				
				break;
			}
			
			case REMOTE_LEFT: {
				switch(OUTPUT_LED_PIN & 0xe0) {
					case OUTPUT_LED_HIGH: {									// Switch to medium
						setLevelMedium();

						break;
					}

					case OUTPUT_LED_MED: {									// Switch to low
						setLevelLow();

						break;
					}

					case OUTPUT_LED_LOW: {									// Switch to high

						break;
					}

					default: {
						break;
					}
				}
				
				CLEARBIT(REMOTE_PORT,REMOTE_LED);
				_delay_ms(IR_LED_DELAY);
				SETBIT(REMOTE_PORT,REMOTE_LED);
				
				_delay_ms(DEBOUNCE_DELAY);

				break;
			}
			
			case REMOTE_RIGHT: {											// Switch to low
				/*switch(OUTPUT_LED_PIN & 0xe0) {
					case OUTPUT_LED_HIGH: {

						break;
					}

					case OUTPUT_LED_MED: {									// Switch to high
						setLevelHigh();

						break;
					}

					case OUTPUT_LED_LOW: {									// Switch to medium
						setLevelMedium();

						break;
					}

					default: {
						break;
					}
				}

				CLEARBIT(REMOTE_PORT,REMOTE_LED);
				_delay_ms(IR_LED_DELAY);
				SETBIT(REMOTE_PORT,REMOTE_LED);
				
				_delay_ms(DEBOUNCE_DELAY);*/
				
				_delay_ms(LEVEL_UP_DELAY);
				levelFlag = true;											// True so is executed once if button hold
				
				break;
			}
			
			case REMOTE_MENU: {
				_delay_ms(PAIRING_LED_DELAY);
				
				break;
			}
			
			case REMOTE_PLAY_2: {
				TOGGLEBIT(OUTPUT_RELAYS_PORT,OUTPUT_RELAYS_MUTE);			// Toggle output
				TOGGLEBIT(OUTPUT_LED_PORT,OUTPUT_LED_MUTE);

				CLEARBIT(REMOTE_PORT,REMOTE_LED);
				_delay_ms(IR_LED_DELAY);
				SETBIT(REMOTE_PORT,REMOTE_LED);
				
				_delay_ms(DEBOUNCE_DELAY);
				
				break;
			}

			case REMOTE_PLAY_1:{
				
				
				break;
			}
			
			default: {
				
				break;
			}
		}

		remaining = Fifo_Get(&command);
	}
}

//-----------------------------------------------------------------------------

static void remoteAlternateCommands(const struct ir_struct ir) {
	// Pairing mode!
	switch (ir.command) {
		case REMOTE_PAIR: {
			if (EEPROM_Write(PAIR_ADDR, ir.id)) {
				uint8_t i = 0;
				for (i = 0; i < 2; ++i) {
					CLEARBIT(REMOTE_PORT,REMOTE_LED);			// LED on
					_delay_ms(PAIRING_LED_DELAY);
					SETBIT(REMOTE_PORT,REMOTE_LED);				// LED off
					_delay_ms(PAIRING_LED_DELAY);
				}
			}
			break;
		}

		case REMOTE_UNPAIR: {
			//if (EEPROM_Write(PAIR_ADDR, UNPAIRED_REMOTE)) {
			//	uint8_t i = 0;
			//	for (i = 0; i < 4; ++i) {
			//		CLEARBIT(REMOTE_PORT,REMOTE_LED);			// LED on
			//		_delay_ms(PAIRING_LED_DELAY);
			//		SETBIT(REMOTE_PORT,REMOTE_LED);				// LED off
			//		_delay_ms(PAIRING_LED_DELAY);
			//	}
			//}
			break;
		}

		case REMOTE_UP: {
			CLEARBIT(OUTPUT_RELAYS_PORT,OUTPUT_RELAYS_MUTE);			// Mute off
			CLEARBIT(OUTPUT_LED_PORT,OUTPUT_LED_MUTE);
			
			CLEARBIT(REMOTE_PORT,REMOTE_LED);

			//if (!VolLimits_Up() && ((OUTPUT_LED_PIN & 0xe0) != OUTPUT_LED_HIGH)) {
				Stepper_CW();
				_delay_ms(MOTOR_DELAY);
			//}
			
			count = 0;			// Reset sleep mode
			
			SETBIT(REMOTE_PORT,REMOTE_LED);
			
			break;
		}
		
		case REMOTE_DOWN: {
			CLEARBIT(OUTPUT_RELAYS_PORT,OUTPUT_RELAYS_MUTE);			// Mute off
			CLEARBIT(OUTPUT_LED_PORT,OUTPUT_LED_MUTE);
			
			CLEARBIT(REMOTE_PORT,REMOTE_LED);

			//if (!VolLimits_Down() && ((OUTPUT_LED_PIN & 0xe0) != OUTPUT_LED_LOW)) {
				Stepper_CCW();
				_delay_ms(MOTOR_DELAY);
			//}
			
			count = 0;			// Reset sleep mode
			
			SETBIT(REMOTE_PORT,REMOTE_LED);
			
			break;
		}
		
		case REMOTE_RIGHT: {
			if (!levelFlag) {											// Leave if already executed
				break;
			}
			
			switch(OUTPUT_LED_PIN & 0xe0) {
				case OUTPUT_LED_HIGH: {

					break;
				}

				case OUTPUT_LED_MED: {									// Switch to high
					setLevelHigh();

					break;
				}

				case OUTPUT_LED_LOW: {									// Switch to medium
					setLevelMedium();

					break;
				}

				default: {
					break;
				}
			}

			CLEARBIT(REMOTE_PORT,REMOTE_LED);
			_delay_ms(IR_LED_DELAY);
			SETBIT(REMOTE_PORT,REMOTE_LED);
			
			levelFlag = false;											// False so is repeated only once
			
			break;
		}
		
		//case REMOTE_BATTERY_W:
		//case REMOTE_BATTERY_S:
		
		default:
			break;
	}
}

//-----------------------------------------------------------------------------

static void decodeButton(void) {
	cli();

	CLEARBIT(PCICR,(1 << PCIE0));								// Disable PCINT0 because switch bouncing

	_delay_ms(DEBOUNCE_DELAY);

	if (!CHECKBIT(PANEL_BUTTONS_PIN,BUTTON_MUTE)) {
		TOGGLEBIT(OUTPUT_RELAYS_PORT,OUTPUT_RELAYS_MUTE);	// Toggle Mute
		TOGGLEBIT(OUTPUT_LED_PORT,OUTPUT_LED_MUTE);
	}
	else if (!CHECKBIT(PANEL_BUTTONS_PIN,BUTTON_HIGH)) {
		setLevelHigh();
	}
	else if (!CHECKBIT(PANEL_BUTTONS_PIN,BUTTON_MED)) {
		setLevelMedium();
	}
	else if (!CHECKBIT(PANEL_BUTTONS_PIN,BUTTON_LOW)) {
		setLevelLow();
	}
#if _DEBBUG_
	else {
		uint8_t i = 0;
		for (i = 0; i < 4; ++i) {
			CLEARBIT(REMOTE_PORT,REMOTE_LED);			// LED on
			_delay_ms(PAIRING_LED_DELAY);
			SETBIT(REMOTE_PORT,REMOTE_LED);				// LED off
			_delay_ms(PAIRING_LED_DELAY);
		}
	}
#endif

	SETBIT(PCICR,(1 << PCIE0));				// Enable PCINT0

	sei();
}

//-----------------------------------------------------------------------------

static inline void decodeKnob(void) {
	cli();

	CLEARBIT(PCICR,(1 << PCIE1));								// Disable PCINT1 because switch bouncing

	if (VolLimits_Up()) {
		previousVol = currentVol;
		currentVol = LIMIT_UP;
		//}
	} else if (VolLimits_Down()) {
		previousVol = currentVol;
		currentVol = LIMIT_DOWN;
	}

	if ((currentVol == LIMIT_UP) && (previousVol == 0) && !VolLimits_Up()) {
		previousVol = 0;
		currentVol = 0;
	} else if ((currentVol == LIMIT_DOWN) && (previousVol == 0) && !VolLimits_Down()) {
		previousVol = 0;
		currentVol = 0;
	}

	if ((currentVol == LIMIT_DOWN) && (previousVol == LIMIT_UP)
			&& ((OUTPUT_LED_PIN & 0xe0) != OUTPUT_LED_HIGH)) {
		levelShiftUp();

		previousVol = 0;
		currentVol = 0;
	} else if ((currentVol == LIMIT_UP) && (previousVol == LIMIT_DOWN)
			&& ((OUTPUT_LED_PIN & 0xe0) != OUTPUT_LED_LOW)) {
		levelShiftDown();

		previousVol = 0;
		currentVol = 0;
	}

	SETBIT(PCICR,(1 << PCIE1));									// Enable PCINT0
}

//-----------------------------------------------------------------------------

static inline void levelShiftUp(void) {
	SETBIT(OUTPUT_RELAYS_PORT,OUTPUT_RELAYS_MUTE);			// Mute on
	SETBIT(OUTPUT_LED_PORT,OUTPUT_LED_MUTE);

	Stepper_CW();
	
	switch(OUTPUT_LED_PIN & 0xe0) {
		case OUTPUT_LED_MED: {								// Switch to high
			setLevelHigh();

			break;
		}

		case OUTPUT_LED_LOW: {								// Switch to medium
			setLevelMedium();

			break;
		}

		default: {
			break;
		}
	}
	
	CLEARBIT(OUTPUT_RELAYS_PORT,OUTPUT_RELAYS_MUTE);		// Mute off
	CLEARBIT(OUTPUT_LED_PORT,OUTPUT_LED_MUTE);
}

//-----------------------------------------------------------------------------

static inline void levelShiftDown(void) {
	SETBIT(OUTPUT_RELAYS_PORT,OUTPUT_RELAYS_MUTE);			// Mute on
	SETBIT(OUTPUT_LED_PORT,OUTPUT_LED_MUTE);

	Stepper_CCW();
	
	switch(OUTPUT_LED_PIN & 0xe0) {
		case OUTPUT_LED_HIGH: {								// Switch to medium
			setLevelMedium();

			break;
		}

		case OUTPUT_LED_MED: {								// Switch to low
			setLevelLow();

			break;
		}

		default: {
			break;
		}
	}
	
	CLEARBIT(OUTPUT_RELAYS_PORT,OUTPUT_RELAYS_MUTE);		// Mute off
	CLEARBIT(OUTPUT_LED_PORT,OUTPUT_LED_MUTE);
}

//-----------------------------------------------------------------------------

static inline void setLevelHigh(void) {
	CLEARBIT(OUTPUT_RELAYS_PORT,(OUTPUT_RELAYS_MED
									| OUTPUT_RELAYS_LOW
									| OUTPUT_RELAYS_HIGH));		// Button_High low because relay normally closed
	CLEARBIT(OUTPUT_LED_PORT,(OUTPUT_LED_MED
								| OUTPUT_LED_LOW));
	SETBIT(OUTPUT_LED_PORT,OUTPUT_LED_HIGH);
	
	EEPROM_Write(LEVEL_ADDR,OUTPUT_LED_HIGH);
}

//-----------------------------------------------------------------------------

static inline void setLevelMedium(void) {
	CLEARBIT(OUTPUT_RELAYS_PORT,(OUTPUT_RELAYS_LOW));
	SETBIT(OUTPUT_RELAYS_PORT,(OUTPUT_RELAYS_MED
								| OUTPUT_RELAYS_HIGH));
	CLEARBIT(OUTPUT_LED_PORT,(OUTPUT_LED_HIGH
								| OUTPUT_LED_LOW));
	SETBIT(OUTPUT_LED_PORT,OUTPUT_LED_MED);
	
	EEPROM_Write(LEVEL_ADDR,OUTPUT_LED_MED);
}

//-----------------------------------------------------------------------------

static inline void setLevelLow(void) {
	CLEARBIT(OUTPUT_RELAYS_PORT,OUTPUT_RELAYS_MED);
	SETBIT(OUTPUT_RELAYS_PORT,(OUTPUT_RELAYS_LOW
								| OUTPUT_RELAYS_HIGH));
	CLEARBIT(OUTPUT_LED_PORT,(OUTPUT_LED_HIGH
								| OUTPUT_LED_MED));
	SETBIT(OUTPUT_LED_PORT,OUTPUT_LED_LOW);
	
	EEPROM_Write(LEVEL_ADDR,OUTPUT_LED_LOW);
}

//-----------------------------------------------------------------------------