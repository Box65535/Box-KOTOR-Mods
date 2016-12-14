// box_sonicmine2

// Written by Box
// Auto-generated Script

#include "box_inc"

void main() {
	
	// Spell Properties
	float radius = 3.5;
	int mineLevel = 2;
	
	// Targeting
	object oTarget;
	location lTrap = GetLocation(OBJECT_SELF);
	
	// Damage/Effects
	oTarget = GetFirstObjectInShape(SHAPE_SPHERE, radius, lTrap, TRUE);
    while(GetIsObjectValid(oTarget)) {
		if (!GetIsNeutral(oTarget, OBJECT_SELF))
			Box_SonicMine(oTarget, mineLevel);
		oTarget = GetNextObjectInShape(SHAPE_SPHERE, radius, lTrap, TRUE);
	}
}

