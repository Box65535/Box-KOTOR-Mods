// box_forcelevitate

// Written by Box
// Spell script for Force Levitate power.

#include "box_inc"

void main() {
	
	//
	object oUser = OBJECT_SELF;
	object oTarget = GetSpellTargetObject();
	
	// Spell properties
	int castDC = 10;
	string name = "Force Levitate";
	int alignment = POWER_TYPE_UNIVERSAL;
	
	if (!Box_RollCastDC(oUser, castDC, alignment)) {
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), oUser);
		Box_SignalSpellFailed(oUser, name);
	}
	else {
		
		int saveResult = Box_LevitatePower(oUser, oTarget);
		
		if (saveResult == IMMUNE) {
			Box_SignalSpellImmune(oTarget, name);
		}
		else if (saveResult == SAVED) {
			Box_SignalSpellSaved(oTarget, name);
		}
		else {
			Box_SignalSpellHit(oTarget, name);
		}
	}
}



