#ifndef OUTPUT_LED_H_
#define OUTPUT_LED_H_

#include <avr/io.h>
#include "bit_manip.h"

#define OUTPUT_LED_DDR	DDRC
#define OUTPUT_LED_PORT	PORTC
#define OUTPUT_LED_PIN	PINC

#define OUTPUT_LED_MUTE (1 << PC4)
#define OUTPUT_LED_HIGH (1 << PC5)
#define OUTPUT_LED_MED (1 << PC6)
#define OUTPUT_LED_LOW (1 << PC7)

void OutputLED_Init(void) {
	SETBIT(OUTPUT_LED_DDR,(OUTPUT_LED_MUTE
		| OUTPUT_LED_HIGH
		| OUTPUT_LED_MED
		| OUTPUT_LED_LOW));

	CLEARBIT(OUTPUT_LED_PORT,(OUTPUT_LED_MUTE
		| OUTPUT_LED_MED
		| OUTPUT_LED_LOW));

	SETBIT(OUTPUT_LED_PORT,OUTPUT_LED_HIGH);
}

#endif /* OUTPUT_LED_H_ */