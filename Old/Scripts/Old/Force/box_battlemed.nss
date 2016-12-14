// box_battlemed

// Written by Box
// Spell script for Battle Meditation power.

#include "box_inc"

void main() {
	
	//
	object oUser = OBJECT_SELF;
	
	// Spell properties
	int castDC = 12;
	string name = "Battle Meditation";
	int alignment = POWER_TYPE_UNIVERSAL;
	
	// Targeting
	struct Box_Array aTargets = Box_GetPartyTargets(oUser);
	
	// Force
	int force = Box_GetSpellForce(oUser, alignment, Box_RollCastDC(oUser, castDC, alignment));
	
	if (!Box_CheckPowerSuccess(oUser, castDC, alignment)) {
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), oUser);
		Box_SignalSpellFailed(oUser, name);
	}
	else {
		
		int index;
		for (index = 0; index < Box_ArraySize(aTargets); index++) {
			
			object oTarget = Box_ArrayGet(aTargets, index);
			
			Box_MeditationPower(oUser, oTarget, force);
		}
	}
}



