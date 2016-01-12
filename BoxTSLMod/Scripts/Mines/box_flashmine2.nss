// box_flashmine2

// Written by Box
// Spell script for a mine.

#include "box_inc"

void main() {
	
	// Stats
	object oTarget;
	location lTrap = GetLocation(OBJECT_SELF);
	float radius = 3.25f;
	int mineLevel = 2;
	
	// Targeting
	oTarget = GetFirstObjectInShape(SHAPE_SPHERE, radius, lTrap, TRUE);
    while(GetIsObjectValid(oTarget)) {
		if (!GetIsNeutral(oTarget, OBJECT_SELF)) {
			Box_FlashMine(oTarget, mineLevel);
		}
		oTarget = GetNextObjectInShape(SHAPE_SPHERE, radius, lTrap, TRUE);
	}
}
