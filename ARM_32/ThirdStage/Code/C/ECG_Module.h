#ifndef ECG_Module_H
#define ECG_Module_H

#include <stdio.h>
#include "ECGPkg.h"

struct TMDQueue;

typedef struct ECG_Module ECG_Module;
struct ECG_Module {
	int dataNum;
	int lead1;
	int lead2;
	struct TMDQueue* itsTMDQueue;
};

/* Constructor and Destructor */
void ECG_Module_Init(ECG_Module* const me);
void ECG_Module_Cleanup(ECG_Module* const me);

/* Operations */
void ECG_Module_acquireValue(ECG_Module* const me);
void ECG_Module_setLeadsPair(ECG_Module* const me, int l1, int l2);
struct TMDQueue* ECG_Module_getItsTMDQueue(const ECG_Module* const me);
void ECG_Module_setItsTMDQueue(ECG_Module* const me, struct TMDQueue* p_TMDQueue);

ECG_Module* ECG_Module_Create();
void ECG_Module_Destroy(ECG_Module* const me);

#endif // !ECG_Module_H

