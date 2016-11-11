// box_inc_grenades

// Written by Box
// Include file for enemy spells

// Peragus

int Box_EnemySonicDetonator(object oTarget) {
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	return Box_SonicWeapon(oTarget, 10, 8, 2, save, 4, 30.0);
}

int Box_EnemyFuelBurner(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_FireWeapon(oTarget, 10, 12, 4, save, 3.0);
}

int Box_EnemyFireSuppression(object oTarget) {
	int save = SAVING_THROW_FORT;
	return Box_ColdWeapon(oTarget, 10, 12, 4, save, 6.0);
}

int Box_EnemyFireDroid(object oTarget) {
	int save = SAVING_THROW_WILL;
	return Box_FireWeapon(oTarget, 14, 18, 6, save, 3.0);
}

int Box_EnemyColdDroid(object oTarget) {
	int save = SAVING_THROW_FORT;
	return Box_ColdWeapon(oTarget, 14, 12, 4, save, 9.0);
}


// Telos







