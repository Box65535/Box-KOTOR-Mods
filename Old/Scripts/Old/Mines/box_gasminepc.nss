// box_gasminepc

// Written by Box
// Spell script for Frag Mine.

#include "box_inc"

void main() {
	
	// Stats
	location lTrap = GetLocation(OBJECT_SELF);
	string name = "Gas Trap";
	float radius = 3.25f;
	int mineLevel = 1;
	
	// Targeting
	struct Box_Array aTargets = Box_GetEnemyTargets(GetTrapCreator(OBJECT_SELF), lTrap, SHAPE_SPHERE, radius);
	
	int index;
	for (index = 0; index < Box_ArraySize(aTargets); index++) {
		
		object oTarget = Box_ArrayGet(aTargets, index);
		int saveResult = Box_PoisonMine(oTarget, mineLevel);
	
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
