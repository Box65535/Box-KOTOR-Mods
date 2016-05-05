// box_inc_visual

// Written by Box
// Include file for explosives visual effects

// 
void Box_FragGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044), lExplosion);
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3003), lExplosion);
}

// 
void Box_StunGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3004), lExplosion);
}

// 
void Box_IonGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3011), lExplosion);
}

// 
void Box_SonicGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3007), lExplosion);
}

// 
void Box_GasGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3006), lExplosion);
}

// 
void Box_ColdGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3009), lExplosion);
}

// 
void Box_PlasmaGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3010), lExplosion);
}

// 
void Box_EnergyGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044), lExplosion);
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3005), lExplosion);
}

//
void Box_RocketExplode(location lExplosion) {
	Box_EnergyGrenadeExplode(lExplosion);
}

//
void Box_BusterRocketExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3005), lExplosion);
}

//
void Box_GasRocketExplode(location lExplosion) {
	Box_GasGrenadeExplode(lExplosion);
}

//
void Box_IonRocketExplode(location lExplosion) {
	Box_IonGrenadeExplode(lExplosion);
}

//
void Box_PlasmaRocketExplode(location lExplosion) {
	Box_PlasmaGrenadeExplode(lExplosion);
}

//
void Box_FlamethrowerBeam(object oUser, object oTarget) {
	effect eBeam = EffectBeam(2053, oUser, BODY_NODE_HAND);
	effect eBump = EffectVisualEffect(2062);
	effect eVFX = EffectVisualEffect(1039);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oTarget);
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
	DelayCommand(0.33, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBump, oTarget, 1.5));
}

//
void Box_CarboniteBeam(object oUser, object oTarget) {
	effect eBeam = EffectBeam(2051, OBJECT_SELF, BODY_NODE_HAND);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
}
















