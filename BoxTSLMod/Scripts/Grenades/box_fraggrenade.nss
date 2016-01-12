// box_fraggrenade

// Written by Box
// Spell script for frag grenade.

#include "box_inc"

void main() {
	
	// Properties
	float radius = 4.0f;
	int shape = SHAPE_SPHERE;
	string name = "Frag Grenade";
	
	// Targeting
	object oUser = OBJECT_SELF;
	location lTarget = GetSpellTargetLocation();
	struct Box_Array aTargets = Box_GetEnemyTargets(oUser, lTarget, shape, radius);;
	
	// Effect
	Box_FragGrenadeExplode(lTarget);
	
	int index;
	for (index = 0; index < Box_ArraySize(aTargets); index++) {
		
		object oTarget = Box_ArrayGet(aTargets, index);
		int saveResult = Box_FragGrenade(oTarget);
	
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
}



