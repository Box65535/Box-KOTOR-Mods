// box_deathfield

// Written by Box
// Spell script for Death Field power.

#include "box_inc"

void main() {
	
	//
	object oUser = OBJECT_SELF;
	
	// Spell properties
	int castDC = 18;
	string name = "Death Field";
	int alignment = POWER_TYPE_DARK;
	float radius = 12.0;
	int shape = SHAPE_SPHERE;
	
	// Targeting
	struct Box_Array aTargets = Box_GetHumanEnemyTargets(oUser, GetLocation(oUser), shape, radius);
	
	// Force
	int force = Box_GetSpellForce(oUser, alignment, Box_RollCastDC(oUser, castDC, alignment));
	
	if (!Box_CheckPowerSuccess(oUser, castDC, alignment)) {
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), oUser);
		Box_SignalSpellFailed(oUser, name);
	}
	else {
		
		int index;
		for (index = 0; index < Box_ArraySize(aTargets); index++) {
			
			object oTarget = Box_ArrayGet(aTargets, index);
			
			int saveResult = Box_DrainPower(oUser, oTarget, force);
		
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
}



