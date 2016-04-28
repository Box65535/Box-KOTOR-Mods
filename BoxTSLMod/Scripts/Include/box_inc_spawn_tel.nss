// box_inc_spawn_tel

// Written by Box
// Include file for spawning enemies (Telos)

string REPUBLIC_BLASTER = "wr_blast2";
string REPUBLIC_RIFLE = "wr_blast3";
string HOLD_OUT_BLASTER = "wr_blast3";
string ENERGY_BATON = "wm_baton";
string VIBROBLADE = "wm_vblade";
string PLASMA_GRENADE = "";

void Box_BatuRemAssassin(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_STRONG);
	Box_GrantDualWield(oEnemy);
	ActionEquipItem(CreateItemOnObject(REPUBLIC_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(REPUBLIC_BLASTER, oEnemy), INVENTORY_SLOT_LEFTWEAPON, TRUE);
}

void Box_MercenaryBlaster(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(REPUBLIC_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_MercenaryRifle(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(REPUBLIC_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_TSFGuard(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_TSF, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(REPUBLIC_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_WeakCzerkaThug(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_THUG, ENEMY_STRENGTH_WEAK);
	ActionEquipItem(CreateItemOnObject(HOLD_OUT_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_WeakCzerkaThug2(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_THUG, ENEMY_STRENGTH_WEAK);
	ActionEquipItem(CreateItemOnObject(ENERGY_BATON, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_MaskedAttacker(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_THUG, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(ENERGY_BATON, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_SamhanDobo(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_THUG, ENEMY_STRENGTH_REGULAR);
	CreateItemOnObject(PLASMA_GRENADE, oEnemy, 1);}
}

void Box_LiutenantGrenn(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_THUG, ENEMY_STRENGTH_STRONG);
	ActionEquipItem(CreateItemOnObject(REPUBLIC_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_ExchangeThug(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_THUG, ENEMY_STRENGTH_WEAK);
	ActionEquipItem(CreateItemOnObject("", oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_ExchangeThug2(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_THUG, ENEMY_STRENGTH_WEAK);
	ActionEquipItem(CreateItemOnObject("", oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_ExchangeGammorean(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_GAMMOREAN, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(GAMMOREAN_BATTLEAXE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE)
}

void Box_ExchangeDroid(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_COMBAT_DROID, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject("", oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE)
}

void Box_ExchangeTurret(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_TURRET, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject("", oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE)
}

void Box_Benok(object oEnemy) {
}

void Box_LoppakSlusk(object oEnemy) {
}

void Box_Luxa(object oEnemy) {
}

void Box_RodianCriminal(object oEnemy) {
}

void Box_DevaronianCriminal(object oEnemy) {
}

void Box_DevaronianCriminal(object oEnemy) {
}

void Box_MercenaryFullEquip(object oEnemy) {
}

void Box_MercenaryFullEquipSonic(object oEnemy) {
}

void Box_CzerkaWarDroid(object oEnemy) {
}

void Box_MercenaryCaptain(object oEnemy) {
}

void Box_Cannok(object oEnemy) {
}

void Box_CannokLoot(object oEnemy) {
}

void Box_MercenaryFullEquipShielded(object oEnemy) {
}

void Box_MercenaryMeleeShielded(object oEnemy) {
}

void Box_SentryDroid(object oEnemy) {
}

void Box_CzerkaTurret(object oEnemy) {
}

void Box_CzerkaDroidmaster(object oEnemy) {
}

void Box_MercenaryVeteran(object oEnemy) {
}

void Box_MercenaryCommander(object oEnemy) {
}

void Box_TelosIonTurret(object oEnemy) {
}

void Box_TelosMilitaryDroid(object oEnemy) {
}

void Box_TelosMilitaryDroidShielded(object oEnemy) {
}

void Box_TankDroid(object oEnemy) {
}

void Box_HK50(object oEnemy) {
}

void HandmaidenSisterTier1(object oEnemy) {
}

void HandmaidenSisterTier2(object oEnemy) {
}

void HandmaidenSisterTier3(object oEnemy) {
}





