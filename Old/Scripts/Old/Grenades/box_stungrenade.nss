// box_stungrenade

// Written by Box
// Spell script for flash grenade.

#include "box_inc"

void main() {
	
	// Properties
	string name = "Flash Grenade";
	float radius = 4.0f;
	int shape = SHAPE_SPHERE;
	
	// Targeting
	object oUser = OBJECT_SELF;
	location lTarget = GetSpellTargetLocation();
	struct Box_Array aTargets = Box_GetEnemyTargets(oUser, lTarget, shape, radius);;
	
	// Effect
	Box_StunGrenadeExplode(lTarget);
	
	int index;
	for (index = 0; index < Box_ArraySize(aTargets); index++) {
		
		object oTarget = Box_ArrayGet(aTargets, index);
		int saveResult = Box_StunGrenade(oTarget);
	
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



