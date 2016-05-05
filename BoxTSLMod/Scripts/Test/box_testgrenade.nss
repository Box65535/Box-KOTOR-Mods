// box_testgrenade

// Written by Box
// Test script for ammo/reload grenades


// Normally we'd use box_inc but here we only need the reload and this is just for testing
#include "box_inc_reload"


// Copied from another script, this should work fine 
void Box_FragGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044), lExplosion);
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3003), lExplosion);
}

void main() {
	
	// Spell Properties
	location lTarget = GetSpellTargetLocation();
	
	// We'll only worry about the visual explosion for this test
	Box_FragGrenadeExplode(lTarget);
	
	// TODO: Update the reloading information
}


