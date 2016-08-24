// box_spawn_per

// Written by Box
// Spawn script for Peragus

#include "k_inc_generic"
#include "box_inc"

string MINING_LASER = "wr_mining1";
string MINING_CARBINE = "wr_mining2";
string DISRUPTOR_RIFLE = "wr_rifle4";
string MINING_SHIELD_1 = "es_mining1";
string MINING_SHIELD_2 = "es_mining2";
string SONIC_DETONATOR = "ew_soncdt1";
string SONIC_DETONATOR_2 = "ew_soncdt2";
string BURNERS = "ew_burn1";
string BURNERS_2 = "ew_burn2";
string FIRE_SUPPRESSION = "ew_firesu1";
string FIRE_SUPPRESSION_TURRET = "et_firesu1";
string DOUBLE_BLADED_SWORD = "wm_simple4";
string COMPONENTS = "compont_00001";


void Box_MiningDroid(object oEnemy) {
	
	Box_RemoveAllItems(oEnemy);
	
	// Hide
	string hide = Box_GetHideTemplate(HIDE_TYPE_EXPERT_DROID, ENEMY_STRENGTH_WEAK);
	ActionEquipItem(CreateItemOnObject(hide, oEnemy), INVENTORY_SLOT_CARMOUR, TRUE);
	
	// Equipment
	ActionEquipItem(CreateItemOnObject(MINING_LASER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_MiningDroidDual(object oEnemy) {
	
	Box_RemoveAllItems(oEnemy);
	
	// Hide
	string hide = Box_GetHideTemplate(HIDE_TYPE_EXPERT_DROID, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(hide, oEnemy), INVENTORY_SLOT_CARMOUR, TRUE);
	
	// Equipment
	Box_GrantDualWield(oEnemy);
	ActionEquipItem(CreateItemOnObject(MINING_LASER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MINING_LASER, oEnemy), INVENTORY_SLOT_LEFTWEAPON, TRUE);
}

void Box_ExcavatorDroid(object oEnemy) {
	
	Box_RemoveAllItems(oEnemy);
	
	// Hide
	string hide = Box_GetHideTemplate(HIDE_TYPE_EXPERT_DROID, ENEMY_STRENGTH_WEAK);
	ActionEquipItem(CreateItemOnObject(hide, oEnemy), INVENTORY_SLOT_CARMOUR, TRUE);
	
	// Equipment
	ActionEquipItem(CreateItemOnObject(MINING_LASER, oEnemy), INVENTORY_SLOT_BELT, TRUE);
	ActionEquipItem(CreateItemOnObject(SONIC_DETONATOR, oEnemy), INVENTORY_SLOT_LEFTARM, TRUE);
}

void Box_FloatingMine(object oEnemy) {
	
	Box_RemoveAllItems(oEnemy);
	
	// Hide
	string hide = Box_GetHideTemplate(HIDE_TYPE_EXPERT_DROID, ENEMY_STRENGTH_WEAK);
	ActionEquipItem(CreateItemOnObject(hide, oEnemy), INVENTORY_SLOT_CARMOUR, TRUE);
}

void Box_MaintenanceDroid(object oEnemy) {
	
	Box_RemoveAllItems(oEnemy);
	
	// Hide
	string hide = Box_GetHideTemplate(HIDE_TYPE_EXPERT_DROID, ENEMY_STRENGTH_WEAK);
	ActionEquipItem(CreateItemOnObject(hide, oEnemy), INVENTORY_SLOT_CARMOUR, TRUE);
}

void Box_SithAssassin(object oEnemy) {

	Box_RemoveAllItems(oEnemy);
		
	// Hide
	string hide = Box_GetHideTemplate(HIDE_TYPE_SITH_ASSASSIN, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(hide, oEnemy), INVENTORY_SLOT_CARMOUR, TRUE);
	
	// Equipment
	Box_GrantDualWield(oEnemy);
	ActionEquipItem(CreateItemOnObject(DOUBLE_BLADED_SWORD, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	
	// Special Script
	effect eUncloak = EffectVisualEffect(8001);
    DelayCommand(0.5f, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eUncloak, OBJECT_SELF, 5.0f));
}

void Box_HK50(object oEnemy) {
	
	Box_RemoveAllItems(oEnemy);
	
	// Hide
	string hide = Box_GetHideTemplate(HIDE_TYPE_HK50, ENEMY_STRENGTH_BOSS);
	ActionEquipItem(CreateItemOnObject(hide, oEnemy), INVENTORY_SLOT_CARMOUR, TRUE);
	
	// Equipment
	ActionEquipItem(CreateItemOnObject(MINING_CARBINE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_MiningDroidMarkII(object oEnemy) {
	
	Box_RemoveAllItems(oEnemy);
	
	// Hide
	string hide = Box_GetHideTemplate(HIDE_TYPE_COMBAT_DROID, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(hide, oEnemy), INVENTORY_SLOT_CARMOUR, TRUE);
	
	// Equipment
	ActionEquipItem(CreateItemOnObject(MINING_CARBINE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_ExcavatorDroidMarkII(object oEnemy) {
	
	Box_RemoveAllItems(oEnemy);
	
	// Hide
	string hide = Box_GetHideTemplate(HIDE_TYPE_COMBAT_DROID, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(hide, oEnemy), INVENTORY_SLOT_CARMOUR, TRUE);
	
	// Equipment
	ActionEquipItem(CreateItemOnObject(DISRUPTOR_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MINING_SHIELD_2, oEnemy), INVENTORY_SLOT_BELT, TRUE);
}

void Box_FireSuppressionDroid(object oEnemy) {
	
	Box_RemoveAllItems(oEnemy);
	
	// Hide
	string hide = Box_GetHideTemplate(HIDE_TYPE_EXPERT_DROID, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(hide, oEnemy), INVENTORY_SLOT_CARMOUR, TRUE);
	
	// Equipment
	ActionEquipItem(CreateItemOnObject(FIRE_SUPPRESSION, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MINING_SHIELD_1, oEnemy), INVENTORY_SLOT_BELT, TRUE);
}

void Box_FireSuppressionTurret(object oEnemy) {
	
	Box_RemoveAllItems(oEnemy);
	
	// Hide
	string hide = Box_GetHideTemplate(HIDE_TYPE_TURRET, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(hide, oEnemy), INVENTORY_SLOT_CARMOUR, TRUE);
	
	// Equipment
	ActionEquipItem(CreateItemOnObject(FIRE_SUPPRESSION_TURRET, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
}


void Box_OutfitEnemy101PER(object oEnemy) {
	
	string tag = GetTag(oEnemy);
	
	// Damaged Mining Droid
	if (tag == "g_assassindrd002") {
		Box_MiningDroid(oEnemy);
	}
	// Damaged Mining Droid (Loot)
	if (tag == "g_assassindrd003") {
		Box_MiningDroid(oEnemy);
		CreateItemOnObject(COMPONENTS, oEnemy, 2);
	}
	// Damaged Mining Droid (Dual-Wield)
	if (tag == "g_assassindrd004") {
		Box_MiningDroidDual(oEnemy);
	}
	// Damaged Mining Droid
	if (tag == "g_assassindrd005") {
		Box_MiningDroid(oEnemy);
	}
	// Floating Mine
	if (tag == "g_floatingmin002") {
		Box_FloatingMine(oEnemy);
	}
	// Sith Assassin
	if (tag == "n_sithsoldier001") {
		Box_SithAssassin(oEnemy);
	}
	// HK-50
	if (tag == "p_hk048") {
		Box_HK50(oEnemy);
	}
}

void Box_OutfitEnemy102PER(object oEnemy) {
	
	string tag = GetTag(oEnemy);
	
	// Mining Droid (Shielded)
	if (tag == "g_assassindrd002") {
		Box_MiningDroid(oEnemy);
		ActionEquipItem(CreateItemOnObject(MINING_SHIELD_1, oEnemy), INVENTORY_SLOT_BELT, TRUE);
	}
	// Mining Droid (Shielded, Loot)
	if (tag == "g_assassindrd003") {
		Box_MiningDroid(oEnemy);
		ActionEquipItem(CreateItemOnObject(MINING_SHIELD_1, oEnemy), INVENTORY_SLOT_BELT, TRUE);
		CreateItemOnObject(COMPONENTS, oEnemy, 2);
	}
	// Mining Droid (Dual-Wield, Shielded)
	if (tag == "g_assassindrd004") {
		Box_MiningDroidDual(oEnemy);
		ActionEquipItem(CreateItemOnObject(MINING_SHIELD_1, oEnemy), INVENTORY_SLOT_BELT, TRUE);
	}
	// Excavator Droid
	if (tag == "g_assassindrd005") {
		Box_ExcavatorDroid(oEnemy);
		// ActionEquipItem(CreateItemOnObject(MINING_LASER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	}
	// Excavator Droid (Burners)
	if (tag == "g_assassindrd006") {
		Box_ExcavatorDroid(oEnemy);
		ActionEquipItem(CreateItemOnObject(BURNERS, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
	}
	// Mining Droid
	if (tag == "g_assassindrd007") {
		Box_MiningDroid(oEnemy);
	}
	// Mining Droid (Skirmisher)
	if (tag == "g_assassindrd008") {
		Box_MiningDroid(oEnemy);
	}
	// Maintenance Droid
	if (tag == "g_assassindrd009") {
		Box_MaintenanceDroid(oEnemy);
	}
	// Mining Droid (Empty)
	if (tag == "g_assassindrd010") {
		Box_RemoveAllItems(oEnemy);
		// Hide
		string hide = Box_GetHideTemplate(HIDE_TYPE_EXPERT_DROID, ENEMY_STRENGTH_WEAK);
		ActionEquipItem(CreateItemOnObject(hide, oEnemy), INVENTORY_SLOT_CARMOUR, TRUE);
	}
}

void Box_OutfitEnemy103PER(object oEnemy) {
	
	string tag = GetTag(oEnemy);
	
	// Mining Droid
	if (tag == "g_assassindrd002") {
		Box_MiningDroid(oEnemy);
	}
	// Mining Droid (Loot)
	if (tag == "g_assassindrd003") {
		Box_MiningDroid(oEnemy);
		CreateItemOnObject(COMPONENTS, oEnemy, 2);
	}
	// Damaged Mining Droid (Dual-Wield)
	if (tag == "g_assassindrd004") {
		Box_MiningDroidDual(oEnemy);
	}
	// Excavator Droid
	if (tag == "g_assassindrd005") {
		Box_ExcavatorDroid(oEnemy);
		// ActionEquipItem(CreateItemOnObject(MINING_LASER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	}
	// Excavator Droid (Burners)
	if (tag == "g_assassindrd006") {
		Box_ExcavatorDroid(oEnemy);
		ActionEquipItem(CreateItemOnObject(BURNERS, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
	}
	// Maintenance Droid
	if (tag == "g_assassindrd009") {
		Box_MaintenanceDroid(oEnemy);
	}
	// Mining Droid Mark II
	if ((tag == "g_droid_mine_003") ||
		(tag == "g_droid_mine_004") ||
		(tag == "g_droid_mine_005") ||
		(tag == "g_droid_mine_006")) {
		Box_MiningDroidMarkII(oEnemy);
	}
	// Floating Mine
	if (tag == "g_floatingmin001") {
		Box_FloatingMine(oEnemy);
	}
}

void Box_OutfitEnemy105PER(object oEnemy) {
	
	string tag = GetTag(oEnemy);
	
	// Mining Droid
	if (tag == "g_assassindrd002") {
		Box_MiningDroid(oEnemy);
	}
	// Mining Droid (Loot)
	if (tag == "g_assassindrd003") {
		Box_MiningDroid(oEnemy);
		CreateItemOnObject(COMPONENTS, oEnemy, 2);
	}
	// Damaged Mining Droid (Dual-Wield)
	if (tag == "g_assassindrd004") {
		Box_MiningDroidDual(oEnemy);
	}
	// Excavator Droid
	if (tag == "g_assassindrd005") {
		Box_ExcavatorDroid(oEnemy);
		// ActionEquipItem(CreateItemOnObject(MINING_LASER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	}
	// Excavator Droid (Burners)
	if (tag == "g_assassindrd006") {
		Box_ExcavatorDroid(oEnemy);
		ActionEquipItem(CreateItemOnObject(BURNERS, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
	}
	// Fire Suppression Droid
	if (tag == "g_assassindrd007") {
		Box_FireSuppressionDroid(oEnemy);
	}
	// Maintenance Droid
	if (tag == "g_assassindrd009") {
		Box_MaintenanceDroid(oEnemy);
	}
	// Mining Droid Mark II
	if ((tag == "g_droid_mine_003")) {
		Box_MiningDroidMarkII(oEnemy);
	}
	// Fire Suppression Turret
	if (tag == "g_turretbl010") {
		Box_FireSuppressionTurret(oEnemy);
	}
}

void Box_OutfitEnemy106PER(object oEnemy) {
	
	string tag = GetTag(oEnemy);
	
	// Mining Droid
	if (tag == "g_assassindrd002") {
		Box_MiningDroid(oEnemy);
	}
	// Mining Droid (Loot)
	if (tag == "g_assassindrd003") {
		Box_MiningDroid(oEnemy);
		CreateItemOnObject(COMPONENTS, oEnemy, 2);
	}
	// Mining Droid (Dual-Wield)
	if (tag == "g_assassindrd004") {
		Box_MiningDroidDual(oEnemy);
	}
	// Mining Droid (Dual-Wield, Loot)
	if (tag == "g_assassindrd005") {
		Box_MiningDroidDual(oEnemy);
		CreateItemOnObject(COMPONENTS, oEnemy, 2);
	}
	// ?
	if (tag == "g_assassindrd006") {
		
	}
	// ?
	if (tag == "g_assassindrd007") {
		
	}
	// Mining Droid Mark II (Fire)
	if ((tag == "g_droid_mine_024")) {
		Box_MiningDroidMarkII(oEnemy);
		ActionEquipItem(CreateItemOnObject(BURNERS_2, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
	}
	// Mining Droid Mark II (Ice)
	if ((tag == "g_droid_mine_025")) {
		Box_MiningDroidMarkII(oEnemy);
		ActionEquipItem(CreateItemOnObject(FIRE_SUPPRESSION, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
	}
	// Fire Suppression Turret 
	if (tag == "g_turretbl010") {
		Box_FireSuppressionTurret(oEnemy);
	}
}


void main() {
	
	object oEnemy = OBJECT_SELF;
	string module = GetModuleFileName();
	
	if (module == "101PER")
		Box_OutfitEnemy101PER(oEnemy);
	if (module == "102PER")
		Box_OutfitEnemy102PER(oEnemy);
	if (module == "103PER")
		Box_OutfitEnemy103PER(oEnemy);
	if (module == "105PER")
		Box_OutfitEnemy105PER(oEnemy);
	if (module == "106PER")
		Box_OutfitEnemy106PER(oEnemy);
	
	Box_DroidShield(oEnemy);
	
	// Behavior from k_def_spawn01
	
	// Default Generic Behavior
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	SetLocalNumber(OBJECT_SELF, 11, 6);
	
	// Walkpoints
	GN_WalkWayPoints();
}














