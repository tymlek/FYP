#ifndef REMOTE_H_
#define REMOTE_H_

#include <avr/io.h>

// State Machine for Apple Remote
#define REMOTE_MENU    0x1
#define REMOTE_PLAY_1  0x2F
#define REMOTE_PLAY_2  0x2
#define REMOTE_RIGHT   0x3
#define REMOTE_LEFT    0x4
#define REMOTE_UP      0x5
#define REMOTE_DOWN    0x6

// Pairing of Apple Remote
#define REMOTE_PAIR    0x1
#define REMOTE_UNPAIR  0x2

#define UNPAIRED_REMOTE 0x00 // Magic Number for an Unpaired Remote

#endif /* REMOTE_H_ */