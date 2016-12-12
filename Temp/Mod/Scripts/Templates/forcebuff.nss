// #FILENAME

// Written by Box
// #DESCRIPTION

#include "box_inc"

void main() {
	
	// Spell properties
	int castDC = #CAST_DC;
	string name = "#SPELL_NAME";
	int alignment = #POWER_ALIGNMENT;
	
	// Targeting
	object oUser = OBJECT_SELF;
	struct Box_Array aTargets = Box_GetForceChainTargets(oUser);
	
	// Force
	int force = Box_GetBaseForce(oUser, alignment);
	
	// Check Cast DC
	if (!Box_RollCastDC(oUser, castDC, alignment)) {
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceFizzle(), oUser);
		Box_SignalSpellFailed(oUser, name);
	}
	// Effects
	else {
		int index;
		for (index = 0; index < Box_ArraySize(aTargets); index++) {
			object oTarget = Box_ArrayGet(aTargets, index);
			#FUNCTION_CALL(oUser, oTarget, force);
		}
	}
}



