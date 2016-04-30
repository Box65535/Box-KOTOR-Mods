// box_inc_shields

// Written by Box
// Include file for energy shield scripts

int MINING_SHIELD = #2DAMEMORY_PERAGUS_SHIELD_H#;
int ENERGY_SHIELD = #2DAMEMORY_ENERGY_SHIELD_H#;
int ENVIRONMENT_SHIELD = #2DAMEMORY_ENVIRONMENT_SHIELD_H#;
int SITH_SHIELD = #2DAMEMORY_ADVANCED_SHIELD_H#;
int MANDALORIAN_SHIELD = #2DAMEMORY_MELEE_SHIELD_H#;
int ECHANI_SHIELD = #2DAMEMORY_RADIANT_SHIELD_H#;
int UNIVERSALH_SHIELD = #2DAMEMORY_UNIVERSAL_SHIELD_H#;
int ZABRAK_SHIELD = #2DAMEMORY_BAODUR_SHIELD_H#;

int DROID_SHIELD = #2DAMEMORY_ENERGY_SHIELD_D#;
int DROID_ENVIRONMENT_SHIELD = #2DAMEMORY_ENVIRONMENT_SHIELD_D#;
int RADIANT_SHIELD = #2DAMEMORY_RADIANT_SHIELD_D#;
int ADVANCED_SHIELD = #2DAMEMORY_ADVANCED_SHIELD_D#;
int UNIVERSAL_SHIELD = #2DAMEMORY_UNIVERSAL_SHIELD_D#;

int ENEMY_MINING_SHIELD_MINING_SHIELD = #2DAMEMORY_PERAGUS_SHIELD_E#;
int ENEMY_MINING_SHIELD_2 = #2DAMEMORY_PERAGUS_SHIELD_2_E#;

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

void Box_EnemyMiningShield1(object oUser) {
	effect eShield = EffectForceShield(ENEMY_MINING_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}

void Box_EnemyMiningShield2(object oUser) {
	effect eShield = EffectForceShield(ENEMY_MINING_SHIELD_2);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}