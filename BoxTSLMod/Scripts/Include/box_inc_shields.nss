// box_inc_shields

// Written by Box
// Include file for energy shield scripts

int MINING_SHIELD = 33;
int ENERGY_SHIELD = 26;
int ENVIRONMENT_SHIELD = 27;
int SITH_SHIELD = 28;
int MANDALORIAN_SHIELD = 31;
int ECHANI_SHIELD = 29;
int UNIVERSALH_SHIELD = 30;
int ZABRAK_SHIELD = 32;

int DROID_SHIELD = 21;
int DROID_ENVIRONMENT_SHIELD = 22;
int RADIANT_SHIELD = 24;
int ADVANCED_SHIELD = 23;
int UNIVERSAL_SHIELD = 25;

int WEAK_MINING_SHIELD = 34;

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

void Box_WeakMiningShield(object oUser) {
	effect eShield = EffectForceShield(WEAK_MINING_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}
