// box_inc_spawn_per

// Written by Box
// Include file for spawning enemies (Peragus)

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
	Box_EquipHide(oEnemy, HIDE_TYPE_EXPERT_DROID, ENEMY_STRENGTH_WEAK);
	ActionEquipItem(CreateItemOnObject(MINING_LASER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_MiningDroidShielded(object oEnemy) {	
	Box_MiningDroid(oEnemy);
	ActionEquipItem(CreateItemOnObject(MINING_SHIELD_1, oEnemy), INVENTORY_SLOT_BELT, TRUE);
}

void Box_MiningDroidLoot(object oEnemy) {	
	Box_MiningDroid(oEnemy);
	CreateItemOnObject(COMPONENTS, oEnemy, 2);
}

void Box_MiningDroidShieldedLoot(object oEnemy) {	
	Box_MiningDroidShielded(oEnemy);
	CreateItemOnObject(COMPONENTS, oEnemy, 2);
}

void Box_MiningDroidDual(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_EXPERT_DROID, ENEMY_STRENGTH_REGULAR);
	Box_GrantDualWield(oEnemy);
	ActionEquipItem(CreateItemOnObject(MINING_LASER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MINING_LASER, oEnemy), INVENTORY_SLOT_LEFTWEAPON, TRUE);
}

void Box_MiningDroidDualShielded(object oEnemy) {
	Box_MiningDroidDual(oEnemy);
	ActionEquipItem(CreateItemOnObject(MINING_SHIELD_1, oEnemy), INVENTORY_SLOT_BELT, TRUE);
}

void Box_ExcavatorDroid(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_EXPERT_DROID, ENEMY_STRENGTH_WEAK);
	ActionEquipItem(CreateItemOnObject(MINING_LASER, oEnemy), INVENTORY_SLOT_BELT, TRUE);
	ActionEquipItem(CreateItemOnObject(SONIC_DETONATOR, oEnemy), INVENTORY_SLOT_LEFTARM, TRUE);
}

void Box_ExcavatorDroidBurners(object oEnemy) {
	Box_ExcavatorDroid(oEnemy);
	ActionEquipItem(CreateItemOnObject(BURNERS, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
}

void Box_FireSuppressionDroid(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_EXPERT_DROID, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(FIRE_SUPPRESSION, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MINING_SHIELD_1, oEnemy), INVENTORY_SLOT_BELT, TRUE);
}

void Box_MiningDroidMarkII(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_COMBAT_DROID, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(MINING_CARBINE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_MiningDroidMarkIIFire(object oEnemy) {
	Box_MiningDroidMarkII(oEnemy);
	ActionEquipItem(CreateItemOnObject(BURNERS_2, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
}

void Box_MiningDroidMarkIICold(object oEnemy) {
	Box_MiningDroidMarkII(oEnemy);
	ActionEquipItem(CreateItemOnObject(FIRE_SUPPRESSION, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
}

void Box_ExcavatorDroidMarkII(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_COMBAT_DROID, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(DISRUPTOR_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MINING_SHIELD_2, oEnemy), INVENTORY_SLOT_BELT, TRUE);
}

void Box_FireSuppressionTurret(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_TURRET, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(FIRE_SUPPRESSION_TURRET, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
}

void Box_HK50Peragus(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_HK50, ENEMY_STRENGTH_BOSS);
	ActionEquipItem(CreateItemOnObject(MINING_CARBINE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_FloatingMine(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_EXPERT_DROID, ENEMY_STRENGTH_WEAK);
}

void Box_MaintenanceDroid(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_EXPERT_DROID, ENEMY_STRENGTH_WEAK);
}

void Box_SithAssassin(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_SITH_ASSASSIN, ENEMY_STRENGTH_REGULAR);
	Box_GrantDualWield(oEnemy);
	ActionEquipItem(CreateItemOnObject(DOUBLE_BLADED_SWORD, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	effect eUncloak = EffectVisualEffect(8001);
    DelayCommand(0.5f, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eUncloak, OBJECT_SELF, 5.0f));
}


