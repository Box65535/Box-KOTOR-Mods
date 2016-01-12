// box_ionstorm

// Written by Box
// Spell script for Ion Storm power.

#include "box_inc"

void main() {
	
	//
	object oUser = OBJECT_SELF;
	
	// Spell properties
	int castDC = 14;
	string name = "Ion Storm";
	int alignment = POWER_TYPE_UNIVERSAL;
	float radius = 6.0;
	int shape = SHAPE_SPHERE;
	
	// Targeting
	struct Box_Array aTargets = Box_GetDroidEnemyTargets(oUser, GetLocation(GetSpellTarget()), shape, radius);
	
	if (!Box_RollCastDC(oUser, castDC, alignment)) {
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), oUser);
		Box_SignalSpellFailed(oUser, name);
	}
	else {
		
		int index;
		for (index = 0; index < Box_ArraySize(aTargets); index++) {
			
			object oTarget = Box_ArrayGet(aTargets, index);
			
			int saveResult = Box_IonizePower(oUser, oTarget);
		
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



