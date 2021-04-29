#ifndef REMOTE_H_
#define REMOTE_H_

#include <avr/io.h>

// State Machine for Apple Remote
constexpr uint_fast8_t REMOTE_MENU		= 0x01;
constexpr uint_fast8_t REMOTE_PLAY_1	= 0x2F;
constexpr uint_fast8_t REMOTE_PLAY_2	= 0x02;
constexpr uint_fast8_t REMOTE_RIGHT		= 0x03;
constexpr uint_fast8_t REMOTE_LEFT		= 0x04;
constexpr uint_fast8_t REMOTE_UP		= 0x05;
constexpr uint_fast8_t REMOTE_DOWN		= 0x06;

// Pairing of Apple Remote
constexpr uint_fast8_t REMOTE_PAIR		= 0x01;
constexpr uint_fast8_t REMOTE_UNPAIR	= 0x02;

constexpr uint_fast8_t UNPAIRED_REMOTE	= 0x00; // Magic Number for an Unpaired Remote

#endif /* REMOTE_H_ */