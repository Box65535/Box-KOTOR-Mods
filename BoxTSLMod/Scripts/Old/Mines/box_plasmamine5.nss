// box_plasmamine5

// Written by Box
// Spell script for mine.

#include "box_inc"

void main() {
	
	// Stats
	object oTarget;
	location lTrap = GetLocation(OBJECT_SELF);
	float radius = 3.25f;
	int mineLevel = 5;
	
	// Targeting
	oTarget = GetFirstObjectInShape(SHAPE_SPHERE, radius, lTrap, TRUE);
    while(GetIsObjectValid(oTarget)) {
		if (!GetIsNeutral(oTarget, OBJECT_SELF)) {
			Box_PlasmaMine(oTarget, mineLevel);
		}
		oTarget = GetNextObjectInShape(SHAPE_SPHERE, radius, lTrap, TRUE);
	}
}
