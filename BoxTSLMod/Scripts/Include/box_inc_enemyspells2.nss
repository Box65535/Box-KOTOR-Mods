// box_inc_enemyspells2

// Written by Box
// Include file for enemy spells

int Box_EnemyFragGrenade1(object oTarget) {
	return Box_PiercingWeapon(oTarget, 12, 18, 6, SAVING_THROW_REFLEX);
}
int Box_EnemyFragGrenade2(object oTarget) {
	return Box_PiercingWeapon(oTarget, 16, 24, 8, SAVING_THROW_REFLEX);
}
int Box_EnemyFragGrenade3(object oTarget) {
	return Box_PiercingWeapon(oTarget, 20, 30, 10, SAVING_THROW_REFLEX);
}
int Box_EnemyFragGrenade4(object oTarget) {
	return Box_PiercingWeapon(oTarget, 24, 36, 12, SAVING_THROW_REFLEX);
}

int Box_EnemyFlashGrenade1(object oTarget) {
	return Box_FlashWeapon(oTarget, 12, Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL), 9.0);
}
int Box_EnemyFlashGrenade2(object oTarget) {
	return Box_FlashWeapon(oTarget, 16, Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL), 9.0);
}
int Box_EnemyFlashGrenade3(object oTarget) {
	return Box_FlashWeapon(oTarget, 20, Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL), 9.0);
}
int Box_EnemyFlashGrenade4(object oTarget) {
	return Box_FlashWeapon(oTarget, 24, Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL), 9.0);
}

int Box_EnemyPlasmaGrenade1(object oTarget) {
	return Box_PlasmaWeapon(oTarget, 16, 32, 8, SAVING_THROW_REFLEX);
}
int Box_EnemyPlasmaGrenade2(object oTarget) {
	return Box_PlasmaWeapon(oTarget, 20, 40, 10, SAVING_THROW_REFLEX);
}
int Box_EnemyPlasmaGrenade3(object oTarget) {
	return Box_PlasmaWeapon(oTarget, 24, 48, 12, SAVING_THROW_REFLEX);
}

int Box_EnemySonicGrenade1(object Target) {
	return Box_SonicWeapon(oTarget, 12, 12, 4, Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL), 6, 30.0);
}
int Box_EnemySonicGrenade2(object Target) {
	return Box_SonicWeapon(oTarget, 16, 18, 6, Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL), 6, 30.0);
}
int Box_EnemySonicGrenade3(object Target) {
	return Box_SonicWeapon(oTarget, 20, 24, 8, Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL), 6, 30.0);
}
int Box_EnemySonicGrenade4(object Target) {
	return Box_SonicWeapon(oTarget, 24, 30, 10, Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL), 6, 30.0);
}

int Box_EnemyDetonatorGrenade1(object oTarget) {
	return Box_DetonatorWeapon(oTarget, 24, 60, 15, SAVING_THROW_REFLEX);
}
int Box_EnemyDetonatorGrenade2(object oTarget) {
	return Box_DetonatorWeapon(oTarget, 28, 80, 20, SAVING_THROW_REFLEX);
}
int Box_EnemyDetonatorGrenade3(object oTarget) {
	return Box_DetonatorWeapon(oTarget, 32, 100, 25, SAVING_THROW_REFLEX);
}

int Box_EnemyPoisonGrenade1(object oTarget) {
	return Box_PoisonWeapon(oTarget, ENEMY_POISON_GRENADE_1);
}
int Box_EnemyPoisonGrenade2(object oTarget) {
	return Box_PoisonWeapon(oTarget, ENEMY_POISON_GRENADE_2);
}
int Box_EnemyPoisonGrenade3(object oTarget) {
	return Box_PoisonWeapon(oTarget, ENEMY_POISON_GRENADE_3);
}
int Box_EnemyPoisonGrenade4(object oTarget) {
	return Box_PoisonWeapon(oTarget, ENEMY_POISON_GRENADE_4);
}

int Box_EnemyFlamethrower1(object oTarget) {
	return Box_FireWeapon(oTarget, 12, 24, 6, SAVING_THROW_WILL, 3.0);
}
int Box_EnemyFlamethrower2(object oTarget) {
	return Box_FireWeapon(oTarget, 16, 36, 9, SAVING_THROW_WILL, 3.0);
}
int Box_EnemyFlamethrower3(object oTarget) {
	return Box_FireWeapon(oTarget, 20, 48, 12, SAVING_THROW_WILL, 3.0);
}
int Box_EnemyFlamethrower4(object oTarget) {
	return Box_FireWeapon(oTarget, 24, 60, 15, SAVING_THROW_WILL, 3.0);
}
