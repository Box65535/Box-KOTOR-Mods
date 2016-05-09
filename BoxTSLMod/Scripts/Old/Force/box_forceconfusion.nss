// box_forceconfusion

// Written by Box
// Spell script for Force Confusion power.

#include "box_inc"

void main() {
	
	//
	object oUser = OBJECT_SELF;
	object oTarget = GetSpellTargetObject();
	
	// Spell properties
	int castDC = 16;
	string name = "Force Confusion";
	int alignment = POWER_TYPE_UNIVERSAL;
	
	if (!Box_RollCastDC(oUser, castDC, alignment)) {
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), oUser);
		Box_SignalSpellFailed(oUser, name);
	}
	else {
		
		int saveResult = Box_ConfusionPower(oUser, oTarget);
		
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



