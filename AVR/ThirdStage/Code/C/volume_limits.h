#ifndef VOLUME_LIMITS_H_
#define VOLUME_LIMITS_H_

#include <avr/io.h>
#include <stdbool.h>
#include "bit_manip.h"

#define LIMIT_DDR	DDRB
#define LIMIT_PIN	PINB
#define LIMIT_DOWN	(1 << PB0)
#define LIMIT_UP	(1 << PB1)

//-----------------------------------------------------------------------------

void VolLimits_Init(void) {
	CLEARBIT(LIMIT_DDR,(LIMIT_UP | LIMIT_DOWN));

	SETBIT(PCICR,(1 << PCIE1));

	SETBIT(PCMSK0,(LIMIT_UP | LIMIT_DOWN)); 
}

//-----------------------------------------------------------------------------

bool VolLimits_Up(void) {
	return (CHECKBIT(LIMIT_PIN,LIMIT_UP));
}

//-----------------------------------------------------------------------------

bool VolLimits_Down(void) {
	return (CHECKBIT(LIMIT_PIN,LIMIT_DOWN));
}

//-----------------------------------------------------------------------------

#endif /* VOLUME_LIMITS_H_ */