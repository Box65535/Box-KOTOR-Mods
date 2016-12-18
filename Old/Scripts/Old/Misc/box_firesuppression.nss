// box_firesuppression

// Written by Box
// Spell script for Mining Droid Burners.

#include "box_inc"

void main() {
	
	//
	object oUser = OBJECT_SELF;
	object oTarget = GetSpellTargetObject();
	
	// Spell properties
	string name = "Fire Suppression";
	
	// Carbonite Visual Effects
	Box_CarboniteBeam(oUser, oTarget);
	
	int saveResult = Box_Burners(oTarget);
	
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



