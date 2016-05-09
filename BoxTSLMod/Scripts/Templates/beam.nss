// #FILENAME

// Written by Box
// #DESCRIPTION

#include "box_inc"

void main() {
	
	// Spell properties
	string name = "#SPELL_NAME";
	
	// Targetting
	object oUser = OBJECT_SELF;
	object oTarget = GetSpellTargetObject();
	
	// Visual Effects
	#VISUAL_FUNCTION(oUser, oTarget);
	
	// Damage/Effects
	int saveResult = #FUNCTION_CALL(oUser, oTarget);
	if (saveResult == IMMUNE)
		Box_SignalSpellImmune(oTarget, name);
	else if (saveResult == SAVED)
		Box_SignalSpellSaved(oTarget, name);
	else
		Box_SignalSpellHit(oTarget, name);
}



