// box_inc_turret

// Written by Box
// Include file for turrets


int Box_CheckTurretTrap(object oTrigger) {
	
	int trap = GetTrapType(oTrigger);
	// 
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
	
	int tag = GetTag(oCreature);
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
	
	int trap = GetTrapType(oTrigger);
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


int Box_GetTurretTrap(object oCreature) {
	
	int tag = GetTag(oCreature);
	if (tag == BLASTER_TURRET_TAG)
		return BLASTER_TURRET_TRAP;
	if (tag == FLAMETHROWER_TURRET_TAG)
		return FLAMETHROWER_TURRET_TRAP;
	if (tag == SONIC_REPULSOR_TURRET_TAG)
		return SONIC_REPULSOR_TURRET_TRAP;
	if (tag == HEAVY_ION_TURRET_TAG)
		return HEAVY_ION_TURRET_TRAP;
	if (tag == BALLISTIC_TURRET_TAG)
		return BALLISTIC_TURRET_TRAP;
	if (tag == ARMORED_BALLISTIC_TURRET_TAG)
		return ARMORED_BALLISTIC_TURRET_TRAP;
	if (tag == ARMORED_FUSION_TURRET_TAG)
		return ARMORED_FUSION_TURRET_TRAP;
	
	return 0;
}







