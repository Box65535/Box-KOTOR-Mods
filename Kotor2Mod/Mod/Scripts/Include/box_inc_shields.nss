// box_inc_shields

// Written by Box
// Include file for energy shield scripts

void Box_MiningShield(object oUser) {
	effect eShield = EffectForceShield(MINING_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}

void Box_EnergyShield(object oUser) {
	effect eShield = EffectForceShield(ENERGY_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}

void Box_EnvironmentShield(object oUser) {
	effect eShield = EffectForceShield(ENVIRONMENT_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}

void Box_SithShield(object oUser) {
	effect eShield = EffectForceShield(SITH_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}

void Box_MandalorianShield(object oUser) {
	effect eShield = EffectForceShield(MANDALORIAN_SHIELD);
	eShield = EffectLinkEffects(eShield, EffectDamageShield(1, 1, DAMAGE_TYPE_BLUDGEONING));
	eShield = EffectLinkEffects(eShield, EffectDamageShield(1, 1, DAMAGE_TYPE_PIERCING));
	eShield = EffectLinkEffects(eShield, EffectDamageShield(1, 1, DAMAGE_TYPE_SLASHING));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}

void Box_EchaniShield(object oUser) {
	effect eShield = EffectForceShield(ECHANI_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}

void Box_UniversalHShield(object oUser) {
	effect eShield = EffectForceShield(UNIVERSALH_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}

void Box_ZabrakShield(object oUser) {
	effect eShield = EffectForceShield(ZABRAK_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}

void Box_DroidShield(object oUser) {
	effect eShield = EffectForceShield(DROID_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}

void Box_DroidEnvironmentShield(object oUser) {
	effect eShield = EffectForceShield(DROID_ENVIRONMENT_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}

void Box_RadiantShield(object oUser) {
	effect eShield = EffectForceShield(RADIANT_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}

void Box_AdvancedShield(object oUser) {
	effect eShield = EffectForceShield(ADVANCED_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}

void Box_UniversalShield(object oUser) {
	effect eShield = EffectForceShield(UNIVERSAL_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}

void Box_EnemyMiningShield(object oUser) {
	effect eShield = EffectForceShield(ENEMY_MINING_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}