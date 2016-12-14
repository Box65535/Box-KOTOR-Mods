// box_testenergy

// Written by Box
// Test script for energy weapons


// Normally we'd use box_inc but here we only need the reload and this is just for testing
#include "box_inc_reload"


// This was supposed to be a shock arm, but I have the flamethrower visual available
void Box_FlamethrowerBeam(object oUser, object oTarget) {
	effect eBeam = EffectBeam(2053, oUser, BODY_NODE_HAND);
	effect eBump = EffectVisualEffect(2062);
	effect eVFX = EffectVisualEffect(1039);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oTarget);
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
	DelayCommand(0.33, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBump, oTarget, 1.5));
}

void main() {
	
	// Spell Properties
	object oUser = OBJECT_SELF;
	object oTarget = GetSpellTarget();
	int cost = 6;
	
	// We'll only the visual
	Box_FlamethrowerBeam(oUser, oTarget);
	
	// Update reload script
	Box_UseEnergy(oUser, cost);
}


