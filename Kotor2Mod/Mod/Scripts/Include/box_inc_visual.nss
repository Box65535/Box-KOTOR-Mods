// box_inc_visual

// Written by Box
// Include file for explosives visual effects

// 
void Box_NoVisual(location l) {}

// 
void Box_NoBeam(object oUser, object oTarget) {}

// 
void Box_FragGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044), lExplosion);
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3003), lExplosion);
}

// 
void Box_FlashGrenadeExplode(location lExplosion) {
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
void Box_DetonatorGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044), lExplosion);
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3005), lExplosion);
}

// 
void Box_AdhesiveGrenadeExplode(location lExplosion) {
	// TODO
}

//
void Box_RocketExplode(location lExplosion) {
	Box_DetonatorGrenadeExplode(lExplosion);
}

//
void Box_FireRocketExplode(location lExplosion) {
	Box_PlasmaGrenadeExplode(lExplosion);
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
void Box_ColdRocketExplode(location lExplosion) {
	Box_ColdGrenadeExplode(lExplosion);
}

//
void Box_RadiationRocketExplode(location lExplosion) {
	Box_IonGrenadeExplode(lExplosion);
}

//
void Box_PlasmaRocketExplode(location lExplosion) {
	Box_PlasmaGrenadeExplode(lExplosion);
}

//
void Box_FusionRocketExplode(location lExplosion) {
	Box_DetonatorGrenadeExplode(lExplosion);
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

//
void Box_SonicBeam(object oUser, object oTarget) {
	effect eBeam = EffectVisualEffect(9005);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, eBeam, oUser);
}

//
void Box_SonicWaveBeam(object oUser, object oTarget) {
	// TODO
}

//
void Box_BusterRocketBeam(object oUser, object oTarget) {
	Box_DetonatorGrenadeExplode(GetLocation(oTarget));
}

//
void Box_IonStrikeBeam(object oUser, object oTarget) {
	// TODO
}

//
void Box_DroidHackBeam(object oUser, object oTarget) {
	// TODO
}

//
void Box_StunRayBeam(object oUser, object oTarget) {
	// TODO
}

//
void Box_DeathBeam(object oUser, object oTarget) {
	// TODO
}

//
void Box_ShockBeam(object oUser, object oTarget) {
	// TODO
}

//
void Box_IonShockBeam(object oUser, object oTarget) {
	// TODO
}

//
void Box_GravityBeam(object oUser, object oTarget) {
	// TODO
}

//
void Box_GravityLongBeam(object oUser, object oTarget) {
	// TODO
}

//
void Box_SelfDestructBeam(object oUser, object oTarget) {
	// TODO
}

//
void Box_ForceDrainBeam(object oUser, object oTarget) {
	// TODO
}

//
void Box_ForceLightningBeam(object oUser, object oTarget) {
	// TODO
}













