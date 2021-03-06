// box_forcefury

// Written by Box
// Spell script for Force Fury power.

#include "box_inc"

void main() {
	
	//
	object oUser = OBJECT_SELF;
	
	// Spell properties
	int castDC = 6;
	string name = "Force Fury";
	int alignment = POWER_TYPE_DARK;
	
	// Targeting
	struct Box_Array aTargets = Box_GetForceChainTargets(oUser);
	
	if (!Box_RollCastDC(oUser, castDC, alignment)) {
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), oUser);
		Box_SignalSpellFailed(oUser, name);
	}
	else {
		
		int index;
		for (index = 0; index < Box_ArraySize(aTargets); index++) {
			
			object oTarget = Box_ArrayGet(aTargets, index);
			
			Box_FuryPower(oUser, oTarget);
		}
	}
}



