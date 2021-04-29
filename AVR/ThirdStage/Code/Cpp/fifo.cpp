#include "fifo.h"

//-----------------------------------------------------------------------------

Fifo::Fifo() {
  fifo_in = fifo_out = 0;
}

//-----------------------------------------------------------------------------

bool Fifo::put(uint8_t new_element) {
  if(fifo_in == ((fifo_out - 1 + FIFO_SIZE) % FIFO_SIZE)) {
	return false; /* fifo full*/
  }

  fifo[fifo_in] = new_element;

  fifo_in = (fifo_in + 1) % FIFO_SIZE;

  return true; // No errors
}

//-----------------------------------------------------------------------------

bool Fifo::get(uint8_t *next_element) {
  if(fifo_in == fifo_out)	{
	  return false; /* fifo Empty - nothing to get*/
  }

  *next_element = fifo[fifo_out];

  fifo_out = (fifo_out + 1) % FIFO_SIZE;

  return true; // No errors
}

//-----------------------------------------------------------------------------