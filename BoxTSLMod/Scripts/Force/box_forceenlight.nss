// box_forceenlight

// Written by Box
// Spell script for Force Enlightenment power.

#include "box_inc"

void main() {
	
	//
	object oUser = OBJECT_SELF;
	
	// Spell properties
	int castDC = 18;
	string name = "Force Enlightenment";
	int alignment = POWER_TYPE_LIGHT;
	
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
			
			Box_EnlightenPower(oUser, oTarget);
		}
	}
}



