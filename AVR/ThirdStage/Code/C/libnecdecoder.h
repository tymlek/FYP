#ifndef LIBNECDECODER_H
#define LIBNECDECODER_H
 
 // Uncomment this to enable extended NEC protocol support and uncomment *both* to enable Apple's extended protocol.
 #define PROTOCOL_NEC_EXTENDED
 #define PROTOCOL_APPLE_EXTENDED
 
 // AGC Burst, 9ms typical, nominal should be 70 - i.e 9/0.128
 #define TIME_BURST_MIN 65
 #define TIME_BURST_MAX 80
 
  // Gap after AGC Burst, 4.5ms typical, nominal should be 
 #define TIME_GAP_MIN   30
 #define TIME_GAP_MAX   40

 // Gap (key hold) after AGC Burst, 2.25ms typical
 #define TIME_HOLD_MIN   15
 #define TIME_HOLD_MAX   20

 // Short pulse for each bit, 560us typical
 #define TIME_PULSE_MIN  2
 #define TIME_PULSE_MAX  7
 
 // Gap for logical 0, 560us typical
 #define TIME_ZERO_MIN   2
 #define TIME_ZERO_MAX   7
 
 // Gap for logical 1, 1.69ms typical
 #define TIME_ONE_MIN    9
 #define TIME_ONE_MAX   19//21
 
 // Definition for state machine 
 enum ir_state_t { IR_BURST = 0, IR_GAP, IR_ADDRESS, IR_ADDRESS_INV, IR_COMMAND, IR_COMMAND_INV };
 
 // Definition for status bits
 #define IR_RECEIVED 0 // Received new command
 #define IR_KEYHOLD  1 // Key hold
 #define IR_SIGVALID 2 // Valid signal (Internal used)

 // Registers
 #define REMOTE_REGISTER DDRD
 #define REMOTE_PORT PORTD
 #define REMOTE_LED (1 << PD1)
 #define REMOTE_IR  (1 << PD2)
 
 // Timer Overflows till key hold flag is cleared
 #define IR_HOLD_OVF 5
 
 // Structure definition
 struct ir_struct {
   #ifdef PROTOCOL_NEC_EXTENDED
     uint8_t address_l;
     uint8_t address_h;
   #else
     uint8_t address;
   #endif
   #ifdef PROTOCOL_APPLE_EXTENDED
   uint8_t id;
   #endif
   uint8_t command;
   uint8_t status;
};

// Global status structure
extern volatile struct ir_struct ir;

 // Functions
 void IR_LED_Init(void);
 void IR_Init(void);
 void IR_Stop(void);
 void IR_Decode(void);
 void IR_Overflow(void);

#endif
