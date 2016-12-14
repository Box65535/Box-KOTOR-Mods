// #FILENAME

// Written by Box
// #DESCRIPTION

#include "box_inc"

void main() {
	
	// Spell properties
	int castDC = #CAST_DC;
	string name = "#SPELL_NAME";
	int alignment = #POWER_ALIGNMENT;
	float radius = #RADIUS;
	int shape = #SPELL_SHAPE;
	
	// Targeting
	object oUser = OBJECT_SELF;
	struct Box_Array aTargets = Box_GetEnemyTargets(oUser, #LOCATION_FUNCTION, shape, radius);
	
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
			
			// Visual Effects
			#VISUAL_FUNCTION(oUser, oTarget);
			
			// Damage/Effects
			int saveResult = #FUNCTION_CALL(oUser, oTarget, force);
			if (saveResult == IMMUNE)
				Box_SignalSpellImmune(oTarget, name);
			else if (saveResult == SAVED) 
				Box_SignalSpellSaved(oTarget, name);
			else
				Box_SignalSpellHit(oTarget, name);
		}
	}
}



