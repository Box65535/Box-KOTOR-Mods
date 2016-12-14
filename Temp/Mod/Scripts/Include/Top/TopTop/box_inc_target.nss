// box_inc_target

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



