#ifndef FIFO_H_
#define FIFO_H_

#include <inttypes.h>
#include <stdbool.h>

/* Queue structure */
constexpr uint_fast8_t FIFO_ELEMENTS = 16;
constexpr uint_fast8_t FIFO_SIZE = (FIFO_ELEMENTS + 1);

class Fifo {
public:
	Fifo();

	bool put(uint8_t new_element);
	bool get(uint8_t* next_element);
private:
	uint8_t fifo[FIFO_SIZE];
	uint8_t fifo_in;
	uint8_t fifo_out;
};

#endif /* FIFO_H_ */