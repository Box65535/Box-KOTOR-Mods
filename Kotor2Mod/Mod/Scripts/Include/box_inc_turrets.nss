// box_inc_turrets

// Written by Box
// Include file for turrets


int Box_CheckTurretTrap(object oTrigger) {
	
	int trap = GetTrapType(oTrigger);
	//CHECK_TRAPS
	
	return FALSE;
}


int Box_CheckTurretCreature(object oCreature) {
	
	string tag = GetTag(oCreature);
	//CHECK_TURRETS
	
	return FALSE;
}


string Box_GetTurretTag(object oTrigger) {
	
	int trap = GetTrapType(oTrigger);
	//GET_TURRETS
	
	return "";
}


int Box_GetTurretTrap(object oCreature) {
	
	string tag = GetTag(oCreature);
	//GET_TRAPS
	
	return 0;
}







