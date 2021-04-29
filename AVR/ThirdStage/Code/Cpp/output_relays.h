#ifndef OUTPUT_RELAYS_H_
#define OUTPUT_RELAYS_H_

#include <avr/io.h>
#include "bit_manip.h"

#define OUTPUT_RELAYS_DDR	DDRC
#define OUTPUT_RELAYS_PORT	PORTC

constexpr uint_fast8_t OUTPUT_RELAYS_MUTE	= (1 << PC0);
constexpr uint_fast8_t OUTPUT_RELAYS_HIGH	= (1 << PC1);
constexpr uint_fast8_t OUTPUT_RELAYS_MED	= (1 << PC2);
constexpr uint_fast8_t OUTPUT_RELAYS_LOW	= (1 << PC3);

void OutputRelays_Init(void) {
	SETBIT(OUTPUT_RELAYS_DDR,(OUTPUT_RELAYS_MUTE
								| OUTPUT_RELAYS_HIGH
								| OUTPUT_RELAYS_MED
								| OUTPUT_RELAYS_LOW));

	CLEARBIT(OUTPUT_RELAYS_PORT,(OUTPUT_RELAYS_MUTE
								| OUTPUT_RELAYS_HIGH
								| OUTPUT_RELAYS_MED
								| OUTPUT_RELAYS_LOW));
}

#endif /* OUTPUT_RELAYS_H_ */