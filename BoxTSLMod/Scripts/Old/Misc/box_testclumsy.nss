// box_testclumsy

// Written by Box
// Script for testing.

#include "box_inc"

void main() {
	
	effect eStumble = EffectKnockdown();
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStumble, OBJECT_SELF, 3.0);
}
