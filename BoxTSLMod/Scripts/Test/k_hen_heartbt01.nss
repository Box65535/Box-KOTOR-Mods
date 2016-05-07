//:: k_hen_heartbt01
/*
    Heartbeat for the non-active party members.
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

// Modified by Box
// Henchman heartbeat script, used for testing

#include "k_inc_debug"
#include "k_inc_switch"
#include "box_inc"

// Copied from another script, this should work fine 
void Box_FragGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044), lExplosion);
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3003), lExplosion);
}

void main() {
	
	// Do the reload heartbeat
	Box_RegenHeartbeat(OBJECT_SELF);
	
	// Copied from original
	ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_HENCH_EVENT_ON_HEARTBEAT);
}

