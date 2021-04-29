#ifndef PANEL_BUTTONS_H_
#define PANEL_BUTTONS_H_

#include <avr/io.h>
#include <avr/interrupt.h>
#include "bit_manip.h"

#define PANEL_BUTTONS_DDR	DDRA
#define PANEL_BUTTONS_PIN	PINA
#define BUTTON_MUTE	(1 << PA0)
#define BUTTON_HIGH (1 << PA1)
#define BUTTON_MED (1 << PA2)
#define BUTTON_LOW (1 << PA3)

//-----------------------------------------------------------------------------

void PanelButtons_Init(void) {
	CLEARBIT(PANEL_BUTTONS_DDR,(BUTTON_MUTE
								| BUTTON_HIGH
								| BUTTON_MED
								| BUTTON_LOW));
	
	SETBIT(PCICR,(1 << PCIE0));

	SETBIT(PCMSK0,(BUTTON_MUTE
					| BUTTON_HIGH
					| BUTTON_MED
					| BUTTON_LOW));

	//CLEARBIT(EICRA,((1 << ISC11) | (1 << ISC10)));
	//SETBIT(EIMSK,(1 << INT1));
}

//-----------------------------------------------------------------------------

#endif /* PANEL_BUTTONS_H_ */