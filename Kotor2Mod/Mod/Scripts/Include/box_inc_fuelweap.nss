// box_inc_fuelweap

// Written by Box
// Include file for fuel based weapons


int Box_FuelBurner(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_FireWeapon(oTarget, 10, 12, 4, save, 3.0);
}

int Box_Flamethrower(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_FireWeapon(oTarget, 12, 24, 8, save, 6.0);
}

int Box_Flamethrower2(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_FireWeapon(oTarget, 16, 36, 12, save, 6.0);
}

int Box_PlasmaFlamethrower(object oTarget) {
	int save = SAVING_THROW_FORT;
	return Box_BurnWeapon(oTarget, 20, 48, 16, save, 4, 18.0);
}

int Box_Carbonite(object oTarget) {
	int save = SAVING_THROW_FORT;
	return Box_ColdWeapon(oTarget, 16, 16, 8, save, 12.0);
}

int Box_Carbonite2(object oTarget) {
	int save = SAVING_THROW_FORT;
	return Box_ColdWeapon(oTarget, 20, 32, 16, save, 12.0);
}

int Box_PoisonDart(object oTarget) {
	return Box_PoisonWeapon(oTarget, POISON_DART_POISON);
}

int Box_SleepDart(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_SleepWeapon(oTarget, 12, save, 9.0);
}

int Box_ParalysisDart(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_ParalyzeWeapon(oTarget, 16, save, 9.0);
}

int Box_KyberDart(object oTarget) {
	return Box_PoisonWeapon(oTarget, KYBER_DART_POISON);
}

int Box_GrapplingHook(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	return Box_ChokeWeapon(oTarget, 12, save, 6.0);
}

int Box_IonBlaster(object oTarget) {
	int save = SAVING_THROW_FORT;
	return Box_IonWeapon(oTarget, 16, 24, 8, 24, save, 6.0);
}

int Box_PlasmaBlaster(object oTarget) {
	int save = SAVING_THROW_FORT;
	return Box_PlasmaWeapon(oTarget, 16, 32, 8, save);
}

int Box_AntimatterBlaster(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	int damageType = DAMAGE_TYPE_UNSTOPPABLE;
	int saveType = SAVING_THROW_TYPE_NONE;
	return Box_DamageWeapon(oTarget, 20, 60, 16, damageType, save, saveType);
}







