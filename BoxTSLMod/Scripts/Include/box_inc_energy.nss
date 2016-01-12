// box_inc_energy

// Written by Box
// Include file for energy weapons


//
int Box_GetEnergyDamage(object oUser, int damage) {
	return damage;
}

float Box_GetEnergyDuration(object oUser, float duration) {
	return duration;
}

//
int Box_GetEnergyDC(object oUser, int dc) {
	return dc;
}

//
void Box_ConsumeEnergy(object oUser, int amount) {
	Box_UseEnergy(oUser, amount);
}


//
int Box_ShockArm(object oUser, object oTarget) {

	//
	int dc = Box_GetEnergyDC(oUser, 12);
	int damage = Box_GetEnergyDamage(oUser, 12);
	int saveDamage = Box_GetEnergyDamage(oUser, 4);
	int damageType = DAMAGE_TYPE_ELECTRICAL;
	int save = SAVING_THROW_FORT;
	int saveType = SAVING_THROW_TYPE_ELECTRICAL;
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}

//
int Box_DroidStunner(object oUser, object oTarget) {

	//
	int dc = Box_GetEnergyDC(oUser, 12);
	float duration = Box_GetEnergyDuration(oUser, 9.0f);
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	effect eStun = EffectDroidStun();
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration);
	}
	
	return saveResult;
}

//
int Box_IonBlaster(object oUser, object oTarget) {

	//
	int dc = Box_GetEnergyDC(oUser, 12);
	int damage = Box_GetEnergyDamage(oUser, 18);
	int saveDamage = Box_GetEnergyDamage(oUser, 6);
	int damageType = DAMAGE_TYPE_ION;
	int save = SAVING_THROW_FORT;
	int saveType = SAVING_THROW_TYPE_ION;
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}

//
int Box_PlasmaBlaster(object oUser, object oTarget) {

	//
	int dc = Box_GetEnergyDC(oUser, 14);
	int damage = Box_GetEnergyDamage(oUser, 24);
	int saveDamage = Box_GetEnergyDamage(oUser, 6);
	int damageType = DAMAGE_TYPE_FIRE;
	int save = SAVING_THROW_FORT;
	int saveType = SAVING_THROW_TYPE_FIRE;
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}






