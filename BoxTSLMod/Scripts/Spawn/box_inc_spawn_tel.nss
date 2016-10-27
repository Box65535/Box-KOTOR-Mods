// box_inc_spawn_tel

// Written by Box
// Include file for spawning enemies (Telos)

#include "box_inc"

string REPUBLIC_BLASTER = "ew_repubp1";
string REPUBLIC_RIFLE = "ew_repurf1";
string CZERKA_RIFLE = "ew_czerrf1";
string HOLD_OUT_BLASTER = "ew_thugho1";
string SHORT_SWORD = "ew_thugss1"
string ENERGY_BATON = "ew_thugba1"
string MERCENARY_BLASTER = "ew_mercbp1";
string MERCENARY_RIFLE = "ew_mercrf1";
string MERCENARY_CARBINE = "ew_mercbc1";
string MERCENARY_DISRUPTOR_RIFLE = "ew_mercdr1";
string MERCENARY_ION_RIFLE = "ew_mercir1";
string MERCENARY_SONIC_RIFLE = "ew_mercsr1";
string MERCENARY_REPEATING_BLASTER = "ew_mercrb1";
string MERCENARY_VIBROBLADE_1 = "ew_mercvb1";
string MERCENARY_VIBROBLADE_2 = "ew_mercvb2";
string MERCENARY_VIBROSWORD = "ew_mercvs1";
string MERCENARY_VIBRODOUBLE = "ew_mercvd1";
string MERCENARY_DROIDMASTER_PISTOL = "ew_cmdrop";
string BOUNTY_HUNTER_DISRUPTOR_PISTOL = "ew_bounds1";
string BOUNTY_HUNTER_SHORT_SWORD = "ew_bounss1";
string BOUNTY_HUNTER_LONG_SWORD = "ew_bounls1";
string BOUNTY_HUNTER_CARBINE = "ew_bounbc1";
string GAMMOREAN_WAR_AXE = "ew_gammax1";
string EXCHANGE_BLASTER = "ew_exchbp1";
string EXCHANGE_CARBINE = "ew_exchbc1";
string EXCHANGE_RIFLE = "ew_exchrf1";
string EXCHANGE_SHORT_SWORD = "ew_exchss1";
string EXCHANGE_BATON = "ew_exchba1";
string BENOK_BLASTER = "ew_benok";
string LUXA_BLASTER = "ew_luxa";
string SLUSK_BLASTER = "ew_slusk";
string TELOS_DROID_BLASTER = "ew_teldbp1";
string TELOS_DROID_ION_BLASTER = "ew_teldib1";
string TELOS_TURRET_BLASTER = "ew_teltbp1";
string TELOS_TURRET_ION_BLASTER = "ew_teltib1";
string TELOS_TURRET_RAPID_BLASTER = "ew_teltrb1";
string TANK_DROID_BLASTER = "ew_tankbl";
string HK50_RIFLE = "ew_hk50rf1";
string HK50_HEAVY = "ew_hk50hv1";
string HK50_DISRUPTOR_RIFLE = "ew_hk50dr1";

string FRAG_GRENADE = "eq_fraggr1";
string PLASMA_GRENADE = "eq_plasgr1";
string MERCENARY_ENERGY_SHIELD_1 = "eq_merces1";
string MERCENARY_ENERGY_SHIELD_2 = "eq_merces2";
string MERCENARY_MELEE_SHIELD = "eq_mercms1";
string MERCENARY_GRENADE_LAUNCHER = "eq_mercfg1";
string MERCENARY_SONIC_GRENADE_LAUNCHER = "eq_mercsg1";
string MERCENARY_PLASMA_GRENADE_LAUNCHER = "eq_mercpg1";
string TELOS_ENERGY_SHIELD = "eq_telosh1";
string TELOS_DROID_STUN_RAY = "eq_teldsr1";
string TELOS_DROID_FLAMETHROWER = "eq_teldfr1";
string TELOS_DROID_SHOCK_ARM = "eq_teldsa1";
string TELOS_TURRET_HEAVY_BLASTER = "eq_telthb1";
string TANK_DROID_MOLTEN_CANNON = "eq_tankmc";
string TANK_DROID_LIGHTNING_ARM = "eq_tankla";
string TANK_DROID_GRENADE_LAUNCHER = "eq_tankfg";
string HK_50_GRENADE_LAUNCHER = "eq_hk50fg1";
string HK_50_STUN_GRENADE_LAUNCHER = "eq_hk50sg1";

string CREDITS_5 = "g_i_credits001";
string CREDITS_10 = "g_i_credits002";
string CREDITS_25 = "g_i_credits003";
string CREDITS_50 = "g_i_credits004";
string CREDITS_100 = "g_i_credits005";
string CREDITS_200 = "g_i_credits006";
string CREDITS_300 = "g_i_credits007";
string CREDITS_400 = "g_i_credits008";
string CREDITS_500 = "g_i_credits009";

void Box_BatuRemAssassin(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_STRONG);
	Box_GrantDualWield(oEnemy);
	ActionEquipItem(CreateItemOnObject(REPUBLIC_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(REPUBLIC_BLASTER, oEnemy), INVENTORY_SLOT_LEFTWEAPON, TRUE);
}

void Box_CzerkaMercenaryThugBlaster(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(MERCENARY_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_CzerkaMercenaryThugRifle(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(MERCENARY_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_TSFOfficer(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_REPUBLIC, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(REPUBLIC_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_TSFLieutenant(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_REPUBLIC, ENEMY_STRENGTH_STRONG);
	ActionEquipItem(CreateItemOnObject(REPUBLIC_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_ThugWithGun(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_THUG, ENEMY_STRENGTH_WEAK);
	ActionEquipItem(CreateItemOnObject(HOLD_OUT_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_ThugWithSword(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_THUG, ENEMY_STRENGTH_WEAK);
	ActionEquipItem(CreateItemOnObject(SHORT_SWORD, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_ThugWithBaton(object oEnemy) {
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
	Box_EquipHide(oEnemy, HIDE_TYPE_THUG, ENEMY_STRENGTH_WEAK);
	CreateItemOnObject(PLASMA_GRENADE, oEnemy, 1);}
}

void Box_LiutenantGrenn(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_REPUBLIC, ENEMY_STRENGTH_STRONG);
	ActionEquipItem(CreateItemOnObject(REPUBLIC_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_Ithorian(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_CIVILIAN, ENEMY_STRENGTH_CIVILIAN);
}

void Box_Benok(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_SCOUNDREL, ENEMY_STRENGTH_STRONG);
	Box_GrantCloseCombat(oEnemy);
	ActionEquipItem(CreateItemOnObject(BENOK_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_Nahata(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_SCOUNDREL, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(EXCHANGE_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(EXCHANGE_BATON, oEnemy), INVENTORY_SLOT_RIGHTWEAPON2, TRUE);
}

void Box_Matu(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_SCOUNDREL, ENEMY_STRENGTH_REGULAR);
	Box_GrantDualWield(oEnemy);
	ActionEquipItem(CreateItemOnObject(EXCHANGE_SHORT_SWORD, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(EXCHANGE_SHORT_SWORD, oEnemy), INVENTORY_SLOT_LEFTWEAPON, TRUE);
}

void Box_ExchangeThug(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_THUG, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(EXCHANGE_CARBINE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(EXCHANGE_BATON, oEnemy), INVENTORY_SLOT_RIGHTWEAPON2, TRUE);
}

void Box_Vula(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_CIVILIAN, ENEMY_STRENGTH_CIVILIAN);
}

void Box_ExchangeGammorean(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_GAMMOREAN, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(GAMMOREAN_WAR_AXE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_ExchangeDroid(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_COMBAT_DROID, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(EXCHANGE_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_ExchangeTurret(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_TURRET, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(EXCHANGE_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_LoppakSlusk(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_THUG, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(SLUSK_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_Luxa(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_SCOUNDREL, ENEMY_STRENGTH_STRONG);
	Box_GrantCloseCombat(oEnemy);
	ActionEquipItem(CreateItemOnObject(LUXA_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_MercenaryDualWield(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_REGULAR);
	Box_GrantDualWield(oEnemy);
	ActionEquipItem(CreateItemOnObject(MERCENARY_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_BLASTER, oEnemy), INVENTORY_SLOT_LEFTWEAPON, TRUE);
}

void Box_MercenaryIonRifle(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(MERCENARY_ION_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_VIBROBLADE_1, oEnemy), INVENTORY_SLOT_RIGHTWEAPON2, TRUE);
}

void Box_MercenaryWarDroid(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_COMBAT_DROID, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(MERCENARY_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_MercenarySonicRifle(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(MERCENARY_SONIC_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_VIBROBLADE_1, oEnemy), INVENTORY_SLOT_RIGHTWEAPON2, TRUE);
}

void Box_MercenaryTakeoverLeader(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_STRONG);
	ActionEquipItem(CreateItemOnObject(MERCENARY_VIBROSWORD, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_MercenaryBodyguard1(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(MERCENARY_SONIC_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_VIBRODOUBLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON2, TRUE);
}

void Box_MercenaryBodyguard2(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(MERCENARY_VIBROBLADE_2, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_TrandoshanBountyHunter(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_BOUNTY_HUNTER, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(BOUNTY_HUNTER_CARBINE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(BOUNTY_HUNTER_LONG_SWORD, oEnemy), INVENTORY_SLOT_RIGHTWEAPON2, TRUE);
}

void Box_RodianBountyHunter(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_BOUNTY_HUNTER, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(BOUNTY_HUNTER_CARBINE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(BOUNTY_HUNTER_SHORT_SWORD, oEnemy), INVENTORY_SLOT_RIGHTWEAPON2, TRUE);
}

void Box_OpoChano(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_CIVILIAN, ENEMY_STRENGTH_CIVILIAN);
}

void Box_Batono(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_REPUBLIC, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(REPUBLIC_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_CzerkaSecurity(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(CZERKA_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_RodianCriminal(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_SCOUNDREL, ENEMY_STRENGTH_STRONG);
	ActionEquipItem(CreateItemOnObject(BOUNTY_HUNTER_DISRUPTOR_PISTOL, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(BOUNTY_HUNTER_SHORT_SWORD, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_DevaronianCriminal(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_SCOUNDREL, ENEMY_STRENGTH_STRONG);
	ActionEquipItem(CreateItemOnObject(BOUNTY_HUNTER_DISRUPTOR_PISTOL, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(BOUNTY_HUNTER_SHORT_SWORD, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_MercenaryGruntCarbine(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(MERCENARY_CARBINE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_VIBROBLADE_1, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_ENERGY_SHIELD_1, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
}

void Box_MercenaryGruntGunner(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	// TODO Grant Rapid Shot 1
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(MERCENARY_REPEATING_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_MercenaryVeteranAssault(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_REGULAR);
	Box_GrantDualMastery(oEnemy);
	ActionEquipItem(CreateItemOnObject(MERCENARY_VIBRODOUBLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_MELEE_SHIELD, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
}

void Box_MercenaryVeteranGrenadier(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(MERCENARY_DISRUPTOR_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_VIBROBLADE_2, oEnemy), INVENTORY_SLOT_RIGHTWEAPON2, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_GRENADE_LAUNCHER, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_ENERGY_SHIELD_2, oEnemy), INVENTORY_SLOT_LEFTARM, TRUE);
}

void Box_MercenarySentryDroid(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_EXPERT_DROID, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(MERCENARY_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_BLASTER, oEnemy), INVENTORY_SLOT_LEFTWEAPON, TRUE);
}

void Box_Cannok(object oEnemy) {
	Box_EquipHide(oEnemy, HIDE_TYPE_CANNOK, ENEMY_STRENGTH_REGULAR);
}

void Box_DroidmasterWarbot(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_COMBAT_DROID, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(MERCENARY_ION_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_SONIC_GRENADE_LAUNCHER, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
}

void Box_MercenaryDroidmaster(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_TECH_SPEC, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(MERCENARY_DROIDMASTER_PISTOL, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_PLASMA_GRENADE_LAUNCHER, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_ENERGY_SHIELD_2, oEnemy), INVENTORY_SLOT_LEFTARM, TRUE);
}

void Box_MercenaryCommander(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_MERCENARY, ENEMY_STRENGTH_STRONG);
	Box_GrantCloseCombat(oEnemy);
	ActionEquipItem(CreateItemOnObject(MERCENARY_DISRUPTOR_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_GRENADE_LAUNCHER, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
	ActionEquipItem(CreateItemOnObject(MERCENARY_MELEE_SHIELD, oEnemy), INVENTORY_SLOT_LEFTARM, TRUE);
}

void Box_TelosDroid(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_COMBAT_DROID, ENEMY_STRENGTH_STRONG);
	Box_GrantDualWield(oEnemy);
	ActionEquipItem(CreateItemOnObject(TELOS_DROID_ION_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(TELOS_DROID_ION_BLASTER, oEnemy), INVENTORY_SLOT_LEFTWEAPON, TRUE);
}

void Box_TelosDroidFlamethrower(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_COMBAT_DROID, ENEMY_STRENGTH_REGULAR);
	Box_GrantDualWield(oEnemy);
	ActionEquipItem(CreateItemOnObject(TELOS_DROID_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(TELOS_DROID_BLASTER, oEnemy), INVENTORY_SLOT_LEFTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(TELOS_DROID_FLAMETHROWER, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
}

void Box_TelosDroidShockArm(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_COMBAT_DROID, ENEMY_STRENGTH_REGULAR);
	Box_GrantDualWield(oEnemy);
	ActionEquipItem(CreateItemOnObject(TELOS_DROID_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(TELOS_DROID_BLASTER, oEnemy), INVENTORY_SLOT_LEFTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(TELOS_DROID_SHOCK_ARM, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
	ActionEquipItem(CreateItemOnObject(TELOS_ENERGY_SHIELD, oEnemy), INVENTORY_SLOT_LEFTARM, TRUE);
}

void Box_TelosSentryDroid(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_COMBAT_DROID, ENEMY_STRENGTH_REGULAR);
	Box_GrantDualWield(oEnemy);
	ActionEquipItem(CreateItemOnObject(TELOS_DROID_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(TELOS_DROID_BLASTER, oEnemy), INVENTORY_SLOT_LEFTWEAPON, TRUE);
}

void Box_TelosTurret(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_TURRET, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(TELOS_TURRET_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_TelosIonTurret(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_TURRET, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(TELOS_DROID_ION_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_TelosTurretShielded(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_TURRET, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(TELOS_TURRET_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(TELOS_ENERGY_SHIELD, oEnemy), INVENTORY_SLOT_LEFTARM, TRUE);
}

void Box_TelosIonTurretShielded(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_TURRET, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(TELOS_TURRET_ION_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(TELOS_ENERGY_SHIELD, oEnemy), INVENTORY_SLOT_LEFTARM, TRUE);
}

void Box_TelosRapidTurret(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_TURRET, ENEMY_STRENGTH_REGULAR);
	// TODO: Add Rapid Shot 2
	ActionEquipItem(CreateItemOnObject(TELOS_TURRET_RAPID_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_TelosHeavyTurret(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_TURRET, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(TELOS_TURRET_HEAVY_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
}

// TODO: Figure out what other droids you fight here

void Box_TankDroid(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_COMBAT_DROID, ENEMY_STRENGTH_BOSS);
	ActionEquipItem(CreateItemOnObject(TANK_DROID_BLASTER, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(TANK_DROID_GRENADE_LAUNCHER, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
	ActionEquipItem(CreateItemOnObject(TANK_DROID_GRENADE_LAUNCHER, oEnemy), INVENTORY_SLOT_LEFTARM, TRUE);
	ActionEquipItem(CreateItemOnObject(TANK_DROID_MOLTEN_CANNON, oEnemy), INVENTORY_SLOT_HEAD, TRUE);
	ActionEquipItem(CreateItemOnObject(TANK_DROID_LIGHTNING_ARM, oEnemy), INVENTORY_SLOT_BELT, TRUE);
}

void Box_HK50Sniper(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_HK50, ENEMY_STRENGTH_STRONG);
	// TODO: Grant Sniper Shot and Power Blast
	ActionEquipItem(CreateItemOnObject(HK50_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_HK50Heavy(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_HK50, ENEMY_STRENGTH_STRONG);
	// TODO: Grant Rapid Shot
	ActionEquipItem(CreateItemOnObject(HK50_HEAVY, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
}

void Box_HK50Grenadier(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_HK50, ENEMY_STRENGTH_STRONG);
	ActionEquipItem(CreateItemOnObject(HK50_DISRUPTOR_RIFLE, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	ActionEquipItem(CreateItemOnObject(HK_50_GRENADE_LAUNCHER, oEnemy), INVENTORY_SLOT_RIGHTARM, TRUE);
	ActionEquipItem(CreateItemOnObject(HK_50_STUN_GRENADE_LAUNCHER, oEnemy), INVENTORY_SLOT_LEFTARM, TRUE);
}

void HandmaidenSister(object oEnemy) {
	Box_RemoveAllItems(oEnemy);
	Box_EquipHide(oEnemy, HIDE_TYPE_HANDMAIDEN, ENEMY_STRENGTH_REGULAR);
	// TODO: Add Feats
}

// Need to figure out how the handmaiden sisters work


