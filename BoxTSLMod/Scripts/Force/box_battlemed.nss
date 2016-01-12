// box_battlemed

// Written by Box
// Spell script for Battle Meditation power.

#include "box_inc"

void main() {
	
	//
	object oUser = OBJECT_SELF;
	
	// Spell properties
	int castDC = 14;
	string name = "Battle Meditation";
	int alignment = POWER_TYPE_UNIVERSAL;
	
	// Targeting
	struct Box_Array aTargets = Box_GetPartyTargets(oUser);
	
	if (!Box_RollCastDC(oUser, castDC, alignment)) {
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), oUser);
		Box_SignalSpellFailed(oUser, name);
	}
	else {
		
		int index;
		for (index = 0; index < Box_ArraySize(aTargets); index++) {
			
			object oTarget = Box_ArrayGet(aTargets, index);
			
			Box_MeditationPower(oUser, oTarget);
		}
	}
}



