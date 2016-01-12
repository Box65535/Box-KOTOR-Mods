// box_inc_reload

// Written by Box
// Include file for managing auxilary weapon and grenade reloads



int HEARTBEAT_INDEX = 0;
int HEARTBEAT_PERIOD = 4;

int WEAPON_INDEX = 0;
int ENERGY_INDEX = 0;

int WEAPON_MAX = 12;
int ENERGY_MAX = 6;
int WEAPON_REGEN = 2;
int ENERGY_REGEN = 1;

int ENERGY_FEAT_1 = 1;
int ENERGY_FEAT_2 = 2;
int ENERGY_FEAT_3 = 3;


int Box_GetEnergyMultiplier(object oUser) {

	int mult = 0;
	if (GetFeatAcquired(ENERGY_FEAT_1, oUser))
		mult = mult + 1;
	if (GetFeatAcquired(ENERGY_FEAT_2, oUser))
		mult = mult + 1;
	if (GetFeatAcquired(ENERGY_FEAT_3, oUser))
		mult = mult + 1;
	
	return mult;
}

void Box_RegenWeapon(object oUser) {
	
	int value = GetLocalNumber(oUser, WEAPON_INDEX);
	
	value = value + WEAPON_REGEN;
	if (value > WEAPON_MAX)
		value = WEAPON_MAX;
	
	SetLocalNumber(oUser, WEAPON_INDEX, value);
}

void Box_RegenEnergy(object oUser) {
	
	int value = GetLocalNumber(oUser, ENERGY_INDEX);
	
	int mult = Box_GetEnergyMultiplier(oUser);
	int regen = ENERGY_MAX * mult;
	int max = ENERGY_MAX * mult;
	
	value = value + regen;
	if (value > max)
		value = max;
	
	SetLocalNumber(oUser, ENERGY_INDEX, value);
}

int Box_CheckWeapon(object oUser, int cost) {

	int value = GetLocalNumber(oUser, WEAPON_INDEX);
	if (value >= cost)
		return TRUE;
	else
		return FALSE;
}

int Box_CheckEnergy(object oUser, int cost) {

	int value = GetLocalNumber(oUser, ENERGY_INDEX);
	if (value >= cost)
		return TRUE;
	else
		return FALSE;
}

void Box_DrainWeapon(object oUser, int cost) {
	
	int value = GetLocalNumber(oUser, WEAPON_INDEX);
	value = value - cost;
	SetLocalNumber(oUser, WEAPON_INDEX, value);
}

void Box_DrainEnergy(object oUser, int cost) {
	
	int value = GetLocalNumber(oUser, ENERGY_INDEX);
	value = value - cost;
	SetLocalNumber(oUser, ENERGY_INDEX, value);
}

int Box_CheckAttachWeapon(object oUser, int slot, int targetSlot) {
	
	object oTarget = GetItemInSlot(targetSlot, oUser);
	if (GetIsObjectValid(oTarget))
		return FALSE;
	
	object oWeapon = GetItemInSlot(slot, oUser);
	string tag = GetTag(oWeapon);
	
	int cost = 0;
	
	// Calculate cost
	
	return Box_CheckWeapon(oUser, cost);
}

int Box_CheckAttachEnergy(object oUser, int slot, int targetSlot) {
	
	object oTarget = GetItemInSlot(targetSlot, oUser);
	if (GetIsObjectValid(oTarget))
		return FALSE;
	
	object oWeapon = GetItemInSlot(slot, oUser);
	string tag = GetTag(oWeapon);
	
	int cost = 0;
	
	// Calculate cost
	
	return Box_CheckEnergy(oUser, cost);
}

void Box_AttachItem(object oUser, int slot, int targetSlot) {
	
	object oWeapon = GetItemInSlot(slot, oUser);
	string tag = GetTag(oWeapon);
	
	string itemTemplate = "";
	int attachSlot = 0;
	
	// Calculate itemTemplate and attachSlot
	
	
	object oItem = CreateItemOnObject(itemTemplate, oUser);
	ActionEquipItem(oItem, slot, TRUE);
}

void Box_RemoveItem(object oUser, int slot) {
	
	object oItem = GetItemInSlot(slot, oUser);
	DestroyObject(oItem);
}

void Box_HeartbeatReload(object oUser) {
	
	int value = GetLocalNumber(oUser, HEARTBEAT_INDEX);
	value = value + 1;
	if (value < HEARTBEAT_PERIOD) {
		SetLocalNumber(oUser, HEARTBEAT_INDEX, value);
		return;
	}
	else {
		SetLocalNumber(oUser, HEARTBEAT_INDEX, 0);
	}
	
	if (Box_IsDroid(oUser)) {
	
		Box_RegenWeapon(oUser);
		Box_RegenEnergy(oUser);
		
		if (Box_CheckAttachEnergy(oUser, INVENTORY_SLOT_LEFTARM, INVENTORY_SLOT_CWEAPON_L))
			Box_AttachItem(oUser, INVENTORY_SLOT_LEFTARM, INVENTORY_SLOT_CWEAPON_L);
		if (Box_CheckAttachEnergy(oUser, INVENTORY_SLOT_RIGHTARM, INVENTORY_SLOT_CWEAPON_R))
			Box_AttachItem(oUser, INVENTORY_SLOT_RIGHTARM, INVENTORY_SLOT_CWEAPON_R);
		if (Box_CheckAttachWeapon(oUser, INVENTORY_SLOT_HEAD, INVENTORY_SLOT_CWEAPON_B))
			Box_AttachItem(oUser, INVENTORY_SLOT_HEAD, INVENTORY_SLOT_CWEAPON_B);
	}
	else {
		
		Box_RegenWeapon(oUser);
		
		if (Box_CheckAttachWeapon(oUser, INVENTORY_SLOT_RIGHTARM, INVENTORY_SLOT_CWEAPON_B))
			Box_AttachItem(oUser, INVENTORY_SLOT_RIGHTARM, INVENTORY_SLOT_CWEAPON_B);
	}
}

void Box_UseWeapon(object oUser, int cost) {
	
	if (Box_IsDroid(oUser)) {
	
		Box_DrainWeapon(oUser, cost);
		
		if (!Box_CheckAttachWeapon(oUser, INVENTORY_SLOT_HEAD, INVENTORY_SLOT_CWEAPON_B))
			Box_RemoveItem(oUser, INVENTORY_SLOT_CWEAPON_B);
	}
	else {
		
		Box_DrainWeapon(oUser, cost);
		
		if (!Box_CheckAttachWeapon(oUser, INVENTORY_SLOT_RIGHTARM, INVENTORY_SLOT_CWEAPON_B))
			Box_RemoveItem(oUser, INVENTORY_SLOT_CWEAPON_B);
	}
}

void Box_UseEnergy(object oUser, int cost) {
	
	// Droid Only
	
	Box_DrainEnergy(oUser, cost);
	
	if (!Box_CheckAttachWeapon(oUser, INVENTORY_SLOT_LEFTARM, INVENTORY_SLOT_CWEAPON_L))
		Box_RemoveItem(oUser, INVENTORY_SLOT_CWEAPON_L);
	if (!Box_CheckAttachWeapon(oUser, INVENTORY_SLOT_RIGHTARM, INVENTORY_SLOT_CWEAPON_R))
		Box_RemoveItem(oUser, INVENTORY_SLOT_CWEAPON_R);
} 






