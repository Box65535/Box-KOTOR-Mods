// #FILENAME

// Written by Box
// #DESCRIPTION

#include "box_inc"

void main() {
	
	// Spell properties
	int castDC = #CAST_DC;
	string name = "#SPELL_NAME";
	int alignment = #POWER_ALIGNMENT;
	
	// Targetting
	object oUser = OBJECT_SELF;
	object oTarget = GetSpellTargetObject();
	
	// Force
	int force = Box_GetPowerDC(oUser, alignment);
	
	// Check Cast DC
	if (!Box_RollCastDC(oUser, castDC, alignment)) {
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), oUser);
		Box_SignalSpellFailed(oUser, name);
	}
	// Damage/Effects
	else {
		int saveResult = #FUNCTION_CALL(oUser, oTarget, force);
		if (saveResult == IMMUNE)
			Box_SignalSpellImmune(oTarget, name);
		else if (saveResult == SAVED)
			Box_SignalSpellSaved(oTarget, name);
		else
			Box_SignalSpellHit(oTarget, name);
	}
}



