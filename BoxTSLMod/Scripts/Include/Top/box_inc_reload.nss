// box_inc_reload

// Written by Box
// Include file for managing auxilary weapon and grenade reloads

string TEST_ENERGY_WEAPON = "ts_eweap1";
string TEST_ENERGY_WEAPON_TRIGGER = "ts_etrig1";
string TEST_GRENADE_LAUNCHER = "ts_grenla1";
string TEST_GRENADE_LAUNCHER_ITEM = "ts_gritem1";


int WEAPON_SLOT = INVENTORY_SLOT_CWEAPON_R;
int ENERGY_SLOT_RIGHT = INVENTORY_SLOT_CWEAPON_R;
int ENERGY_SLOT_LEFT = INVENTORY_SLOT_CWEAPON_L;
int ENERGY_SLOT_HUMAN = INVENTORY_SLOT_CWEAPON_R;
int ENERGY_SLOT_HEAVY = INVENTORY_SLOT_CWEAPON_R;
int ENERGY_SLOT_HEAVY_EXTRA = INVENTORY_SLOT_CWEAPON_M;

int WEAPON_CHECK_SLOT = INVENTORY_SLOT_RIGHTARM;
int ENERGY_CHECK_SLOT_RIGHT = INVENTORY_SLOT_RIGHTARM;
int ENERGY_CHECK_SLOT_LEFT = INVENTORY_SLOT_LEFTARM;
int ENERGY_CHECK_SLOT_HUMAN = INVENTORY_SLOT_RIGHTARM;
int ENERGY_CHECK_SLOT_HEAVY = INVENTORY_SLOT_RIGHTARM;

int HEARTBEAT_LOCAL_NUMBER = 26;
int WEAPON_LOCAL_NUMBER = 27;
int ENERGY_LOCAL_NUMBER = 28;

int WEAPON_PERIOD = 4;
int WEAPON_REGEN = 1;
int WEAPON_MAX = 12;

// TODO: Put 2DA codes here
// TODO: Also need to move this to base directory and integrate with featgen.py
int ENERGY_FEAT_1 = 501;
int ENERGY_FEAT_2 = 502;


// TODO: Change these to 2DA codes and integrate with featgen.py
int WEAPON_ITEM_TYPE = 46;
int ENERGY_ITEM_TYPE = 76;
int ENERGY_ITEM_TYPE_HUMAN = 500;
int ENERGY_ITEM_TYPE_HEAVY = 501;



int Box_HasSlot(object oUser, int slot, int weaponType) {
	
	object oWeapon = GetItemInSlot(slot, oWeapon);
	if (!GetIsObjectValid(oWeapon))
		return FALSE;
	else if (GetBaseItemType(oWeapon) != weaponType)
		return FALSE;
	else
		return TRUE;
}
int Box_HasWeapon(object oUser) {
	return Box_HasSlot(oUser, WEAPON_CHECK_SLOT, WEAPON_ITEM_TYPE);
}
int Box_HasEnergyRight(object oUser) {
	return (Box_HasSlot(oUser, ENERGY_CHECK_SLOT_RIGHT, ENERGY_ITEM_TYPE) ||
		Box_HasSlot(oUser, ENERGY_CHECK_SLOT_RIGHT, ENERGY_ITEM_TYPE_HEAVY));
}
int Box_HasEnergyLeft(object oUser) {
	return Box_HasSlot(oUser, ENERGY_CHECK_SLOT_LEFT, ENERGY_ITEM_TYPE);
}
int Box_HasEnergyHuman(object oUser) {
	return Box_HasSlot(oUser, ENERGY_CHECK_SLOT_HUMAN, ENERGY_ITEM_TYPE_HUMAN);
}
int Box_HasEnergyHeavy(object oUser) {
	return Box_HasSlot(oUser, ENERGY_CHECK_SLOT_HEAVY, ENERGY_ITEM_TYPE_HEAVY);
}
int Box_HasEnergy(object oUser) {
	return (Box_HasEnergyRight(oUser) || Box_HasEnergyLeft(oUser) ||
		Box_HasEnergyHuman(oUser));
}

string Box_GetWeaponTag(object oUser) {
	if (Box_HasWeapon(oUser))
		return GetTag(GetItemInSlot(oUser, WEAPON_CHECK_SLOT));
	else
		return "";
}
string Box_GetEnergyRightTag(object oUser) {
	if (Box_HasEnergyRight(oUser))
		return GetTag(GetItemInSlot(oUser, ENERGY_CHECK_SLOT_RIGHT));
	else
		return "";
}
string Box_GetEnergyLeftTag(object oUser) {
	if (Box_HasEnergyLeft(oUser))
		return GetTag(GetItemInSlot(oUser, ENERGY_CHECK_SLOT_LEFT));
	else
		return "";
}
string Box_GetEnergyHumanTag(object oUser) {
	if (Box_HasEnergyHuman(oUser))
		return GetTag(GetItemInSlot(oUser, ENERGY_CHECK_SLOT_HUMAN));
	else
		return "";
}


int Box_GetEnergyPeriod(object oUser) {
	
	if (GetFeatAcquired(ENERGY_FEAT_2, oUser))
		return 4;
	else if (GetFeatAcquired(ENERGY_FEAT_1, oUser))
		return 4;
	else
		return 4;
}

int Box_GetEnergyRegen(object oUser) {
	
	if (GetFeatAcquired(ENERGY_FEAT_2, oUser))
		return 4;
	else if (GetFeatAcquired(ENERGY_FEAT_1, oUser))
		return 3;
	else
		return 2;
}

int Box_GetEnergyMax(object oUser) {
	
	if (GetFeatAcquired(ENERGY_FEAT_2, oUser))
		return 16;
	else if (GetFeatAcquired(ENERGY_FEAT_1, oUser))
		return 12;
	else
		return 8;
}


void Box_RegenWeapon(object oUser) {
	
	int value = GetLocalNumber(oUser, WEAPON_LOCAL_NUMBER);
	
	value = value + WEAPON_REGEN;
	if (value > WEAPON_MAX)
		value = WEAPON_MAX;
	
	SetLocalNumber(oUser, WEAPON_LOCAL_NUMBER, value);
}

void Box_RegenEnergy(object oUser) {
	
	int value = GetLocalNumber(oUser, ENERGY_LOCAL_NUMBER);
	int regen = Box_GetEnergyRegen(oUser);
	int max = Box_GetEnergyMax(oUser);
	
	value = value + regen;
	if (value > max)
		value = max;
	
	SetLocalNumber(oUser, ENERGY_LOCAL_NUMBER, value);
}


int Box_CheckWeaponLoaded(object oUser) {

	int value = GetLocalNumber(oUser, WEAPON_LOCAL_NUMBER);
	if (value == Box_GetWeaponReloadMax(oUser))
		return TRUE;
	else
		return FALSE;
}

int Box_CheckEnergy(object oUser, int cost) {

	int value = GetLocalNumber(oUser, ENERGY_LOCAL_NUMBER);
	if (value >= cost)
		return TRUE;
	else
		return FALSE;
}

int Box_GetEnergyCost(string tag) {
	
	if (tag == TEST_ENERGY_WEAPON)
		return 6;
	else
		return 100;
}
int Box_GetEnergySecondaryCost(string tag) {
	
	return 100;
}
string Box_ConvertTag(string tag) {
	
	if (tag == TEST_GRENADE_LAUNCHER)
		return TEST_GRENADE_LAUNCHER_ITEM;
	else if (tag == TEST_ENERGY_WEAPON)
		return TEST_ENERGY_WEAPON_TRIGGER;
	else
		return "wt_" + GetSubString(tag, 2, 8);
}
string Box_ConvertTagHeavy(string tag) {
	
	// TODO: Heavy tag conversion
	return tag;
}
string Box_ConvertTagHeavySecondary(string tag) {
	
	// TODO: Heavy tag conversion
	return tag;
}

void Box_AttachWithTag(object oUser, int slot, string tag) {
	
	// Check if we are already equipped
	if (GetIsObjectValid(GetItemInSlot(slot, oUser))) {
		
		string oldTag = GetTag(GetItemInSlot(equipmentSlot, oUser));
		// If it's the same skip
		if (oldTag == tag)
			return;
		// Otherwise remove the item
		else
			Box_RemoveItem(oUser, slot);
	}
	
	object oItem = CreateItemOnObject(tag, oUser);
	ActionEquipItem(oItem, slot, TRUE);
}
void Box_AttachItem(object oUser, int targetSlot, int equipmentSlot) {
	string tag = GetTag(GetItemInSlot(equipmentSlot, oUser));
	string newTag = Box_ConvertTag(tag);
	Box_AttachWithTag(oUser, targetSlot, newTag);
}
void Box_AttachWeapon(object oUser) {
	Box_AttachItem(oUser, WEAPON_SLOT, WEAPON_CHECK_SLOT);
}

void Box_RemoveItem(object oUser, int slot) {
	object oItem = GetItemInSlot(slot, oUser);
	DestroyObject(oItem);
}
void Box_RemoveWeapon(object oUser) {
	Box_RemoveItem(oUser, WEAPON_SLOT);
}


void Box_RecalculateEnergyEquipSlot(object oUser, int equipmentSlot, int targetSlot) {
	string tag = GetTag(GetItemInSlot(equipmentSlot, oUser));
	int cost = Box_GetEnergyCost(tag);
	if (Box_CheckEnergy(oUser, cost))
		Box_AttachItem(oUser, targetSlot, equipmentSlot);
	else
		Box_RemoveItem(oUser, targetSlot);
}
void Box_RecalculateEnergyEquipHeavy(object oUser) {
	
	string tag = GetTag(GetItemInSlot(ENERGY_CHECK_SLOT_HEAVY, oUser));
	string tag1 = Box_ConvertTagHeavy(tag);
	string tag2 = Box_ConvertTagHeavySecondary(tag);
	int cost1 = Box_GetEnergyCost(tag);
	int cost2 = Box_GetEnergySecondaryCost(tag);
	
	if (Box_CheckEnergy(cost1))
		Box_AttachItem(oUser, ENERGY_SLOT_HEAVY, ENERGY_CHECK_SLOT_HEAVY);
	else
		Box_RemoveItem(oUser, ENERGY_SLOT_HEAVY);
	
	if (Box_CheckEnergy(cost2))
		Box_AttachItem(oUser, ENERGY_SLOT_HEAVY_EXTRA, ENERGY_CHECK_SLOT_HEAVY);
	else
		Box_RemoveItem(oUser, ENERGY_SLOT_HEAVY_EXTRA);
}
void Box_RecalculateEnergyEquip(object oUser) {
	
	if (Box_HasEnergyLeft(oUser)) {
		Box_RecalculateEnergyEquip(oUser, ENERGY_CHECK_SLOT_LEFT, ENERGY_SLOT_LEFT);
	}
	if (Box_HasEnergyRight(oUser)) {
		Box_RecalculateEnergyEquip(oUser, ENERGY_CHECK_SLOT_RIGHT, ENERGY_SLOT_RIGHT);
	}
	if (Box_HasEnergyHuman(oUser)) {
		Box_RecalculateEnergyEquip(oUser, ENERGY_CHECK_SLOT_HUMAN, ENERGY_CHECK_SLOT_HUMAN);
	}
	if (Box_HasEnergyHeavy(oUser)) {
		Box_RecalculateEnergyHeavy(oUser);
	}
}


void Box_RegenHeartbeat(object oUser) {
	
	int heartbeat = GetLocalNumber(oUser, HEARTBEAT_LOCAL_NUMBER) + 1;
	int energyPeriod = Box_GetEnergyPeriod(oUser);
	
	if ((heartbeat % energyPeriod == 0) && (heartbeat % WEAPON_PERIOD == 0)) {
		
		if (Box_HasWeapon(oUser))
			Box_RegenWeapon(oUser);
		else
			SetLocalNumber(oUser, WEAPON_LOCAL_NUMBER, 0);
		
		if (Box_HasEnergy(oUser))
			Box_RegenEnergy(oUser);
		else
			SetLocalNumber(oUser, ENERGY_LOCAL_NUMBER, 0);
		
		if (Box_CheckWeaponLoaded(oUser))
			Box_AttachWeapon(oUser);
		
		Box_RecalculateEnergyEquip(oUser);
		
		heartbeat = 0;
	}
	else if (heartbeat % energyPeriod == 0) {
		
		if (Box_HasEnergy(oUser))
			Box_RegenEnergy(oUser);
		else
			SetLocalNumber(oUser, WEAPON_LOCAL_NUMBER, 0);
		
		Box_RecalculateEnergyEquip(oUser);
	}
	else if (heartbeat % WEAPON_PERIOD == 0) {
		
		if (Box_HasWeapon(oUser))
			Box_RegenWeapon(oUser);
		else
			SetLocalNumber(oUser, ENERGY_LOCAL_NUMBER, 0);
		
		if (Box_CheckWeaponLoaded(oUser))
			Box_AttachWeapon(oUser);
	}
	
	SetLocalNumber(oUser, HEARTBEAT_LOCAL_NUMBER, heartbeat);
	
}


// Lower cost means faster recharge to max, means faster reload
void Box_DrainWeapon(object oUser, int cost) {
	
	int value = GetLocalNumber(oUser, WEAPON_LOCAL_NUMBER);
	value = value - cost;
	SetLocalNumber(oUser, WEAPON_LOCAL_NUMBER, value);
}

void Box_DrainEnergy(object oUser, int cost) {
	
	int value = GetLocalNumber(oUser, ENERGY_LOCAL_NUMBER);
	value = value - cost;
	SetLocalNumber(oUser, WEAPON_LOCAL_NUMBER, value);
}

void Box_UseWeapon(object oUser, int cost) {
	
	Box_DrainWeapon(oUser, cost);
	Box_RemoveWeapon(oUser);
}

void Box_UseEnergy(object oUser, int cost) {
	
	Box_DrainEnergy(oUser, cost);
	Box_RecalculateEnergyEquip(oUser);
} 






