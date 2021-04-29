#include "cpu_speed.h"
#include "stepper_motor.h"
#include "bit_manip.h"

State_t fsm[4] = {
	{0x06, {&fsm[1], &fsm[3]}},		// 6
	{0x05, {&fsm[2], &fsm[0]}},		// 5
	{0x09, {&fsm[3], &fsm[1]}},		// 9
	{0x0a, {&fsm[0], &fsm[2]}},		// 10
};

volatile State_t *Pt;						// Current State

//-----------------------------------------------------------------------------

void Stepper_Init(void) {
	SETBIT(DDRB,((1 << PB5) | (1 << PB4) | (1 << PB3) | (1 << PB2)));
	
	CLEARBIT(STEPPER,((1 << PB5) | (1 << PB4) | (1 << PB3) | (1 << PB2)));

	Pt = &fsm[3];
}

//-----------------------------------------------------------------------------

void Stepper_CW(void) {
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

void Stepper_CCW(void) {
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