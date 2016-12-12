// box_inc_mines

// Written by Box
// Include file for mine trap scripts


int Box_FragMine(object oTarget, int mineLevel) {
	int dc = 10 + 2*mineLevel;
	int damage = 10 + 10*mineLevel;
	int saveDamage = damage/2;
	int save = SAVING_THROW_REFLEX;
	return Box_PiercingWeapon(oTarget, dc, damage, saveDamage, save);
}

int Box_PlasmaMine(object oTarget, int mineLevel) {
	int dc = 10 + 2*mineLevel;
	int damage = 8 + 8*mineLevel;
	int saveDamage = damage/2;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_REFLEX);
	return Box_BurnWeapon(oTarget, dc, damage, saveDamage, save, 4, 15.0);
}

int Box_SonicMine(object oTarget, int mineLevel) {
	int dc = 10 + 2*mineLevel;
	int damage = 8 + 8*mineLevel;
	int saveDamage = damage/2;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	return Box_SonicWeapon(oTarget, dc, damage, saveDamage, save, 4, 30.0);
}

int Box_PoisonMine(object oTarget, int mineLevel) {
	if (mineLevel == 1)
		return Box_PoisonWeapon(oTarget, POISON_MINE_1);
	else if (mineLevel == 2)
		return Box_PoisonWeapon(oTarget, POISON_MINE_2);
	else if (mineLevel == 3)
		return Box_PoisonWeapon(oTarget, POISON_MINE_3);
	else if (mineLevel == 4)
		return Box_PoisonWeapon(oTarget, POISON_MINE_4);
	else
		return Box_PoisonWeapon(oTarget, POISON_MINE_5);
}

int Box_FlashMine(object oTarget, int mineLevel) {
	int dc = 10 + 2*mineLevel;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	float duration = 4.5 + 1.5*mineLevel;
	return Box_FlashWeapon(oTarget, dc, save, duration);
}







