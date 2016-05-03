// box_inc_enemy

// Written by Box
// Include file for initializing enemies

int HARD_MODE_LEVELS = 0;

int ENEMY_STRENGTH_WEAK = 0;
int ENEMY_STRENGTH_REGULAR = 1;
int ENEMY_STRENGTH_STRONG = 2;
int ENEMY_STRENGTH_BOSS = 3;

int HIDE_TYPE_EXPERT_DROID = 0;
int HIDE_TYPE_COMBAT_DROID = 1;
int HIDE_TYPE_TURRET = 2;
int HIDE_TYPE_HK50 = 3;
int HIDE_TYPE_SITH_ASSASSIN = 4;

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

string Box_GetHideTemplate(int hideType, int enemyStrength) {
	
	int level = GetHitDice(GetFirstPC());
	
	string hideString = "";
	string strengthString = "";
	
	if (enemyStrength == ENEMY_STRENGTH_WEAK) {
		level = level - 3;
		strengthString = "wk";
	}
	else if (enemyStrength == ENEMY_STRENGTH_REGULAR) {
		level = level - 2;
		strengthString = "rg";
	}
	else if (enemyStrength == ENEMY_STRENGTH_STRONG) {
		level = level - 1;
		strengthString = "sr";
	}
	else if (enemyStrength == ENEMY_STRENGTH_BOSS) {
		level = level - 0;
		strengthString = "bs";
	}
	
	if (level < 1)
		level = 1;
	
	string levelString = IntToString(level);
	
	if (hideType == HIDE_TYPE_EXPERT_DROID) {
		hideString = "exdr";
	}
	else if (hideType == HIDE_TYPE_COMBAT_DROID) {
		hideString = "cmdr";
	}
	if (hideType == HIDE_TYPE_TURRET) {
		hideString = "turr";
	}
	if (hideType == HIDE_TYPE_HK50) {
		hideString = "hk50";
	}
	if (hideType == HIDE_TYPE_SITH_ASSASSIN) {
		hideString = "sass";
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
	GrantFeat(1, oUser);
}



