// box_turrsonic

// Written by Box
// Auto-generated Script

#include "box_inc"

void main() {
	
	// Spell properties
	string name = "#SPELL_NAME";
	float radius = 5.0;
	int shape = SHAPE_SPELLCYLINDER;
	
	// Targeting
	object oUser = OBJECT_SELF;
	struct Box_Array aTargets = Box_GetEnemyTargets(oUser, GetLocation(OBJECT_SELF), shape, radius);
	
	// Visual Effects
	Box_SonicBeam(oUser, GetSpellTarget());
	
	// Damage/Effects
	int index;
	for (index = 0; index < Box_ArraySize(aTargets); index++) {
		
		object oTarget = Box_ArrayGet(aTargets, index);
		int saveResult = Box_SonicTurret(oTarget);
		
		if (saveResult == IMMUNE)
			Box_SignalSpellImmune(oTarget, name);
		else if (saveResult == SAVED) 
			Box_SignalSpellSaved(oTarget, name);
		else
			Box_SignalSpellHit(oTarget, name);
	}
}



