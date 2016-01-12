// box_burners

// Written by Box
// Spell script for Mining Droid Burners.

#include "box_inc"

void main() {
	
	//
	object oUser = OBJECT_SELF;
	object oTarget = GetSpellTargetObject();
	
	// Spell properties
	string name = "Burners";
	
	// Flamethrower Visual Effects
	Box_FlamethrowerBeam(oUser, oTarget);
	
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



