 
// box_inc_array

// Written by Box
// Include file for arrays

// Fixed max size of 30
struct Box_Array {
	
	int size;
	object o0;
	object o1;
	object o2;
	object o3;
	object o4;
	object o5;
	object o6;
	object o7;
	object o8;
	object o9;
	object o10;
	object o11;
	object o12;
	object o13;
	object o14;
	object o15;
	object o16;
	object o17;
	object o18;
	object o19;
	object o20;
	object o21;
	object o22;
	object o23;
	object o24;
	object o25;
	object o26;
	object o27;
	object o28;
	object o29;
};

struct Box_Array Box_CreateArray() {
	
	struct Box_Array aArray;
	
	aArray.size = 0;
	aArray.o0 = OBJECT_INVALID;
	aArray.o1 = OBJECT_INVALID;
	aArray.o2 = OBJECT_INVALID;
	aArray.o3 = OBJECT_INVALID;
	aArray.o4 = OBJECT_INVALID;
	aArray.o5 = OBJECT_INVALID;
	aArray.o6 = OBJECT_INVALID;
	aArray.o7 = OBJECT_INVALID;
	aArray.o8 = OBJECT_INVALID;
	aArray.o9 = OBJECT_INVALID;
	aArray.o10 = OBJECT_INVALID;
	aArray.o11 = OBJECT_INVALID;
	aArray.o12 = OBJECT_INVALID;
	aArray.o13 = OBJECT_INVALID;
	aArray.o14 = OBJECT_INVALID;
	aArray.o15 = OBJECT_INVALID;
	aArray.o16 = OBJECT_INVALID;
	aArray.o17 = OBJECT_INVALID;
	aArray.o18 = OBJECT_INVALID;
	aArray.o19 = OBJECT_INVALID;
	aArray.o20 = OBJECT_INVALID;
	aArray.o21 = OBJECT_INVALID;
	aArray.o22 = OBJECT_INVALID;
	aArray.o23 = OBJECT_INVALID;
	aArray.o24 = OBJECT_INVALID;
	aArray.o25 = OBJECT_INVALID;
	aArray.o26 = OBJECT_INVALID;
	aArray.o27 = OBJECT_INVALID;
	aArray.o28 = OBJECT_INVALID;
	aArray.o29 = OBJECT_INVALID;
	
	return aArray;
}

struct Box_Array Box_ArrayPut(struct Box_Array aArray, object element, int index) {
	
	if (index == 0)
		aArray.o0 = element;
	else if (index == 1)
		aArray.o1 = element;
	else if (index == 2)
		aArray.o2 = element;
	else if (index == 3)
		aArray.o3 = element;
	else if (index == 4)
		aArray.o4 = element;
	else if (index == 5)
		aArray.o5 = element;
	else if (index == 6)
		aArray.o6 = element;
	else if (index == 7)
		aArray.o7 = element;
	else if (index == 8)
		aArray.o8 = element;
	else if (index == 9)
		aArray.o9 = element;
	else if (index == 10)
		aArray.o10 = element;
	else if (index == 11)
		aArray.o11 = element;
	else if (index == 12)
		aArray.o12 = element;
	else if (index == 13)
		aArray.o13 = element;
	else if (index == 14)
		aArray.o14 = element;
	else if (index == 15)
		aArray.o15 = element;
	else if (index == 16)
		aArray.o16 = element;
	else if (index == 17)
		aArray.o17 = element;
	else if (index == 18)
		aArray.o18 = element;
	else if (index == 19)
		aArray.o19 = element;
	else if (index == 20)
		aArray.o20 = element;
	else if (index == 21)
		aArray.o21 = element;
	else if (index == 22)
		aArray.o22 = element;
	else if (index == 23)
		aArray.o23 = element;
	else if (index == 24)
		aArray.o24 = element;
	else if (index == 25)
		aArray.o25 = element;
	else if (index == 26)
		aArray.o26 = element;
	else if (index == 27)
		aArray.o27 = element;
	else if (index == 28)
		aArray.o28 = element;
	else if (index == 29)
		aArray.o29 = element;
	
	return aArray;
}

struct Box_Array Box_ArrayAppend(struct Box_Array aArray, object element) {
	
	if (aArray.size < 30) {
		aArray = Box_ArrayPut(aArray, element, aArray.size);
		aArray.size = aArray.size + 1;
	}
	
	return aArray;
}

int Box_ArraySize(struct Box_Array aArray) {
	
	return aArray.size;
}

object Box_ArrayGet(struct Box_Array aArray, int index) {
	
	if (index == 0)
		return aArray.o0;
	else if (index == 1)
		return aArray.o1;
	else if (index == 2)
		return aArray.o2;
	else if (index == 3)
		return aArray.o3;
	else if (index == 4)
		return aArray.o4;
	else if (index == 5)
		return aArray.o5;
	else if (index == 6)
		return aArray.o6;
	else if (index == 7)
		return aArray.o7;
	else if (index == 8)
		return aArray.o8;
	else if (index == 9)
		return aArray.o9;
	else if (index == 10)
		return aArray.o10;
	else if (index == 11)
		return aArray.o11;
	else if (index == 12)
		return aArray.o12;
	else if (index == 13)
		return aArray.o13;
	else if (index == 14)
		return aArray.o14;
	else if (index == 15)
		return aArray.o15;
	else if (index == 16)
		return aArray.o16;
	else if (index == 17)
		return aArray.o17;
	else if (index == 18)
		return aArray.o18;
	else if (index == 19)
		return aArray.o19;
	else if (index == 20)
		return aArray.o20;
	else if (index == 21)
		return aArray.o21;
	else if (index == 22)
		return aArray.o22;
	else if (index == 23)
		return aArray.o23;
	else if (index == 24)
		return aArray.o24;
	else if (index == 25)
		return aArray.o25;
	else if (index == 26)
		return aArray.o26;
	else if (index == 27)
		return aArray.o27;
	else if (index == 28)
		return aArray.o28;
	else if (index == 29)
		return aArray.o29;
	else
		return OBJECT_INVALID;
}// box_inc_target

// Written by Box
// Include file for targeting

//
int Box_IsDroid(object oTarget) {
	
	if (GetRacialType(oTarget) == RACIAL_TYPE_DROID) {
		return TRUE;
	}
	else {
		return FALSE;
	}
}

//
int Box_IsHuman(object oTarget) {
	
	if (Box_IsDroid(oTarget)) {
		return FALSE;
	}
	else {
		return TRUE;
	}
}

//
int Box_IsJedi(object oTarget) {
	
	// TODO
	return FALSE;
}

struct Box_Array Box_GetEnemyTargets(object oUser, location lTarget, int spellShape, float radius) {
	
	// We'll fill up this array with all targets found
	struct Box_Array aTargets = Box_CreateArray();
	
	// 
	object oTarget = GetFirstObjectInShape(spellShape, radius, lTarget, FALSE, OBJECT_TYPE_CREATURE);
	while (GetIsObjectValid(oTarget)) {
		
		// We'll add this object if 
		if (GetIsEnemy(oTarget, oUser)) {
			aTargets = Box_ArrayAppend(aTargets, oTarget);
		}
		
		//
		oTarget = GetNextObjectInShape(spellShape, radius, lTarget, FALSE, OBJECT_TYPE_CREATURE);
	}
	
	return aTargets;
}

// 
struct Box_Array Box_GetHumanEnemyTargets(object oUser, location lTarget, int spellShape, float radius) {
	
	// We'll fill up this array with all targets found
	struct Box_Array aTargets = Box_CreateArray();
	
	// 
	object oTarget = GetFirstObjectInShape(spellShape, radius, lTarget, FALSE, OBJECT_TYPE_CREATURE);
	while (GetIsObjectValid(oTarget)) {
		
		// We'll add this object if 
		if (GetIsEnemy(oTarget, oUser) && (GetRacialType(oTarget) != RACIAL_TYPE_DROID)) {
			aTargets = Box_ArrayAppend(aTargets, oTarget);
		}
		
		//
		oTarget = GetNextObjectInShape(spellShape, radius, lTarget, FALSE, OBJECT_TYPE_CREATURE);
	}
	
	return aTargets;
}

// 
struct Box_Array Box_GetDroidEnemyTargets(object oUser, location lTarget, int spellShape, float radius) {
	
	// We'll fill up this array with all targets found
	struct Box_Array aTargets = Box_CreateArray();
	
	// 
	object oTarget = GetFirstObjectInShape(spellShape, radius, lTarget, FALSE, OBJECT_TYPE_CREATURE);
	while (GetIsObjectValid(oTarget)) {
		
		// We'll add this object if 
		if (GetIsEnemy(oTarget, oUser) && (GetRacialType(oTarget) == RACIAL_TYPE_DROID)) {
			aTargets = Box_ArrayAppend(aTargets, oTarget);
		}
		
		//
		oTarget = GetNextObjectInShape(spellShape, radius, lTarget, FALSE, OBJECT_TYPE_CREATURE);
	}
	
	return aTargets;
}

//
struct Box_Array Box_GetPartyTargets(object oUser) {
	
	//
	location lUser = GetLocation(oUser);
	float radius = 30.0;
	
	// We'll fill up this array with all targets found
	struct Box_Array aTargets = Box_CreateArray();
	
	// 
	object oTarget = GetFirstObjectInShape(SHAPE_SPHERE, radius, lUser, FALSE, OBJECT_TYPE_CREATURE);
	while (GetIsObjectValid(oTarget)) {
		
		// We'll add this object if 
		if (IsObjectPartyMember(oTarget)) {
			aTargets = Box_ArrayAppend(aTargets, oTarget);
		}
		
		//
		oTarget = GetNextObjectInShape(SHAPE_SPHERE, radius, lUser, FALSE, OBJECT_TYPE_CREATURE);
	}
	
	return aTargets;
}


// 
struct Box_Array Box_GetForceChainTargets(object oUser) {
	
	//
	location lUser = GetLocation(oUser);
	float radius = 30.0;
	
	//
	struct Box_Array aTargets = Box_CreateArray();
	aTargets = Box_ArrayAppend(aTargets, oUser);
	
	//
	if (GetHasFeat(FEAT_FORCE_CHAIN, oUser)) {
	
		// 
		object oTarget = GetFirstObjectInShape(SHAPE_SPHERE, radius, lUser, FALSE, OBJECT_TYPE_CREATURE);
		while (GetIsObjectValid(oTarget)) {
			
			// We'll add this object if 
			if (GetHasFeat(FEAT_FORCE_CHAIN, oTarget) && (oTarget != oUser)) {
				aTargets = Box_ArrayAppend(aTargets, oTarget);
			}
			
			//
			oTarget = GetNextObjectInShape(SHAPE_SPHERE, radius, lUser, FALSE, OBJECT_TYPE_CREATURE);
		}
	}
	
	return aTargets;
}



// box_inc_forcefeat

// Written by Box
// Include file for force feat constants

int FORCE_FEAT_1 = 500;
int FORCE_FEAT_2 = 500;
int FORCE_FEAT_3 = 500;
int FEAT_FORCE_SEVER = 2; // This should be advanced guard stance, an unused feat// box_inc_poison

// Written by Box
// Include file for poison constants

// THIS IS FOR TESTING PURPOSES ONLY, DO NOT EDIT THIS FILE

int POISON_MINE_1 = 500;
int POISON_MINE_2 = 500;
int POISON_MINE_3 = 500;
int POISON_MINE_4 = 500;
int POISON_MINE_5 = 500;
int GAS_GRENADE = 500;
int RADIATION_ROCKET = 500;
// box_inc_reload

// Written by Box
// Include file for managing auxilary weapon and grenade reloads

string TEST_ENERGY_WEAPON = "ts_eweap1";
string TEST_ENERGY_WEAPON_TRIGGER = "ts_etrig1";
string TEST_GRENADE_LAUNCHER = "ts_grenla1";
string TEST_GRENADE_LAUNCHER_ITEM = "ts_gritem1";


int WEAPON_SLOT = INVENTORY_SLOT_HEAD;
int ENERGY_SLOT_RIGHT = INVENTORY_SLOT_CWEAPON_R;
int ENERGY_SLOT_LEFT = INVENTORY_SLOT_CWEAPON_L;
int ENERGY_SLOT_HUMAN = INVENTORY_SLOT_CWEAPON_R;
int ENERGY_SLOT_HEAVY = INVENTORY_SLOT_CWEAPON_R;
int ENERGY_SLOT_HEAVY_EXTRA = INVENTORY_SLOT_CWEAPON_B;

int WEAPON_CHECK_SLOT = INVENTORY_SLOT_RIGHTARM;
int ENERGY_CHECK_SLOT_RIGHT = INVENTORY_SLOT_RIGHTARM;
int ENERGY_CHECK_SLOT_LEFT = INVENTORY_SLOT_LEFTARM;
int ENERGY_CHECK_SLOT_HUMAN = INVENTORY_SLOT_RIGHTARM;
int ENERGY_CHECK_SLOT_HEAVY = INVENTORY_SLOT_RIGHTARM;

int HEARTBEAT_LOCAL_NUMBER = 26;
int WEAPON_LOCAL_NUMBER = 27;
int ENERGY_LOCAL_NUMBER = 28;

int WEAPON_PERIOD = 2;
int WEAPON_REGEN = 2;
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
	
	object oWeapon = GetItemInSlot(slot, oUser);
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
		return GetTag(GetItemInSlot(WEAPON_CHECK_SLOT, oUser));
	else
		return "";
}
string Box_GetEnergyRightTag(object oUser) {
	if (Box_HasEnergyRight(oUser))
		return GetTag(GetItemInSlot(ENERGY_CHECK_SLOT_RIGHT, oUser));
	else
		return "";
}
string Box_GetEnergyLeftTag(object oUser) {
	if (Box_HasEnergyLeft(oUser))
		return GetTag(GetItemInSlot(ENERGY_CHECK_SLOT_LEFT, oUser));
	else
		return "";
}
string Box_GetEnergyHumanTag(object oUser) {
	if (Box_HasEnergyHuman(oUser))
		return GetTag(GetItemInSlot(ENERGY_CHECK_SLOT_HUMAN, oUser));
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
	if (value == WEAPON_MAX)
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

void Box_RemoveItem(object oUser, int slot) {
	object oItem = GetItemInSlot(slot, oUser);
	DestroyObject(oItem);
}
void Box_RemoveWeapon(object oUser) {
	Box_RemoveItem(oUser, WEAPON_SLOT);
}

void Box_AttachWithTag(object oUser, int slot, string tag) {
	
	// Check if we are already equipped
	if (GetIsObjectValid(GetItemInSlot(slot, oUser))) {
		
		string oldTag = GetTag(GetItemInSlot(slot, oUser));
		// If it's the same skip
		if (oldTag == tag)
			return;
		// Otherwise remove the item
		else
			Box_RemoveItem(oUser, slot);
	}
	
	object oItem = CreateItemOnObject(tag, oUser, 1, TRUE);
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
	
	if (Box_CheckEnergy(oUser, cost1))
		Box_AttachItem(oUser, ENERGY_SLOT_HEAVY, ENERGY_CHECK_SLOT_HEAVY);
	else
		Box_RemoveItem(oUser, ENERGY_SLOT_HEAVY);
	
	if (Box_CheckEnergy(oUser, cost2))
		Box_AttachItem(oUser, ENERGY_SLOT_HEAVY_EXTRA, ENERGY_CHECK_SLOT_HEAVY);
	else
		Box_RemoveItem(oUser, ENERGY_SLOT_HEAVY_EXTRA);
}
void Box_RecalculateEnergyEquip(object oUser) {
	
	if (Box_HasEnergyLeft(oUser)) {
		Box_RecalculateEnergyEquipSlot(oUser, ENERGY_CHECK_SLOT_LEFT, ENERGY_SLOT_LEFT);
	}
	if (Box_HasEnergyRight(oUser)) {
		Box_RecalculateEnergyEquipSlot(oUser, ENERGY_CHECK_SLOT_RIGHT, ENERGY_SLOT_RIGHT);
	}
	if (Box_HasEnergyHuman(oUser)) {
		Box_RecalculateEnergyEquipSlot(oUser, ENERGY_CHECK_SLOT_HUMAN, ENERGY_CHECK_SLOT_HUMAN);
	}
	if (Box_HasEnergyHeavy(oUser)) {
		Box_RecalculateEnergyEquipHeavy(oUser);
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






// box_inc_save

// Written by Box
// Include file for saving throws and damage

int SAVE_FAILED = 0;
int SAVED = 1;
int IMMUNE = 2;


//
int Box_DealDamage(object oTarget, int damage, int damageType) {
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(damage, damageType), oTarget);
	return damage;
}

//
void Box_DealDamageAction(object oTarget, int damage, int damageType) {
	
	Box_DealDamage(oTarget, damage, damageType);
}

//
void Box_DealDamageIterative(object oTarget, int damage, int damageType, float duration) {
	
	float threshhold = 1.5;
	
	if (duration > threshhold) {
		
		int damageNow = FloatToInt((threshhold / duration) * damage);
		Box_DealDamage(oTarget, damageNow, damageType);
		DelayCommand(threshhold, Box_DealDamageIterative(oTarget, damage - damageNow, damageType, duration - threshhold));
	}
	else {
		Box_DealDamage(oTarget, damage, damageType);
	}
}

//
int Box_CalculateBaseSave(object oTarget, int save) {
	
	//
	if (save == SAVING_THROW_FORT) {
		return GetFortitudeSavingThrow(oTarget);
	}
	//
	else if (save == SAVING_THROW_REFLEX) {
		return GetReflexSavingThrow(oTarget);
	}
	//
	else if (save == SAVING_THROW_WILL) {
		return GetWillSavingThrow(oTarget);
	}
	//
	else {
		return 0;
	}
}

//
int Box_GetBestSave(object oTarget, int save1, int save2) {
	
	//
	if (Box_CalculateBaseSave(oTarget, save1) > Box_CalculateBaseSave(oTarget, save2)) {
		return save1;
	}
	//
	else {
		return save2;
	}
}

//
int Box_RollSavingThrow(object oTarget, int dc, int save, int saveType) {
	
	int saveResult;
	
	//
	if (save == SAVING_THROW_FORT) {
		saveResult = FortitudeSave(oTarget, dc, saveType);
	}
	//
	else if (save == SAVING_THROW_REFLEX) {
		saveResult = ReflexSave(oTarget, dc, saveType);
	}
	//
	else if (save == SAVING_THROW_WILL) {
		saveResult = WillSave(oTarget, dc, saveType);
	}
	//
	else {
		saveResult = SAVE_FAILED;
	}
	
	return saveResult;
}// box_inc_shieldindex

// Written by Box
// Include file for energy shield row indexes

int MINING_SHIELD = 500;
int ENERGY_SHIELD = 500;
int ENVIRONMENT_SHIELD = 500;
int SITH_SHIELD = 500;
int MANDALORIAN_SHIELD = 500;
int ECHANI_SHIELD = 500;
int UNIVERSALH_SHIELD = 500;
int ZABRAK_SHIELD = 500;

int DROID_SHIELD = 500;
int DROID_ENVIRONMENT_SHIELD = 500;
int RADIANT_SHIELD = 500;
int ADVANCED_SHIELD = 500;
int UNIVERSAL_SHIELD = 500;

int ENEMY_MINING_SHIELD = 500;
// box_inc_weapon

// Written by Box
// Include file for common weapon patterns

// 
int Box_DamageWeapon(object oTarget, int dc, int damage, int saveDamage,
		int damageType, int save, int saveType) {
	
	// Damage
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	if (saveResult == SAVE_FAILED)
		Box_DealDamage(oTarget, damage, damageType);
	else if (saveResult == SAVED)
		Box_DealDamage(oTarget, saveDamage, damageType);
	
	return saveResult;
}

// 
int Box_EffectWeapon(object oTarget, int dc, effect eEffect, int save, int saveType, float duration) {
	
	// Effect
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	if (saveResult == SAVE_FAILED)
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eEffect, oTarget, duration);
		
	return saveResult;
}

//
int Box_DamageAndEffectWeapon(object oTarget, int dc, int damage, int saveDamage,
		int damageType, effect eEffect, int save, int saveType, float duration) {
	
	// Damage/Effects
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	if (saveResult == SAVE_FAILED) {	
		Box_DealDamage(oTarget, damage, damageType);
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eEffect, oTarget, duration);
	}
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}

//
int Box_PiercingWeapon(object oTarget, int dc, int damage, int saveDamage, int save) {
	
	// Properties
	int damageType = DAMAGE_TYPE_PIERCING;
	int saveType = SAVING_THROW_TYPE_NONE;
	
	// Damage
	return Box_DamageWeapon(oTarget, dc, damage, saveDamage, damageType, save, saveType);
}

//
int Box_PlasmaWeapon(object oTarget, int dc, int damage, int saveDamage, int save) {
	
	// Properties
	int damageType = DAMAGE_TYPE_FIRE;
	int saveType = SAVING_THROW_TYPE_FIRE;
	
	// Damage
	return Box_DamageWeapon(oTarget, dc, damage, saveDamage, damageType, save, saveType);
}

//
int Box_FlashWeapon(object oTarget, int dc, int save, float duration) {
	
	// Properties
	effect eStun = EffectStunned();
	int saveType = SAVING_THROW_TYPE_NONE;
	
	// Damage
	return Box_EffectWeapon(oTarget, dc, eStun, save, saveType, duration);
}

//
int Box_StunWeapon(object oTarget, int dc, int save, float duration) {
	
	// Properties
	effect eStun = EffectStunned();
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	// Damage
	return Box_EffectWeapon(oTarget, dc, eStun, save, saveType, duration);
}

//
int Box_SleepWeapon(object oTarget, int dc, int save, float duration) {
	
	// Properties
	effect eSleep = EffectSleep();
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	// Damage
	return Box_EffectWeapon(oTarget, dc, eSleep, save, saveType, duration);
}

//
int Box_ConfuseWeapon(object oTarget, int dc, int save, float duration) {
	
	// Properties
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	effect eConfuse = EffectFactionModifier(STANDARD_FACTION_INSANE);
	
	// Damage
	return Box_EffectWeapon(oTarget, dc, eConfuse, save, saveType, duration);
}

//
int Box_IonWeapon(object oTarget, int dc, int damage, int saveDamage, int droidDamage,
		int save, float duration) {
	
	// Properties
	int damageType = DAMAGE_TYPE_ION;
	int saveType = SAVING_THROW_TYPE_ION;
	effect eStun = EffectDroidStun();
	
	// Damage/Effects
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	if (saveResult == SAVE_FAILED) {
		
		// Droid
		if (Box_IsDroid(oTarget)) {
			Box_DealDamage(oTarget, droidDamage, damageType);
			ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration);
		}
		// Human
		else {
			Box_DealDamage(oTarget, damage, damageType);
		}
	}
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}

//
int Box_ColdWeapon(object oTarget, int dc, int damage, int saveDamage, int save, float duration) {
	
	// Properties
	int damageType = DAMAGE_TYPE_COLD;
	int saveType = SAVING_THROW_TYPE_COLD;
	effect eStun;
	
	if (Box_IsDroid(oTarget))
		eStun = EffectDroidStun();
	else
		eStun = EffectParalyze();
	
	// Damage/Effects
	return Box_DamageAndEffectWeapon(oTarget, dc, damage, saveDamage, damageType, eStun,
			save, saveType, duration);
}

//
int Box_FireWeapon(object oTarget, int dc, int damage, int saveDamage, int save, float duration) {
	
	// Properties
	int damageType = DAMAGE_TYPE_FIRE;
	int saveType = SAVING_THROW_TYPE_FIRE;
	effect eHorror = EffectHorrified();
	
	// Damage/Effects
	return Box_DamageAndEffectWeapon(oTarget, dc, damage, saveDamage, damageType, eHorror,
			save, saveType, duration);
}

//
int Box_ShockWeapon(object oTarget, int dc, int damage, int saveDamage, int save, float duration) {
	
	// Properties
	int damageType = DAMAGE_TYPE_ELECTRICAL;
	int saveType = SAVING_THROW_TYPE_ELECTRICAL;
	effect eStun;
	
	if (Box_IsDroid(oTarget))
		eStun = EffectDroidStun();
	else
		eStun = EffectStunned();
	
	// Damage/Effects
	return Box_DamageAndEffectWeapon(oTarget, dc, damage, saveDamage, damageType, eStun,
			save, saveType, duration);
}

//
int Box_SonicWeapon(object oTarget, int dc, int damage, int saveDamage, int save, int abilities, float duration) {
	
	// Properties
	int damageType = DAMAGE_TYPE_SONIC;
	int saveType = SAVING_THROW_TYPE_SONIC;
	
	effect eSonic = EffectAbilityDecrease(ABILITY_INTELLIGENCE, abilities);
	eSonic = EffectLinkEffects(eSonic, EffectAbilityDecrease(ABILITY_WISDOM, abilities));
	eSonic = EffectLinkEffects(eSonic, EffectAbilityDecrease(ABILITY_CHARISMA, abilities));
	
	// Damage/Effects
	return Box_DamageAndEffectWeapon(oTarget, dc, damage, saveDamage, damageType, eSonic,
			save, saveType, duration);
}

// 
int Box_PoisonWeapon(object oTarget, int poison) {
	
	// I think this is the best we can do
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectPoison(poison), oTarget);
	return SAVE_FAILED;
}

//
int Box_BurnWeapon(object oTarget, int dc, int damage, int saveDamage, int save, int abilities, float duration) {
	
	// Properties
	int damageType = DAMAGE_TYPE_FIRE;
	int saveType = SAVING_THROW_TYPE_FIRE;
	effect eBurn = EffectAbilityDecrease(ABILITY_CONSTITUTION, abilities);
	
	// Damage/Effects
	return Box_DamageAndEffectWeapon(oTarget, dc, damage, saveDamage, damageType, eBurn,
			save, saveType, duration);
}

//
int Box_DetonatorWeapon(object oTarget, int dc, int damage, int saveDamage, int save) {
	
	// Properties
	int damageType = DAMAGE_TYPE_BLASTER;
	int saveType = SAVING_THROW_TYPE_NONE;
	float duration = 0.1;
	effect ePush = EffectForcePushTargeted(GetSpellTargetLocation());
	
	// Damage/Effects
	return Box_DamageAndEffectWeapon(oTarget, dc, damage, saveDamage, damageType, ePush,
			save, saveType, duration);
}



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

int HIDE_SLOT = INVENTORY_SLOT_CARMOUR;


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
		level = level - 4;
	}
	else if (enemyStrength == ENEMY_STRENGTH_REGULAR) {
		level = level - 2;
	}
	else if (enemyStrength == ENEMY_STRENGTH_STRONG) {
		level = level;
	}
	else if (enemyStrength == ENEMY_STRENGTH_BOSS) {
		level = level + 2;
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

void Box_EquipHide(object oUser, int hideType, int enemyStrength) {
	string hideTag = Box_GetHideTemplate(hideType, enemyStrength);
	object oItem = CreateItemOnObject(hideTag, oUser, 1, TRUE);
	ActionEquipItem(oItem, HIDE_SLOT, TRUE);
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



// box_inc_force

// Written by Box
// Include file for force related scripts

// TODO
int NUMBER_OF_CLASSES = 17;
int CLASS_JEDI_CONSULAR = CLASS_TYPE_JEDICONSULAR;
int CLASS_JEDI_SENTINEL = CLASS_TYPE_JEDISENTINEL;
int CLASS_JEDI_GUARDIAN = CLASS_TYPE_JEDIGUARDIAN;
int CLASS_JEDI_PRESTIGE_CONSULAR = CLASS_TYPE_JEDIMASTER;
int CLASS_JEDI_PRESTIGE_SENTINEL = CLASS_TYPE_JEDIWATCHMAN;
int CLASS_JEDI_PRESTIGE_GUARDIAN = CLASS_TYPE_JEDIWEAPONMASTER;
int CLASS_KRIEA = CLASS_TYPE_SITHLORD;
int CLASS_JEDI_APPRENTICE = CLASS_TYPE_SITHASSASSIN;
int CLASS_JEDI_APPRENTICE_STRONG = CLASS_TYPE_SITHMARAUDER;

int POWER_TYPE_UNIVERSAL = 1;
int POWER_TYPE_LIGHT = 2;
int POWER_TYPE_DARK = 3;

//
int Box_GetForceByClassLevel(int class, int level, int totalLevel) {
	
	int force = 0;
	
	//
	if ((class == CLASS_JEDI_CONSULAR) ||
		(class == CLASS_JEDI_PRESTIGE_CONSULAR) ||
		(class == CLASS_KRIEA)) {
		
		if (class == CLASS_JEDI_PRESTIGE_CONSULAR) {
			level = level + 15;
			force = force - 11;
		}
		
		if (level >= 1)
			force += 1;
		if (level >= 2)
			force += 1;
		if (level >= 4)
			force += 1;
		if (level >= 5)
			force += 1;
		if (level >= 6)
			force += 1;
		if (level >= 8)
			force += 1;
		if (level >= 9)
			force += 1;
		if (level >= 10)
			force += 1;
		if (level >= 12)
			force += 1;
		if (level >= 13)
			force += 1;
		if (level >= 14)
			force += 1;
		if (level >= 16)
			force += 1;
		if (level >= 17)
			force += 1;
		if (level >= 18)
			force += 1;
		if (level >= 20)
			force += 1;
		if (level >= 21)
			force += 1;
		if (level >= 22)
			force += 1;
		if (level >= 24)
			force += 1;
		if (level >= 25)
			force += 1;
		if (level >= 26)
			force += 1;
		if (level >= 28)
			force += 1;
		if (level >= 29)
			force += 1;
		if (level >= 30)
			force += 1;
	}
	//
	else if ((class == CLASS_JEDI_GUARDIAN) ||
		(class == CLASS_JEDI_SENTINEL) ||
		(class == CLASS_JEDI_PRESTIGE_GUARDIAN) ||
		(class == CLASS_JEDI_PRESTIGE_SENTINEL)) {
		
		if ((class == CLASS_JEDI_PRESTIGE_GUARDIAN) ||
			(class == CLASS_JEDI_PRESTIGE_SENTINEL)) {
			level = level + 15;
			force = force - 7;
		}
		
		if (level >= 2)
			force += 1;
		if (level >= 4)
			force += 1;
		if (level >= 6)
			force += 1;
		if (level >= 8)
			force += 1;
		if (level >= 10)
			force += 1;
		if (level >= 12)
			force += 1;
		if (level >= 14)
			force += 1;
		if (level >= 16)
			force += 1;
		if (level >= 18)
			force += 1;
		if (level >= 20)
			force += 1;
		if (level >= 22)
			force += 1;
		if (level >= 24)
			force += 1;
		if (level >= 26)
			force += 1;
		if (level >= 28)
			force += 1;
		if (level >= 30)
			force += 1;
	}
	//
	else if (class == CLASS_JEDI_APPRENTICE ||
			class == CLASS_JEDI_APPRENTICE_STRONG) {
		
		int min1 = 1 + level;
		int min2 = Box_GetForceByClassLevel(CLASS_JEDI_SENTINEL, totalLevel, 0);
		
		if (min1 < min2) {
			force += min1;
		}
		else {
			force += min2;
		}		
	}
	else {
		//
	}
	
	return force;
}

//
int Box_ModifyForceByAlignment(object oUser, int force, int powerAlignment) {
	
	//
	int userAlignment = GetGoodEvilValue(oUser);
	
	//
	int darkSidePowerCutoff = 55 + 5*GetAbilityModifier(ABILITY_CHARISMA, oUser);
	int lightSidePowerCutoff = 45 - 5*GetAbilityModifier(ABILITY_CHARISMA, oUser);
	
	//
	if ((userAlignment > darkSidePowerCutoff) && (powerAlignment == POWER_TYPE_DARK)) {
		
		//
		int alignmentDisparity = userAlignment - darkSidePowerCutoff;
		int forcePenalty = alignmentDisparity / 5;
		
		//
		force -= forcePenalty;
	}
	//
	else if ((userAlignment < lightSidePowerCutoff) && (powerAlignment == POWER_TYPE_LIGHT)) {
		
		//
		int alignmentDisparity = lightSidePowerCutoff - userAlignment;
		int forcePenalty = alignmentDisparity / 5;
		
		//
		force -= forcePenalty;
	}
	
	return force;
}

//
int Box_GetBaseForce(object oUser, int powerAlignment) {
	
	int force = GetAbilityModifier(ABILITY_CHARISMA, oUser);
	int totalLevel = GetHitDice(oUser);
	
	int class;
	for (class = 0; class < NUMBER_OF_CLASSES; class++) {
		int level = GetLevelByClass(class, oUser);
		force += Box_GetForceByClassLevel(class, level, totalLevel);
	}
	
	force = Box_ModifyForceByAlignment(oUser, force, powerAlignment);
	
	if (GetFeatAcquired(FEAT_FORCE_SEVER, oUser))
		force = 0;
	
	return force;
}

int Box_GetCastForce(object oUser, int powerAlignment) {
	
	int force = Box_GetBaseForce(oUser, powerAlignment);
	
	if (GetFeatAcquired(FORCE_FEAT_1, oUser))
		force++;
	if (GetFeatAcquired(FORCE_FEAT_2, oUser))
		force++;
	if (GetFeatAcquired(FORCE_FEAT_3, oUser))
		force++;
	
	return force;
}

int Box_GetSpellForce(object oUser, int powerAlignment, int castSuccess) {
	
	int force = Box_GetBaseForce(oUser, powerAlignment);
	
	if (castSuccess)
		return force;
	else
		return (force + 1) / 2;
}

// 
int Box_RollCastDC(object oUser, int castDC, int powerAlignment) {
	
	int force = Box_GetCastForce(oUser, powerAlignment);
	
	if (force + d8() >= castDC) {
		return TRUE;
	}
	else {
		return FALSE;
	}
}

// 
int Box_CheckSpellSuccess(object oUser, int castDC, int powerAlignment) {
	
	int force = Box_GetBaseForce(oUser, powerAlignment);
	
	if (force <= 0) {
		return FALSE;
	}
	// else if (force + d10() >= castDC) {
		// return TRUE;
	// }
	// else {
		// return FALSE;
	// }
	else {
		return TRUE;
	}
}

//
int Box_GetPowerDC(object oUser, int powerAlignment) {
	
	return Box_GetBaseForce(oUser, powerAlignment) + 10;
}

//
int Box_AdjustForceDamage(object oUser, int damage) {
	
	return damage;
}

//
float Box_AdjustForceDuration(object oUser, float duration) {
	
	return duration;
} 

//
int Box_AdjustForceDC(object oUser, int dc) {
	
	return dc;
}

//
int Box_DealForceDamage(object oUser, object oTarget, int damage, int damageType) {
	
	damage = Box_AdjustForceDamage(oUser, damage); 
	return Box_DealDamage(oTarget, damage, damageType);
}

//
void Box_DealForceDamageIterative(object oUser, object oTarget, int damage, int damageType, float duration) {
	
	damage = Box_AdjustForceDamage(oUser, damage); 
	Box_DealDamageIterative(oTarget, damage, damageType, duration);
}

//
void Box_DealForceDamageAction(object oUser, object oTarget, int damage, int damageType) {
	
	damage = Box_AdjustForceDamage(oUser, damage); 
	Box_DealDamageAction(oTarget, damage, damageType);
}

//
int Box_DealForcePointDamage(object oUser, object oTarget, int damage) {
	
	damage = Box_AdjustForceDamage(oUser, damage); 
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceDrain(damage), oTarget);
	return damage;
}

//
float Box_PerformForceEffect(object oUser, object oTarget, effect eEffect, float duration) {
	
	duration = Box_AdjustForceDuration(oUser, duration);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eEffect, oTarget, duration);
	return duration;
}

//
int Box_RollForceSavingThrow(object oUser, object oTarget, int powerDC, int save, int saveType) {
	
	// TODO: Form etc Adjustments
	return Box_RollSavingThrow(oTarget, powerDC, save, saveType);
}

// box_inc_fuelweap

// Written by Box
// Include file for fuel based weapons


int Box_PeragusBurner1(object oTarget) {
	return 0;
}

int Box_PeragusBurner2(object oTarget) {
	return 0;
}

int Box_Flamethrower(object oTarget) {
	return 0;
}

int Box_Flamethrower2(object oTarget) {
	return 0;
}

int Box_PlasmaFlamethrower(object oTarget) {
	return 0;
}

int Box_FireSuppression(object oTarget) {
	return 0;
}

int Box_Carbonite1(object oTarget) {
	return 0;
}

int Box_Carbonite2(object oTarget) {
	return 0;
}

int Box_PoisonDart(object oTarget) {
	return 0;
}

int Box_SleepDart(object oTarget) {
	return 0;
}

int Box_ParalysisDart(object oTarget) {
	return 0;
}

int Box_KyberDart(object oTarget) {
	return 0;
}

int Box_GrapplingHook(object oTarget) {
	return 0;
}

int Box_IonBlaster(object oTarget) {
	return 0;
}

int Box_PlasmaBlaster(object oTarget) {
	return 0;
}

int Box_DisruptorBlaster(object oTarget) {
	return 0;
}







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










// box_inc_healing

// Written by Box
// Include file for healing related scripts

void Box_RemoveEffects(int effectType, object oTarget)
{
    effect eEffect = GetFirstEffect(oTarget);
	
    while (GetIsEffectValid(eEffect)) {
		
		if (GetEffectType(eEffect) == effectType) {
			RemoveEffect(oTarget, eEffect);
		}
		
        eEffect = GetNextEffect(oTarget);
    }
}

void Box_Medpac(object oUser, int regen, float duration) {
	
	effect eHeal = EffectRegenerate(regen, 2.0f);
	effect eStun = EffectSleep(); // I cannot remember what this is supposed to be
	
	effect eMedpac = EffectLinkEffects(eHeal, eStun);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eMedpac, oUser, duration);
}

void Box_RepairKit(object oUser, int regen, float duration) {
	
	effect eHeal = EffectRegenerate(regen, 2.0f);
	effect eStun = EffectDroidStun(); // I cannot remember what this is supposed to be
	
	effect eKit = EffectLinkEffects(eHeal, eStun);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eKit, oUser, duration);
}

void Box_QuickFix(object oUser, int heal, int penalty, float duration) {
	
	effect eHeal = EffectHeal(heal);
	effect eWeak = EffectAbilityDecrease(ABILITY_STRENGTH, penalty);
	eWeak = EffectLinkEffects(eWeak, EffectAbilityDecrease(ABILITY_DEXTERITY, penalty));
	eWeak = EffectLinkEffects(eWeak, EffectAbilityDecrease(ABILITY_WISDOM, penalty));
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, eHeal, oUser);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eWeak, oUser, 1.0f * duration);
}

void Box_AntidotePack(object oUser) {
	
	int duration = 8;
	
	effect eStun = EffectStunned(); // I cannot remember what this is supposed to be
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oUser, 1.0f * duration);
	
	Box_RemoveEffects(EFFECT_TYPE_POISON, oUser);
}

// 
void Box_Medpac1(object oUser) {
	Box_Medpac(oUser, 10, 8.0f);
}

// 
void Box_Medpac2(object oUser) {
	Box_Medpac(oUser, 20, 8.0f);
}

// 
void Box_Medpac3(object oUser) {
	Box_Medpac(oUser, 30, 8.0f);
}

// 
void Box_Medpac4(object oUser) {
	Box_Medpac(oUser, 40, 8.0f);
}

//
void Box_RepairKit1(object oUser) {
	Box_RepairKit(oUser, 10, 8.0f);
}

//
void Box_RepairKit2(object oUser) {
	Box_RepairKit(oUser, 20, 8.0f);
}

//
void Box_RepairKit3(object oUser) {
	Box_RepairKit(oUser, 30, 8.0f);
}

//
void Box_RepairKit4(object oUser) {
	Box_RepairKit(oUser, 30, 8.0f);
}

//
void Box_LifeSupport1(object oUser) {
	Box_QuickFix(oUser, 60, 4, 30.0f);
}

//
void Box_LifeSupport2(object oUser) {
	Box_QuickFix(oUser, 120, 4, 30.0f);
}

//
void Box_QuickKit1(object oUser) {
	Box_QuickFix(oUser, 60, 4, 30.0f);
}

//
void Box_QuickKit2(object oUser) {
	Box_QuickFix(oUser, 120, 4, 30.0f);
}





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







// box_inc_powers

// Written by Box
// Include file for force powers

//
void Box_SpeedPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 18.0 + 3.0*force;
	
	//
	effect eSpeed = EffectHaste();
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSpeed, oTarget, duration);
}

//
int Box_SweepPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d4(force);
	int damageType = DAMAGE_TYPE_BLUDGEONING;
	float duration = 3.0;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_NONE;
	
	effect eSweep = EffectKnockdown();
	
	
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eSweep, duration);
		DelayCommand(0.9, Box_DealForceDamageAction(oUser, oTarget, damage, damageType));
	}
	//
	else if (saveResult == SAVED)  {
		Box_DealForceDamage(oUser, oTarget, damage/3, damageType);
	}
	
	return saveResult;
}

//
int Box_PushPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d6(force);
	int damageType = DAMAGE_TYPE_BLUDGEONING;
	float duration = 0.5 + 0.1*force;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_NONE;
	
	//
	effect ePush = EffectForcePushed();
	ePush = EffectLinkEffects(ePush, EffectVisualEffect(VFX_IMP_FORCE_PUSH));
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, ePush, oTarget, duration);
		DelayCommand(duration + 0.3, Box_DealForceDamageAction(oUser, oTarget, damage, damageType));
	}
	//
	else if (saveResult == SAVED) {
		Box_DealForceDamage(oUser, oTarget, damage/2, damageType);
	}
	
	return saveResult;
}

//
int Box_IonizePower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d4(force);
	int damageType = DAMAGE_TYPE_ION;
	float duration = 9.0 + 0.25*force;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_ION;
	
	//
	effect eStun = EffectDroidStun();
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eStun, duration);
		Box_DealForceDamage(oUser, oTarget, damage, damageType);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealForceDamage(oUser, oTarget, damage/3, damageType);
	}
	
	return saveResult;
}

//
int Box_SleepPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 6.0 + 0.25*force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	//
	effect eSleep = EffectSleep();
	effect eDrowsy = EffectAbilityDecrease(ABILITY_DEXTERITY, 2);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eSleep, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_PerformForceEffect(oUser, oTarget, eDrowsy, 6.0);
	}
	
	return saveResult;
}

int Box_BlindPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 12.0 + 0.5*force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	//
	effect eBlind = EffectMissChance(25);
	eBlind = EffectLinkEffects(eBlind, EffectACDecrease(4, AC_DODGE_BONUS, AC_VS_DAMAGE_TYPE_ALL));
	effect eDistract = EffectACDecrease(2, AC_DODGE_BONUS, AC_VS_DAMAGE_TYPE_ALL);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eBlind, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_PerformForceEffect(oUser, oTarget, eDistract, 6.0);
	}
	
	return saveResult;
}

//
int Box_AfflictPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 18.0 + 2.0*force;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_POISON;
	
	//
	effect eSlow = EffectMovementSpeedDecrease(50);
	eSlow = EffectLinkEffects(eSlow, EffectAbilityDecrease(ABILITY_STRENGTH, 4));
	eSlow = EffectLinkEffects(eSlow, EffectAbilityDecrease(ABILITY_DEXTERITY, 4));
	effect eHalfSlow = EffectMovementSpeedDecrease(75);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eSlow, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_PerformForceEffect(oUser, oTarget, eHalfSlow, 9.0);
	}
	
	return saveResult;
}

//
void Box_ValorPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 9.0 + force;
	
	//
	effect eValor = EffectAttackIncrease(3, ATTACK_BONUS_MISC);
	eValor = EffectLinkEffects(eValor,  EffectACIncrease(3, AC_DODGE_BONUS, AC_VS_DAMAGE_TYPE_ALL));
	//eValor = EffectLinkEffects(eValor,  EffectBlasterDeflectIncrease(2));
	//eValor = EffectLinkEffects(eValor,  EffectSavingThrowIncrease(SAVING_THROW_ALL, 2, SAVING_THROW_TYPE_ALL));
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eValor, oTarget, duration);
}

//
void Box_FuryPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 9.0 + force;
	
	//
	effect eFury = EffectAttackIncrease(4, ATTACK_BONUS_MISC);
	eFury = EffectLinkEffects(eFury, EffectDamageIncrease(4, DAMAGE_TYPE_DARK_SIDE));
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eFury, oTarget, duration);
}

//
int Box_ThrowLightsaberPower(object oUser, object oTarget, int force) {
	
	//
	int damage = d6(force);
	int powerDC = 10 + force;
	int save = SAVING_THROW_REFLEX;
	int saveType = SAVING_THROW_TYPE_NONE;
	
	//
	effect eThrow = EffectLightsaberThrow(oTarget, OBJECT_INVALID, OBJECT_INVALID, damage);
	effect eMiss = EffectLightsaberThrow(oTarget, OBJECT_INVALID, OBJECT_INVALID, damage/3);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eThrow, oUser, 3.0);
	}
	//
	else if (saveResult == SAVED) {
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eMiss, oUser, 3.0);
	}
	
	return saveResult;
}

//
void Box_ShieldPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 10.0 + 2.0*force;
	
	//
	// TODO: Shield Effect
	//effect eShield = EffectDamageImmunity(
	
	//
	//ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oTarget, duration);
}

//
void Box_BodyPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 18.0 + 3.0*force;
	
	//
	effect eBody = EffectRegenerate(2, 3.0);
	eBody = EffectLinkEffects(eBody, EffectImmunity(IMMUNITY_TYPE_POISON));
	eBody = EffectLinkEffects(eBody, EffectImmunity(IMMUNITY_TYPE_ABILITY_DECREASE));
	
	// From box_inc_healing
	Box_RemoveEffects(EFFECT_TYPE_POISON, oUser);
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBody, oTarget, duration);
}

//
void Box_EnlightenPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 18.0 + 3.0*force;
	
	// Force Speed
	effect eSpeed = EffectHaste();
	// Force Body
	effect eBody = EffectRegenerate(2, 3.0);
	eBody = EffectLinkEffects(eBody, EffectImmunity(IMMUNITY_TYPE_POISON));
	eBody = EffectLinkEffects(eBody, EffectImmunity(IMMUNITY_TYPE_ABILITY_DECREASE));
	// Force Agility
	effect eBonus = EffectModifyAttacks(1);
	
	// TODO: Check whether user has appropriate spells
	int hasSpeed = 1;
	int hasBody = 1;
	int hasAgility = 1;
	
	if (hasSpeed) {
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSpeed, oTarget, duration);
	}
	if (hasSpeed) {
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBody, oTarget, duration);
		// From box_inc_healing
		Box_RemoveEffects(EFFECT_TYPE_POISON, oUser);
	}
	if (hasSpeed) {
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBonus, oTarget, duration);
	}
}

//
int Box_FearPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 9.0 + 0.25*force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_FEAR;
	
	//
	effect eFear = EffectHorrified();
	effect eRattle = EffectAttackIncrease(2, ATTACK_BONUS_MISC);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eFear, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_PerformForceEffect(oUser, oTarget, eRattle, 6.0);
	}
	
	return saveResult;
}

//
int Box_ParalysisPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 12.0 + 0.5*force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	//
	effect eParalyze = EffectParalyze();
	effect eSlow = EffectMovementSpeedDecrease(50);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eParalyze, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_PerformForceEffect(oUser, oTarget, eSlow, 6.0);
	}
	
	return saveResult;
}

//
int Box_ChokePower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d6(force);
	int damageType = DAMAGE_TYPE_DARK_SIDE;
	float duration = 9.0;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_DARK_SIDE;
	
	//
	effect eChoke = EffectChoke();
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
	
		Box_PerformForceEffect(oUser, oTarget, eChoke, duration);
		Box_DealForceDamageIterative(oUser, oTarget, damage, damageType, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealForceDamage(oUser, oTarget, damage/3, damageType);
	}
	
	return saveResult;
}

//
int Box_LevitatePower(object oUser, object oTarget, int force)  {
	
	//
	int powerDC = 10 + force;
	float duration = 9.0 + 0.25*force;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_NONE;
	
	//
	effect eLevitate = EffectWhirlWind();
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eLevitate, duration);
	}
	//
	else if (saveResult == SAVED) {
	}
	
	return saveResult;
}

//
int Box_SuppressPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d6(force);
	float duration = 18.0 + 2.0*force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_LIGHT_SIDE;
	
	//
	effect eSuppress = EffectAbilityDecrease(ABILITY_WISDOM, 6);
	eSuppress = EffectLinkEffects(eSuppress, EffectAbilityDecrease(ABILITY_CHARISMA, 6));
	effect eHalfSuppress = EffectAbilityDecrease(ABILITY_WISDOM, 4);
	eHalfSuppress = EffectLinkEffects(eHalfSuppress, EffectAbilityDecrease(ABILITY_CHARISMA, 4));
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealForcePointDamage(oUser, oTarget, damage);
		Box_PerformForceEffect(oUser, oTarget, eSuppress, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_PerformForceEffect(oUser, oTarget, eHalfSuppress, 9.0);
	}
	
	return saveResult;
}

//
int Box_ConfusionPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 12.0 + force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	//
	effect eConfuse = EffectFactionModifier(STANDARD_FACTION_FRIENDLY_1);
	//effect eDistract = EffectFactionModifier(STANDARD_FACTION_NEUTRAL);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eConfuse, duration);
	}
	//
	else if (saveResult == SAVED) {
		//ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDistract, oTarget, 9.0);
	}
	
	return saveResult;
}

//
int Box_MassConfusionPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 12.0 + force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	//
	// TODO: Figure out what faction to use here
	effect eConfuse = EffectFactionModifier(STANDARD_FACTION_INSANE);
	//effect eDistract = EffectFactionModifier(STANDARD_FACTION_NEUTRAL);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eConfuse, duration);
	}
	//
	else if (saveResult == SAVED) {
		//ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDistract, oTarget, 9.0);
	}
	
	return saveResult;
}

//
void Box_AgilityPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 18.0 + 3.0*force;
	
	//
	effect eBonus = EffectModifyAttacks(1);
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBonus, oTarget, duration);
}

//
int Box_LightPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_LIGHT_SIDE;
	int damageType = DAMAGE_TYPE_LIGHT_SIDE;
	
	int morality = GetGoodEvilValue(oTarget);
	effect eSleep = EffectSleep();
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		int damage = 0;
		int hitLeft = GetCurrentHitPoints(oTarget);
		float duration = 0.0;
		int i;
		for (i = 0; i < force; i++) {
			int evil = (100 - morality) / 5;
			int damageCalc = Random(evil) + 1;
			damageCalc = Box_AdjustForceDamage(oUser, damageCalc);
			
			if (damageCalc > hitLeft)
				duration = duration + (0.1f * damageCalc);
			else
				damage = damage + damageCalc;
			
			morality = morality + 1;
		}
		
		if (morality > 100)
			morality = 100;
		
		SetGoodEvilValue(oTarget, morality);
		
		if (damage > 0)
			Box_DealDamage(oTarget, damage, damageType);
		
		if (duration > 0.0f)
			Box_PerformForceEffect(oUser, oTarget, eSleep, duration);
	}
	//
	else if (saveResult == SAVED) {
	
		int evil = (100 - GetGoodEvilValue(oTarget)) / 5;
		int saveDamage = 0;
		int i;
		for (i = 0; i < force; i++)
			saveDamage = saveDamage + Random(evil) + 1;
		saveDamage = saveDamage / 4;
		saveDamage = Box_AdjustForceDamage(oUser, saveDamage);
		
		int hitLeft = GetCurrentHitPoints(oTarget);
		if (saveDamage > hitLeft)
			saveDamage = hitLeft;
		
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}

//
int Box_LightningPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d12(force);
	int damageType = DAMAGE_TYPE_DARK_SIDE;
	float duration = 3.0;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_DARK_SIDE;
	
	//
	effect eStun = EffectStunned();
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealForceDamage(oUser, oTarget, damage, damageType);
		Box_PerformForceEffect(oUser, oTarget, eStun, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealForceDamage(oUser, oTarget, damage/3, damageType);
	}
	
	return saveResult;
}

//
int Box_DrainPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d6(force);
	int damageType = DAMAGE_TYPE_DARK_SIDE;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_DARK_SIDE;
	
	//
	effect eDrain = EffectForceDrain(damage/3);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		int heal = Box_DealForceDamage(oUser, oTarget, damage, damageType) / 2;
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(heal), oUser);
		ApplyEffectToObject(DURATION_TYPE_INSTANT, eDrain, oTarget);
	}
	//
	else if (saveResult == SAVED) {
		int heal = Box_DealForceDamage(oUser, oTarget, damage/3, damageType) / 2;
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(heal), oUser);
	}
	
	return saveResult;
}

//
void Box_MeditationPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 18.0 + 3.0*force;
	
	//
	effect eBattle = EffectAttackIncrease(3, ATTACK_BONUS_MISC);
	eBattle = EffectLinkEffects(eBattle,  EffectACIncrease(3, AC_DODGE_BONUS, AC_VS_DAMAGE_TYPE_ALL));
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBattle, oTarget, duration);
}

//
void Box_MasterMeditationPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 18.0 + 3.0*force;
	
	//
	effect eBattle = EffectAttackIncrease(3, ATTACK_BONUS_MISC);
	eBattle = EffectLinkEffects(eBattle,  EffectACIncrease(3, AC_DODGE_BONUS, AC_VS_DAMAGE_TYPE_ALL));
	// TODO Figure out what this does
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBattle, oTarget, duration);
}

//
int Box_CrushPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d6(force);
	int damageType = DAMAGE_TYPE_DARK_SIDE;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_DARK_SIDE;
	
	//
	effect eCrush = EffectCrush();
	effect eDrop = EffectForcePushed();
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
	
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eCrush, oTarget, 2.0);
		DelayCommand(1.64, Box_DealForceDamageAction(oUser, oTarget, damage, damageType));
		DelayCommand(2.0, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDrop, oTarget));	
	}
	//
	else if (saveResult == SAVED) {
		Box_DealForceDamage(oUser, oTarget, damage/3, damageType);
	}
	
	return saveResult;
}

//
int Box_SeverPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_LIGHT_SIDE;
	
	//
	effect ePsychic = EffectCutSceneParalyze();
	effect eSever = EffectAbilityDecrease(ABILITY_STRENGTH, 10);
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_CONSTITUTION, 10));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_DEXTERITY, 10));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_INTELLIGENCE, 10));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_WISDOM, 10));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_CHARISMA, 10));
	
	// TODO: Fix this mess
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, ePsychic, oTarget, 3.0);
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, eSever, oTarget);
	GrantFeat(FEAT_FORCE_SEVER, oTarget);
	
	return 0;
}

//
int Box_ConsumePower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_DARK_SIDE;
	
	
	// TODO: Fix this mess
	//
	effect eHorror = EffectCutSceneHorrified();
	effect eDeath = EffectDamage(GetMaxHitPoints(oTarget));
	effect eSever = EffectMovementSpeedDecrease(10);
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_STRENGTH, 6));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_CONSTITUTION, 6));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_DEXTERITY, 6));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_INTELLIGENCE, 6));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_WISDOM, 6));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_CHARISMA, 6));
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eHorror, oTarget, 3.0);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType) && Box_IsJedi(oTarget)) {
		
		DelayCommand(3.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, eDeath, oTarget));
		DelayCommand(3.0, AddBonusForcePoints(oUser, 1));
	}
	//
	else if (Box_IsJedi(oTarget)) {
		
		DelayCommand(3.0, ApplyEffectToObject(DURATION_TYPE_PERMANENT, eSever, oTarget));
	}
	//
	else if (saveResult == SAVED) {
		
	}
	
	return saveResult;
}

//
void Box_BreathPower(object oUser, object oTarget, int force) {
	
	float duration = 120.0 + 15.0*force;
	
	//
	effect eBreath = EffectImmunity(IMMUNITY_TYPE_POISON);
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBreath, oTarget, duration);
}

//
int Box_BeastPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 24.0 + 3.0*force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	//
	effect eDistract = EffectFactionModifier(STANDARD_FACTION_NEUTRAL);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eDistract, duration);
	}
	//
	else if (saveResult == SAVED) {
	}
	
	return saveResult;
}

// box_inc_shields

// Written by Box
// Include file for energy shield scripts

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

void Box_EnemyMiningShield(object oUser) {
	effect eShield = EffectForceShield(ENEMY_MINING_SHIELD);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oUser, 60.0f);
}// box_inc_signal

// Written by Box
// Include file for signalling things

//
void Box_SignalSpellFailed(object oUser, string name) {
	
}

//
void Box_SignalSpellImmune(object oTarget, string name) {
	DisplayFeedBackText(oTarget, 1);
}

//
void Box_SignalSpellSaved(object oTarget, string name) {
	DisplayFeedBackText(oTarget, 2);
}

//
void Box_SignalSpellHit(object oTarget, string name) {
	// TODO
}

void Box_SignalSpellFriendly(object oTarget, string name) {
	
}// box_inc_stims

// Written by Box
// Include file for stim related scripts

float STIMULANT_DURATION = 30.0;

void Box_PoisonResistance(object oUser) {
	effect eResist = EffectImmunity(IMMUNITY_TYPE_POISON);
	eResist = EffectLinkEffects(eResist, EffectSavingThrowIncrease(SAVING_THROW_FORT, 4));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eResist, oUser, STIMULANT_DURATION);
}

void Box_FearResistance(object oUser) {
	effect eResist = EffectImmunity(IMMUNITY_TYPE_FEAR);
	eResist = EffectLinkEffects(eResist, EffectSavingThrowIncrease(SAVING_THROW_WILL, 4));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eResist, oUser, STIMULANT_DURATION);
}

void Box_SneakResistance(object oUser) {
	effect eResist = EffectImmunity(IMMUNITY_TYPE_SNEAK_ATTACK);
	eResist = EffectLinkEffects(eResist, EffectSavingThrowIncrease(SAVING_THROW_REFLEX, 4));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eResist, oUser, STIMULANT_DURATION);
}

void Box_AdrenalStrength(object oUser) {
	effect eAdren = EffectAbilityIncrease(ABILITY_STRENGTH, 4);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eAdren, oUser, STIMULANT_DURATION);
}

void Box_AdrenalStamina(object oUser) {
	effect eAdren = EffectAbilityIncrease(ABILITY_CONSTITUTION, 4);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eAdren, oUser, STIMULANT_DURATION);
}

void Box_AdrenalAlacrity(object oUser) {
	effect eAdren = EffectAbilityIncrease(ABILITY_DEXTERITY, 4);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eAdren, oUser, STIMULANT_DURATION);
}

void Box_StrengthStim(object oUser) {
	
	effect eStim = EffectAbilityIncrease(ABILITY_STRENGTH, 4);
	eStim = EffectLinkEffects(eStim, EffectSavingThrowIncrease(SAVING_THROW_FORT, 4));
	eStim = EffectLinkEffects(eStim, EffectSavingThrowIncrease(SAVING_THROW_REFLEX, 4));
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, STIMULANT_DURATION);
}

void Box_ToughnessStim(object oUser) {
	
	effect eStim = EffectAbilityIncrease(ABILITY_CONSTITUTION, 4);
	eStim = EffectLinkEffects(eStim, EffectDamageImmunityIncrease(DAMAGE_TYPE_SLASHING, 10));
	eStim = EffectLinkEffects(eStim, EffectDamageImmunityIncrease(DAMAGE_TYPE_PIERCING, 10));
	eStim = EffectLinkEffects(eStim, EffectDamageImmunityIncrease(DAMAGE_TYPE_BLUDGEONING, 10));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, STIMULANT_DURATION);
}

void Box_ConcentrationStim(object oUser) {
	
	effect eStim = EffectAbilityIncrease(ABILITY_DEXTERITY, 4);
	eStim = EffectLinkEffects(eStim, EffectSavingThrowIncrease(SAVING_THROW_WILL, 4));
	eStim = EffectLinkEffects(eStim, EffectSavingThrowIncrease(SAVING_THROW_ALL, 4, SAVING_THROW_TYPE_FEAR));
	eStim = EffectLinkEffects(eStim, EffectSavingThrowIncrease(SAVING_THROW_ALL, 4, SAVING_THROW_TYPE_MIND_AFFECTING));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, STIMULANT_DURATION);
}

void Box_BattleStim(object oUser) {
	
	effect eStim = EffectAbilityIncrease(ABILITY_STRENGTH, 4);
	eStim = EffectLinkEffects(eStim, EffectDamageIncrease(2));
	eStim = EffectLinkEffects(eStim, EffectSavingThrowIncrease(SAVING_THROW_ALL, 4));
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, STIMULANT_DURATION);
}

void Box_EnduranceStim(object oUser) {
	
	Box_RemoveEffects(EFFECT_TYPE_POISON, oUser);
	
	effect eStim = EffectAbilityIncrease(ABILITY_CONSTITUTION, 4);
	eStim = EffectLinkEffects(eStim, EffectRegenerate(4, 3.0f));
	eStim = EffectLinkEffects(eStim, EffectImmunity(IMMUNITY_TYPE_POISON));
	eStim = EffectLinkEffects(eStim, EffectImmunity(IMMUNITY_TYPE_PARALYSIS));
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, STIMULANT_DURATION);
}

void Box_AgilityStim(object oUser) {
	
	effect eStim = EffectAbilityIncrease(ABILITY_DEXTERITY, 4);
	eStim = EffectLinkEffects(eStim, EffectModifyAttacks(1));
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, STIMULANT_DURATION);
}

// box_inc_turret

// Written by Box
// Include file for turrets

// int BLASTER_TURRET_TRAP = #2DAMEMORY1#;
// int FLAMETHROWER_TURRET_TRAP = #2DAMEMORY2#;
// int SONIC_REPULSOR_TURRET_TRAP = #2DAMEMORY3#;
// int HEAVY_ION_TURRET_TRAP = #2DAMEMORY4#;
// int BALLISTIC_TURRET_TRAP = #2DAMEMORY5#;
// int ARMORED_BALLISTIC_TURRET_TRAP = #2DAMEMORY6#;
// int ARMORED_FUSION_TURRET_TRAP = #2DAMEMORY7#;

// string BLASTER_TURRET_TAG = "tc_blast";
// string FLAMETHROWER_TURRET_TAG = "tc_flame";
// string SONIC_REPULSOR_TURRET_TAG = "tc_sonic";
// string HEAVY_ION_TURRET_TAG = "tc_hvyion";
// string BALLISTIC_TURRET_TAG = "tc_ballis";
// string ARMORED_BALLISTIC_TURRET_TAG = "tc_armbls";
// string ARMORED_FUSION_TURRET_TAG = "tc_armfus";


// int Box_CheckTurretTrap(object oTrigger) {
	
	// int trap = GetTrapType(oTrigger);
	// if (trap == BLASTER_TURRET_TRAP)
		// return TRUE;
	// if (trap == FLAMETHROWER_TURRET_TRAP)
		// return TRUE;
	// if (trap == SONIC_REPULSOR_TURRET_TRAP)
		// return TRUE;
	// if (trap == HEAVY_ION_TURRET_TRAP)
		// return TRUE;
	// if (trap == BALLISTIC_TURRET_TRAP)
		// return TRUE;
	// if (trap == ARMORED_BALLISTIC_TURRET_TRAP)
		// return TRUE;
	// if (trap == ARMORED_FUSION_TURRET_TRAP)
		// return TRUE;
	
	// return FALSE;
// }


// int Box_CheckTurretCreature(object oCreature) {
	
	// int tag = GetTag(oCreature);
	// if (tag == BLASTER_TURRET_TAG)
		// return TRUE;
	// if (tag == FLAMETHROWER_TURRET_TAG)
		// return TRUE;
	// if (tag == SONIC_REPULSOR_TURRET_TAG)
		// return TRUE;
	// if (tag == HEAVY_ION_TURRET_TAG)
		// return TRUE;
	// if (tag == BALLISTIC_TURRET_TAG)
		// return TRUE;
	// if (tag == ARMORED_BALLISTIC_TURRET_TAG)
		// return TRUE;
	// if (tag == ARMORED_FUSION_TURRET_TAG)
		// return TRUE;
	
	// return FALSE;
// }


// string Box_GetTurretTag(object oTrigger) {
	
	// int trap = GetTrapType(oTrigger);
	// if (trap == BLASTER_TURRET_TRAP)
		// return BLASTER_TURRET_TAG;
	// if (trap == FLAMETHROWER_TURRET_TRAP)
		// return FLAMETHROWER_TURRET_TAG;
	// if (trap == SONIC_REPULSOR_TURRET_TRAP)
		// return SONIC_REPULSOR_TURRET_TAG;
	// if (trap == HEAVY_ION_TURRET_TRAP)
		// return HEAVY_ION_TURRET_TAG;
	// if (trap == BALLISTIC_TURRET_TRAP)
		// return BALLISTIC_TURRET_TAG;
	// if (trap == ARMORED_BALLISTIC_TURRET_TRAP)
		// return ARMORED_BALLISTIC_TURRET_TAG;
	// if (trap == ARMORED_FUSION_TURRET_TRAP)
		// return ARMORED_FUSION_TURRET_TAG;
	
	// return "";
// }


// int Box_GetTurretTrap(object oCreature) {
	
	// int tag = GetTag(oCreature);
	// if (tag == BLASTER_TURRET_TAG)
		// return BLASTER_TURRET_TRAP;
	// if (tag == FLAMETHROWER_TURRET_TAG)
		// return FLAMETHROWER_TURRET_TRAP;
	// if (tag == SONIC_REPULSOR_TURRET_TAG)
		// return SONIC_REPULSOR_TURRET_TRAP;
	// if (tag == HEAVY_ION_TURRET_TAG)
		// return HEAVY_ION_TURRET_TRAP;
	// if (tag == BALLISTIC_TURRET_TAG)
		// return BALLISTIC_TURRET_TRAP;
	// if (tag == ARMORED_BALLISTIC_TURRET_TAG)
		// return ARMORED_BALLISTIC_TURRET_TRAP;
	// if (tag == ARMORED_FUSION_TURRET_TAG)
		// return ARMORED_FUSION_TURRET_TRAP;
	
	// return 0;
// }







// box_inc_turretspells

// Written by Box
// Include file for turret spells

// For now, I'm using this in my Turrets standalone mod
int Box_FlameTurret(object oTarget) {
	return Box_DamageWeapon(oTarget, 15, 16, 4, DAMAGE_TYPE_FIRE, SAVING_THROW_WILL, SAVING_THROW_TYPE_FIRE);
}

int Box_SonicTurret(object oTarget) {
	effect eSonic = EffectAbilityDecrease(ABILITY_DEXTERITY, 6);
	effect ePush = EffectForcePushTargeted(GetLocation(OBJECT_SELF));
	int ret =  Box_DamageAndEffectWeapon(oTarget, 15, 8, 4, DAMAGE_TYPE_SONIC, eSonic, SAVING_THROW_WILL, SAVING_THROW_TYPE_SONIC, 30.0);
	if (ret == SAVE_FAILED) {
		effect ePush = EffectForcePushTargeted(GetLocation(OBJECT_SELF));
		float duration = 0.1;
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, ePush, oTarget, duration);
	}
	return ret;	
}

int Box_IonTurret(object oTarget) {
	return Box_IonWeapon(oTarget, 20, 24, 8, 24, SAVING_THROW_FORT, 9.0);
}

int Box_FragTurret(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	return Box_PiercingWeapon(oTarget, 20, 24, 6, save);
}

int Box_FusionTurret(object oTarget) {
	return Box_DamageWeapon(oTarget, 25, 36, 12, DAMAGE_TYPE_BLASTER, SAVING_THROW_REFLEX, SAVING_THROW_TYPE_NONE);
}








// box_inc_visual

// Written by Box
// Include file for explosives visual effects

// 
void Box_NoVisual(location l) {}

// 
void Box_NoBeam(object oUser, object oTarget) {}

// 
void Box_FragGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044), lExplosion);
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3003), lExplosion);
}

// 
void Box_FlashGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3004), lExplosion);
}

// 
void Box_IonGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3011), lExplosion);
}

// 
void Box_SonicGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3007), lExplosion);
}

// 
void Box_GasGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3006), lExplosion);
}

// 
void Box_ColdGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3009), lExplosion);
}

// 
void Box_PlasmaGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3010), lExplosion);
}

// 
void Box_DetonatorGrenadeExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044), lExplosion);
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3005), lExplosion);
}

//
void Box_RocketExplode(location lExplosion) {
	Box_DetonatorGrenadeExplode(lExplosion);
}

//
void Box_FireRocketExplode(location lExplosion) {
	Box_PlasmaGrenadeExplode(lExplosion);
}

//
void Box_BusterRocketExplode(location lExplosion) {
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(3005), lExplosion);
}

//
void Box_GasRocketExplode(location lExplosion) {
	Box_GasGrenadeExplode(lExplosion);
}

//
void Box_RadiationRocketExplode(location lExplosion) {
	Box_IonGrenadeExplode(lExplosion);
}

//
void Box_PlasmaRocketExplode(location lExplosion) {
	Box_PlasmaGrenadeExplode(lExplosion);
}

//
void Box_FusionRocketExplode(location lExplosion) {
	Box_DetonatorGrenadeExplode(lExplosion);
}

//
void Box_FlamethrowerBeam(object oUser, object oTarget) {
	effect eBeam = EffectBeam(2053, oUser, BODY_NODE_HAND);
	effect eBump = EffectVisualEffect(2062);
	effect eVFX = EffectVisualEffect(1039);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oTarget);
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
	DelayCommand(0.33, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBump, oTarget, 1.5));
}

//
void Box_CarboniteBeam(object oUser, object oTarget) {
	effect eBeam = EffectBeam(2051, OBJECT_SELF, BODY_NODE_HAND);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
}

//
void Box_SonicBeam(object oUser, object oTarget) {
	effect eBeam = EffectVisualEffect(9005);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, eBeam, oUser);
}

//
void Box_BusterRocketBeam(object oUser, object oTarget) {
	Box_DetonatorGrenadeExplode(GetLocation(oTarget));
}














