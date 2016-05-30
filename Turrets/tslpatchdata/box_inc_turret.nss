// box_inc_turret

// Written by Box
// Include file for turrets


int LOCAL_NUMBER_HEALTH = 13;

int BLASTER_TURRET_TRAP = #2DAMEMORY1#;
int FLAMETHROWER_TURRET_TRAP = #2DAMEMORY2#;
int SONIC_REPULSOR_TURRET_TRAP = #2DAMEMORY3#;
int HEAVY_ION_TURRET_TRAP = #2DAMEMORY4#;
int BALLISTIC_TURRET_TRAP = #2DAMEMORY5#;
int ARMORED_BALLISTIC_TURRET_TRAP = #2DAMEMORY6#;
int ARMORED_FUSION_TURRET_TRAP = #2DAMEMORY7#;

string BLASTER_TURRET_TAG = "tc_blast";
string FLAMETHROWER_TURRET_TAG = "tc_flame";
string SONIC_REPULSOR_TURRET_TAG = "tc_sonic";
string HEAVY_ION_TURRET_TAG = "tc_hvyion";
string BALLISTIC_TURRET_TAG = "tc_ballis";
string ARMORED_BALLISTIC_TURRET_TAG = "tc_armbls";
string ARMORED_FUSION_TURRET_TAG = "tc_armfus";

string BLASTER_TURRET_TRAP_TAG = "tt_blast";
string FLAMETHROWER_TURRET_TRAP_TAG = "tt_flame";
string SONIC_REPULSOR_TURRET_TRAP_TAG = "tt_sonic";
string HEAVY_ION_TURRET_TRAP_TAG = "tt_hvyion";
string BALLISTIC_TURRET_TRAP_TAG = "tt_ballis";
string ARMORED_BALLISTIC_TURRET_TRAP_TAG = "tt_armbls";
string ARMORED_FUSION_TURRET_TRAP_TAG = "tt_armfus";


int Box_CheckTurretTrap(object oTrigger) {
	
	int trap = GetTrapBaseType(oTrigger);
	if (trap == BLASTER_TURRET_TRAP)
		return TRUE;
	if (trap == FLAMETHROWER_TURRET_TRAP)
		return TRUE;
	if (trap == SONIC_REPULSOR_TURRET_TRAP)
		return TRUE;
	if (trap == HEAVY_ION_TURRET_TRAP)
		return TRUE;
	if (trap == BALLISTIC_TURRET_TRAP)
		return TRUE;
	if (trap == ARMORED_BALLISTIC_TURRET_TRAP)
		return TRUE;
	if (trap == ARMORED_FUSION_TURRET_TRAP)
		return TRUE;
	
	return FALSE;
}


int Box_CheckTurretCreature(object oCreature) {
	
	string tag = GetTag(oCreature);
	if (tag == BLASTER_TURRET_TAG)
		return TRUE;
	if (tag == FLAMETHROWER_TURRET_TAG)
		return TRUE;
	if (tag == SONIC_REPULSOR_TURRET_TAG)
		return TRUE;
	if (tag == HEAVY_ION_TURRET_TAG)
		return TRUE;
	if (tag == BALLISTIC_TURRET_TAG)
		return TRUE;
	if (tag == ARMORED_BALLISTIC_TURRET_TAG)
		return TRUE;
	if (tag == ARMORED_FUSION_TURRET_TAG)
		return TRUE;
	
	return FALSE;
}


string Box_GetTurretTag(object oTrigger) {
	
	int trap = GetTrapBaseType(oTrigger);
	if (trap == BLASTER_TURRET_TRAP)
		return BLASTER_TURRET_TAG;
	if (trap == FLAMETHROWER_TURRET_TRAP)
		return FLAMETHROWER_TURRET_TAG;
	if (trap == SONIC_REPULSOR_TURRET_TRAP)
		return SONIC_REPULSOR_TURRET_TAG;
	if (trap == HEAVY_ION_TURRET_TRAP)
		return HEAVY_ION_TURRET_TAG;
	if (trap == BALLISTIC_TURRET_TRAP)
		return BALLISTIC_TURRET_TAG;
	if (trap == ARMORED_BALLISTIC_TURRET_TRAP)
		return ARMORED_BALLISTIC_TURRET_TAG;
	if (trap == ARMORED_FUSION_TURRET_TRAP)
		return ARMORED_FUSION_TURRET_TAG;
	
	return "";
}


string Box_GetTurretTrapTag(object oCreature) {
	
	string tag = GetTag(oCreature);
	if (tag == BLASTER_TURRET_TAG)
		return BLASTER_TURRET_TRAP_TAG;
	if (tag == FLAMETHROWER_TURRET_TAG)
		return FLAMETHROWER_TURRET_TRAP_TAG;
	if (tag == SONIC_REPULSOR_TURRET_TAG)
		return SONIC_REPULSOR_TURRET_TRAP_TAG;
	if (tag == HEAVY_ION_TURRET_TAG)
		return HEAVY_ION_TURRET_TRAP_TAG;
	if (tag == BALLISTIC_TURRET_TAG)
		return BALLISTIC_TURRET_TRAP_TAG;
	if (tag == ARMORED_BALLISTIC_TURRET_TAG)
		return ARMORED_BALLISTIC_TURRET_TRAP_TAG;
	if (tag == ARMORED_FUSION_TURRET_TAG)
		return ARMORED_FUSION_TURRET_TRAP_TAG;
	
	return "";
}







