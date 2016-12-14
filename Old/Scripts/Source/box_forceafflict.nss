// box_forceafflict

// Written by Box
// Auto-generated Script

#include "box_inc"

void main() {
	
	// Spell properties
	int castDC = 9;
	string name = "Force Afflict";
	int alignment = POWER_TYPE_DARK;
	
	// Targetting
	object oUser = OBJECT_SELF;
	object oTarget = GetSpellTargetObject();
	
	// Force
	int force = Box_GetBaseForce(oUser, alignment);
	
	// Check Cast DC
	if (!Box_RollCastDC(oUser, castDC, alignment)) {
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), oUser);
		Box_SignalSpellFailed(oUser, name);
	}
	// Damage/Effects
	else {
		int saveResult = Box_AfflictPower(oUser, oTarget, force);
		if (saveResult == IMMUNE)
			Box_SignalSpellImmune(oTarget, name);
		else if (saveResult == SAVED)
			Box_SignalSpellSaved(oTarget, name);
		else
			Box_SignalSpellHit(oTarget, name);
	}
}



