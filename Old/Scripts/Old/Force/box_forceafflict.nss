// box_forceafflict

// Written by Box
// Spell script for Force Afflict power.

#include "box_inc"

void main() {
	
	//
	object oUser = OBJECT_SELF;
	object oTarget = GetSpellTargetObject();
	
	// Spell properties
	int castDC = 6;
	string name = "Force Afflict";
	int alignment = POWER_TYPE_DARK;
	
	// Force
	int force = Box_GetSpellForce(oUser, alignment, Box_RollCastDC(oUser, castDC, alignment));
	
	if (!Box_CheckPowerSuccess(oUser, castDC, alignment)) {
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), oUser);
		Box_SignalSpellFailed(oUser, name);
	}
	else {
		
		int saveResult = Box_AfflictPower(oUser, oTarget, force);
		
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



