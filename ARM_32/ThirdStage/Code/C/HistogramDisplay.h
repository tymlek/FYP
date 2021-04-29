#ifndef HistogramDisplay_H
#define HistogramDisplay_H

#include <stdio.h>
#include "ECGPkg.h"

struct TMDQueue;

typedef struct HistogramDisplay HistogramDisplay;
struct HistogramDisplay {
	int index;
	struct TMDQueue* itsTMDQueue;
};

/* Constructor and Destructor */
void HistogramDisplay_Init(HistogramDisplay* const me);
void HistogramDisplay_Cleanup(HistogramDisplay* const me);

/* Operations */
void HistogramDisplay_getValue(HistogramDisplay* const me);
void HistogramDisplay_updateHistogram(HistogramDisplay* me);
struct TMDQueue* HistogramDisplay_getItsTMDQueue(const HistogramDisplay* const me);
void HistogramDisplay_setItsTMDQueue(HistogramDisplay* const me, struct TMDQueue* p_TMDQueue);

HistogramDisplay* HistogramDisplay_Create();
void HistogramDisplay_Destroy(HistogramDisplay* const me);

#endif // !HistogramDisplay_H

