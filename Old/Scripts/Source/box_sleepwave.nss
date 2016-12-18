// box_sleepwave

// Written by Box
// Auto-generated Script

#include "box_inc"

void main() {
	
	// Spell properties
	int castDC = 18;
	string name = "Sleep Wave";
	int alignment = POWER_TYPE_LIGHT;
	float radius = 6.0;
	int shape = SHAPE_SPHERE;
	
	// Targeting
	object oUser = OBJECT_SELF;
	struct Box_Array aTargets = Box_GetEnemyTargets(oUser, GetSpellTargetLocation(), shape, radius);
	
	// Force
	int force = Box_GetBaseForce(oUser, alignment);
	
	// Check Cast DC
	if (!Box_RollCastDC(oUser, castDC, alignment)) {
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), oUser);
		Box_SignalSpellFailed(oUser, name);
	}
	// Damage/Effects
	else {
		int index;
		for (index = 0; index < Box_ArraySize(aTargets); index++) {
			
			object oTarget = Box_ArrayGet(aTargets, index);
			int saveResult = Box_SleepPower(oUser, oTarget, force);
			
			if (saveResult == IMMUNE)
				Box_SignalSpellImmune(oTarget, name);
			else if (saveResult == SAVED) 
				Box_SignalSpellSaved(oTarget, name);
			else
				Box_SignalSpellHit(oTarget, name);
		}
	}
}



