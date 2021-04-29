#include "cpu_speed.h"
#include "stepper_motor.h"
#include "bit_manip.h"

constexpr uint_fast8_t CLOCKWISE		= 1;
constexpr uint_fast8_t COUNTERCLOCKWISE	= 0;
constexpr uint_fast8_t STEPPER_DELAY	= 20;		// Delay in ms
constexpr uint_fast8_t NUM_OF_STEPS		= 24;

#define STEPPER PORTB

//-----------------------------------------------------------------------------

Stepper::Stepper() {
	SETBIT(DDRB,((1 << PB5) | (1 << PB4) | (1 << PB3) | (1 << PB2)));
	
	CLEARBIT(STEPPER,((1 << PB5) | (1 << PB4) | (1 << PB3) | (1 << PB2)));

	Pt = &fsm[3];
}

//-----------------------------------------------------------------------------

void Stepper::CW(void) {
	Pt = Pt->Next[CLOCKWISE];
	SETBIT(STEPPER,(Pt->Out << 2));

	_delay_ms(STEPPER_DELAY);
	CLEARBIT(STEPPER,(Pt->Out << 2));
	
	Pt = Pt->Next[CLOCKWISE];
	SETBIT(STEPPER,(Pt->Out << 2));

	_delay_ms(STEPPER_DELAY);
	CLEARBIT(STEPPER,((1 << PB5) | (1 << PB4) | (1 << PB3) | (1 << PB2)));
}

//-----------------------------------------------------------------------------

void Stepper::CCW(void) {
	Pt = Pt->Next[COUNTERCLOCKWISE];
	SETBIT(STEPPER,(Pt->Out << 2));

	_delay_ms(STEPPER_DELAY);
	CLEARBIT(STEPPER,(Pt->Out << 2));
	
	Pt = Pt->Next[COUNTERCLOCKWISE];
	SETBIT(STEPPER,(Pt->Out << 2));

	_delay_ms(STEPPER_DELAY);
	CLEARBIT(STEPPER,((1 << PB5) | (1 << PB4) | (1 << PB3) | (1 << PB2)));
}

//-----------------------------------------------------------------------------