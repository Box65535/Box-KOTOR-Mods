// box_inc_enemy

// Written by Box
// Include file for initializing enemies

int HARD_MODE_LEVELS = 0;

int ENEMY_STRENGTH_CIVILIAN = 0;
int ENEMY_STRENGTH_WEAK = 1;
int ENEMY_STRENGTH_REGULAR = 2;
int ENEMY_STRENGTH_STRONG = 3;
int ENEMY_STRENGTH_BOSS = 4;

int HIDE_TYPE_EXPERT_DROID = 0;
int HIDE_TYPE_COMBAT_DROID = 1;
int HIDE_TYPE_TURRET = 2;
int HIDE_TYPE_HK50 = 3;
int HIDE_TYPE_SITH_ASSASSIN = 4;
int HIDE_TYPE_THUG = 5;
int HIDE_TYPE_MERCENARY = 6;
int HIDE_TYPE_REPUBLIC = 7;
int HIDE_TYPE_CANNOK = 8;
int HIDE_TYPE_GAMMOREAN = 9;
int HIDE_TYPE_SCROUNDREL = 10;
int HIDE_TYPE_CIVILIAN = 11;
int HIDE_TYPE_BOUNTY_HUNTER = 12;
int HIDE_TYPE_TECH_SPEC = 13;

//
void Box_RemoveAllItems(object oUser) {

	DestroyObject(GetItemInSlot(0, oUser));
	DestroyObject(GetItemInSlot(1, oUser));
	DestroyObject(GetItemInSlot(2, oUser));
	DestroyObject(GetItemInSlot(3, oUser));
	DestroyObject(GetItemInSlot(4, oUser));
	DestroyObject(GetItemInSlot(5, oUser));
	DestroyObject(GetItemInSlot(6, oUser));
	DestroyObject(GetItemInSlot(7, oUser));
	DestroyObject(GetItemInSlot(8, oUser));
	DestroyObject(GetItemInSlot(9, oUser));
	DestroyObject(GetItemInSlot(10, oUser));
	DestroyObject(GetItemInSlot(11, oUser));
	DestroyObject(GetItemInSlot(12, oUser));
	DestroyObject(GetItemInSlot(13, oUser));
	DestroyObject(GetItemInSlot(14, oUser));
	DestroyObject(GetItemInSlot(15, oUser));
	DestroyObject(GetItemInSlot(16, oUser));
	DestroyObject(GetItemInSlot(17, oUser));
	DestroyObject(GetItemInSlot(18, oUser));
	DestroyObject(GetItemInSlot(19, oUser));
	
	object oItem = GetFirstItemInInventory(oUser);
	while (GetIsObjectValid(oItem)) {
		DestroyObject(oItem);
		oItem = GetNextItemInInventory(oUser);
	}
}

int Box_GetEnemyLevel(int enemyStrength) {
	
	int level = GetHitDice(GetFirstPC());
	
	if (enemyStrength == ENEMY_STRENGTH_CIVILIAN) {
		level = 1;
	}
	else if (enemyStrength == ENEMY_STRENGTH_WEAK) {
		level = level - 3;
	}
	else if (enemyStrength == ENEMY_STRENGTH_REGULAR) {
		level = level - 2;
	}
	else if (enemyStrength == ENEMY_STRENGTH_STRONG) {
		level = level - 1;
	}
	else if (enemyStrength == ENEMY_STRENGTH_BOSS) {
		level = level;
	}
	
	if (level < 1)
		level = 1;
	
	return level;
}

int Box_GetEquipmentLevel(int enemyStrength) {
	
	int level = Box_GetEnemyLevel(enemyStrength);
	
	// TODO: Decide what these numbers should actually be
	if (level < 7)
		return 1;
	if (level < 10)
		return 2;
	if (level < 13)
		return 3;
	if (level < 16)
		return 4;
	if (level < 19)
		return 5;
	if (level < 22)
		return 6;
	if (level < 25)
		return 7;
	if (level < 28)
		return 8;
	
	return 9;
}

string Box_GetHideTemplate(int hideType, int enemyStrength) {
	
	int level = Box_GetEnemyLevel(enemyStrength);
	string levelString = IntToString(level);
	
	string hideString = "";
	string strengthString = "";
	
	if (enemyStrength == ENEMY_STRENGTH_WEAK) {
		strengthString = "cv";
	}
	else if (enemyStrength == ENEMY_STRENGTH_WEAK) {
		strengthString = "wk";
	}
	else if (enemyStrength == ENEMY_STRENGTH_REGULAR) {
		strengthString = "rg";
	}
	else if (enemyStrength == ENEMY_STRENGTH_STRONG) {
		strengthString = "sr";
	}
	else if (enemyStrength == ENEMY_STRENGTH_BOSS) {
		strengthString = "bs";
	}
	
	if (hideType == HIDE_TYPE_EXPERT_DROID) {
		hideString = "exdr";
	}
	else if (hideType == HIDE_TYPE_COMBAT_DROID) {
		hideString = "cmdr";
	}
	else if (hideType == HIDE_TYPE_TURRET) {
		hideString = "turr";
	}
	else if (hideType == HIDE_TYPE_HK50) {
		hideString = "hk50";
	}
	else if (hideType == HIDE_TYPE_SITH_ASSASSIN) {
		hideString = "sass";
	}
	else if (hideType == HIDE_TYPE_THUG) {
		hideString = "thug";
	}
	else if (hideType == HIDE_TYPE_MERCENARY) {
		hideString = "merc";
	}
	else if (hideType == HIDE_TYPE_REPUBLIC) {
		hideString = "repb";
	}
	else if (hideType == HIDE_TYPE_CANNOK) {
		hideString = "cnnk";
	}
	else if (hideType == HIDE_TYPE_GAMMOREAN) {
		hideString = "gmmr";
	}
	else if (hideType == HIDE_TYPE_SCROUNDREL) {
		hideString = "scdr";
	}
	else if (hideType == HIDE_TYPE_BOUNTY_HUNTER) {
		hideString = "bohu";
	}
	else if (hideType == HIDE_TYPE_TECH_SPEC) {
		hideString = "tspc";
	}
	else if (hideType == HIDE_TYPE_CIVILIAN) {
		hideString = "civl";
	}
	
	return "eh_ " + hideString + strengthString + levelString;
}

void Box_GrantDualWield(object oUser) {
	
	GrantFeat(FEAT_AMBIDEXTERITY, oUser);
	GrantFeat(FEAT_DOUBLE_WEAPON_FIGHTING, oUser);
}

void Box_GrantDualMastery(object oUser) {
	
	GrantFeat(FEAT_AMBIDEXTERITY, oUser);
	GrantFeat(FEAT_DOUBLE_WEAPON_FIGHTING, oUser);
	GrantFeat(FEAT_ADVANCED_DOUBLE_WEAPON_FIGHTING, oUser);
}

void Box_GrantCloseCombat(object oUser) {
	
	// TODO: this
	GrantFeat(139, oUser);
}



