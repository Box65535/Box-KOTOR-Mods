// box_flamethrower2

// Written by Box
// Auto-generated Script

#include "box_inc"

void main() {
	
	// Spell properties
	string name = "#SPELL_NAME";
	
	// Targetting
	object oUser = OBJECT_SELF;
	object oTarget = GetSpellTargetObject();
	
	// Visual Effects
	Box_FlamethrowerBeam(oUser, oTarget);
	
	// Damage/Effects
	int saveResult = Box_Flamethrower2(oTarget);
	if (saveResult == IMMUNE)
		Box_SignalSpellImmune(oTarget, name);
	else if (saveResult == SAVED)
		Box_SignalSpellSaved(oTarget, name);
	else
		Box_SignalSpellHit(oTarget, name);
}



