// box_plasmagrenade

// Written by Box
// Spell script for plasma grenade.

#include "box_inc"

void main() {
	
	// Properties
	string name = "Plasma Grenade";
	float radius = 4.0f;
	int shape = SHAPE_SPHERE;
	
	// Targeting
	object oUser = OBJECT_SELF;
	location lTarget = GetSpellTargetLocation();
	struct Box_Array aTargets = Box_GetEnemyTargets(oUser, lTarget, shape, radius);;
	
	// Effect
	Box_PlasmaGrenadeExplode(lTarget);
	
	int index;
	for (index = 0; index < Box_ArraySize(aTargets); index++) {
		
		object oTarget = Box_ArrayGet(aTargets, index);
		int saveResult = Box_PlasmaGrenade(oTarget);
	
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



