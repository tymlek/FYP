#ifndef EEPROM_H_
#define EEPROM_H_

#include "bit_manip.h"

constexpr uint_fast8_t PAIR_ADDR	= 0x0000;
constexpr uint_fast8_t LEVEL_ADDR	= 0x0001;

//-----------------------------------------------------------------------------

class EEPROM {
public:
	EEPROM() {
		EECR = 0;
	}

	bool write(uint16_t address, uint8_t data) {
		// Wait for previous write to complete
		while (CHECKBIT(EECR,(1 << EEPE)));

		EEAR = address;
		EEDR = data;						// Write data

		// Write 1 to EEMPE bit
		SETBIT(EECR,(1 << EEMPE));

		// Write data with EECR EEPE bit
		SETBIT(EECR,(1 << EEPE));

		return true;
	}

	uint8_t read(uint16_t address) {
		// Wait for end of previous write
		while (CHECKBIT(EECR,(1 << EEPE)));

		EEAR = address;

		// Read data from EEPROM
		SETBIT(EECR,(1 << EERE));

		return EEDR;
	}
	
};


//-----------------------------------------------------------------------------

#endif /* EEPROM_H_ */