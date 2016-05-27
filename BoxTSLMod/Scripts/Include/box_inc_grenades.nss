// box_inc_grenades

// Written by Box
// Include file for grenades


// Peragus Grenades
int Box_PeragusSonicGrenade(object oTarget) {
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	return Box_SonicWeapon(oTarget, 10, 8, 2, save, 4, 30.0);
}


// Loose Grenades
int Box_FragGrenade(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	return Box_PiercingWeapon(oTarget, 12, 20, 4, save);
}

int Box_FlashGrenade(object oTarget) {
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	return Box_FlashWeapon(oTarget, 12, save, 9.0);
}

int Box_IonGrenade(object oTarget) {
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_REFLEX);
	return Box_IonWeapon(oTarget, 12, 12, 4, 12, save, 6.0);
}

int Box_SonicGrenade(object oTarget) {
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	return Box_SonicWeapon(oTarget, 12, 16, 4, save, 4, 30.0);
}

int Box_ColdGrenade(object oTarget) {
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_REFLEX);
	return Box_ColdWeapon(oTarget, 14, 24, 4, save, 6.0);
}

int Box_PlasmaGrenade(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	return Box_PlasmaWeapon(oTarget, 14, 32, 4, save);
}

int Box_DetonatorGrenade(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	return Box_DetonatorWeapon(oTarget, 24, 60, 20, save);
}


// Grenade Launchers
int Box_FragGrenadeLauncher(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	return Box_PiercingWeapon(oTarget, 18, 24, 6, save);
}

int Box_FlashGrenadeLauncher(object oTarget) {
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	return Box_FlashWeapon(oTarget, 18, save, 9.0);
}

int Box_PoisonGrenadeLauncher(object oTarget) {
	return Box_PoisonWeapon(oTarget, GAS_GRENADE);
}

int Box_NerveGrenadeLauncher(object oTarget) {
	return Box_EffectWeapon(oTarget, 20, EffectChoke(), SAVING_THROW_FORT, SAVING_THROW_TYPE_POISON, 9.0);
}

int Box_SonicGrenadeLauncher(object oTarget) {
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	return Box_SonicWeapon(oTarget, 18, 24, 6, save, 6, 30.0);
}

int Box_SonicGrenadeLauncher2(object oTarget) {
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	return Box_SonicWeapon(oTarget, 20, 32, 8, save, 6, 30.0);
}

int Box_PlasmaGrenadeLauncher(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	return Box_PlasmaWeapon(oTarget, 20, 36, 6, save);
}

int Box_ShockGrenadeLauncher(object oTarget) {
	return 0;
}

int Box_ColdGrenadeLauncher(object oTarget) {
	return 0;
}

int Box_AdhesiveGrenadeLauncher(object oTarget) {
	return 0;
}



// Rocket Launchers
int Box_ExplosiveRocket(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	return Box_PiercingWeapon(oTarget, 24, 48, 12, save);
}

int Box_BusterRocket(object oTarget) {
	int damageType = DAMAGE_TYPE_PIERCING;
	int save = SAVING_THROW_REFLEX;
	int saveType = SAVING_THROW_TYPE_NONE;
	effect ePush = EffectForcePushTargeted(GetSpellTargetLocation());
	float duration = 0.1;
	return Box_DamageAndEffectWeapon(oTarget, 24, 60, 12, damageType, ePush, save, saveType, duration);
}

int Box_BusterRocket2(object oTarget) {
	return 0;
}

int Box_IncendiaryRocket(object oTarget) {
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_REFLEX);
	return Box_BurnWeapon(oTarget, 24, 36, 12, save, 4, 30.0);
}

int Box_ColdRocket(object oTarget) {
	return 0;
}



int Box_PlasmaRocket(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	return Box_PlasmaWeapon(oTarget, 28, 60, 20, save);
}

int Box_RadiationRocket(object oTarget) {
	Box_DealDamage(oTarget, 20, DAMAGE_TYPE_FIRE);
	return Box_PoisonWeapon(oTarget, RADIATION_ROCKET);
}

int Box_DetonatorGrenadeLauncher(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	return Box_DetonatorWeapon(oTarget, 28, 60, 20, save);
}

int Box_FusionRocket(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	return Box_DetonatorWeapon(oTarget, 32, 80, 40, save);
}










