// #FILENAME

// Written by Box
// #DESCRIPTION

#include "box_inc"

void main() {
	
	// Spell Properties
	float radius = #RADIUS;
	int mineLevel = #MINE_LEVEL;
	
	// Targeting
	object oTarget;
	location lTrap = GetLocation(OBJECT_SELF);
	
	// Damage/Effects
	oTarget = GetFirstObjectInShape(SHAPE_SPHERE, radius, lTrap, TRUE);
    while(GetIsObjectValid(oTarget)) {
		if (!GetIsNeutral(oTarget, OBJECT_SELF))
			#FUNCTION_CALL(oTarget, mineLevel);
		oTarget = GetNextObjectInShape(SHAPE_SPHERE, radius, lTrap, TRUE);
	}
}

