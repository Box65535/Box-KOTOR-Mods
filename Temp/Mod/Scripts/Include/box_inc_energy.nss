// box_inc_energy

// Written by Box
// Include file for energy based weapons


int Box_IonStrikerMkI(object oTarget) {
	int save = SAVING_THROW_FORT;
	return Box_DroidStunWeapon(oTarget, 12, save, 9.0);
}

int Box_StunRayMkI(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_StunWeapon(oTarget, 12, save, 6.0);
}

int Box_ShockArmMkI(object oTarget) {
	int save = SAVING_THROW_WILL;
	int damageType = DAMAGE_THROW_TYPE_ELECTRICAL;
	int saveType = SAVING_THROW_TYPE_ELECTRICAL;
	return Box_DamageWeapon(oTarget, 14, `12, 4, damageType, save, saveType);
}

int Box_IonStrikerMkII(object oTarget) {
	int save = SAVING_THROW_FORT;
	return Box_IonWeapon(oTarget, 14, 8, 4, 8, save, 9.0);
}

int Box_StunRayMkII(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_StunWeapon(oTarget, 14, save, 9.0);
}

int Box_ShockArmMkII(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_ShockWeapon(oTarget, 14, 18, 6, save, 3.0);
}

int Box_SonicRepulsorMkI(object oTarget) {
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_SONIC;
	effect eSonic = EffectAbilityDecrease(ABILITY_INTELLIGENCE, 6);
	eSonic = EffectLinkEffects(eSonic, EffectAbilityDecrease(ABILITY_WISDOM, 6));
	eSonic = EffectLinkEffects(eSonic, EffectAbilityDecrease(ABILITY_CHARISMA, 6));
	return Box_EffectWeapon(oTarget, 14, eSonic, ave, saveType, 30.0);
}

int Box_IonBlasterMkI(object oTarget) {
	int save = SAVING_THROW_FORT;
	return Box_IonWeapon(oTarget, 16, 24, 8, 24, save, 3.0);
}

int Box_ShockArmMkIII(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_ShockWeapon(oTarget, 16, 24, 8, save, 3.0);
}

int Box_IonStrikerMkIII(object oTarget) {
	int save = SAVING_THROW_FORT;
	return Box_IonWeapon(oTarget, 18, 18, 6, 18, save, 12.0);
}

int Box_PlasmaBlasterMkI(object oTarget) {
	int save = SAVING_THROW_FORT;
	return Box_PlasmaWeapon(oTarget, 18, 36, 12, save);
}

int Box_SonicRepulsorMkII(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_SonicWeapon(oTarget, 18, 18, 6, save, 6, 30.0);
}

int Box_IonBlasterMkII(object oTarget) {
	int save = SAVING_THROW_FORT;
	return Box_IonWeapon(oTarget, 20, 36, 8, 36, save, 6.0);
}

int Box_PlasmaBlasterMkII(object oTarget) {
	int save = SAVING_THROW_FORT;
	return Box_PlasmaWeapon(oTarget, 20, 48, 16, save);
}

int Box_ShieldDisruptor(object oTarget) {
	return ;
}

int Box_LightningArm(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_ShockWeapon(oTarget, 16, 24, 12, save, 6.0);
}

int Box_SonicWaveEmitter(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_SonicWeapon(oTarget, 16, 12, 6, save, 6, 30.0);
}

int Box_DroidHacker(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_ConfuseWeapon(oTarget, 18, save, 20.0);
}

int Box_SeismicDisruptor(object oTarget) {
	
	int save = SAVING_THROW_REFLEX;
	int damageType = DAMAGE_TYPE_SONIC;
	int damageTypeKnockdown = DAMAGE_TYPE_BLUDGEONING;
	int saveType = SAVING_THROW_TYPE_NONE;
	effect eKnockdown = EffectKnockdown();
	
	int result = Box_DamageAndEffectWeapon(oTarget, 18, 18, 6, damageType, eKnockdown, save, saveType, 3.0);
	if (result == SAVE_FAILED)
		DelayCommand(1.5, Box_DealDamage(oTarget, 12, damageTypeKnockdown));
	
	return result;
}

int Box_ParalysisRay(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_ParalyzeWeapon(oTarget, 18, save, 15.0);
}

int Box_PlasmaBomber(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	return Box_PlasmaWeapon(oTarget, 20, 48, 16, save);
}

int Box_GravityProjector(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	int damageType = DAMAGE_TYPE_BLUDGEONING;
	int saveType = SAVING_THROW_TYPE_NONE;
	effect ePush = EffectForcePushed();
	return Box_DamageAndEffectWeapon(oTarget, 20, 36, 12, damageType, ePush, save, saveType, 3.0);
}

int Box_DeathRay(object oTarget) {
	int save = SAVING_THROW_FORT;
	return ;
}

int Box_DroidDominator(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_ConfuseWeapon(oTarget, 24, save, 30.0);
}

int Box_GravityGenerator(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	return ;
}

int Box_DroidSelfDestruct(object oTarget) {
	int damage = GetHitDice(OBJECT_SELF)*4;
	int saveDamage = GetHitDice(OBJECT_SELF);
	int save = SAVING_THROW_REFLEX;
	int saveType = SAVING_THROW_TYPE_NONE;
	return ;
}








