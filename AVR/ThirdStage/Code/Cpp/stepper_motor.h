#ifndef STEPPER_MOTOR_H_
#define STEPPER_MOTOR_H_

#include <avr/io.h>
#include <util/delay.h>

class Stepper {
public:
	Stepper();
	void CW();
	void CCW();

private:
	struct State {
		uint8_t Out;					// Output
		struct State *Next[2];	// CW/CCW
	};
	
	State fsm[4] = {
		{0x06, {&fsm[1], &fsm[3]}},		// 6
		{0x05, {&fsm[2], &fsm[0]}},		// 5
		{0x09, {&fsm[3], &fsm[1]}},		// 9
		{0x0a, {&fsm[0], &fsm[2]}},		// 10
	};

	volatile State *Pt;
};

#endif /* STEPPER_MOTOR_H_ */