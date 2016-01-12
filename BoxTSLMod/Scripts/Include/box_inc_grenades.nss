// box_inc_grenades

// Written by Box
// Include file for grenades

//
int Box_FragGrenade(object oTarget) {
	
	//
	int dc = 12;
	int damage = 20;
	int saveDamage = 8;
	int damageType = DAMAGE_TYPE_PIERCING;
	int save = SAVING_THROW_REFLEX;
	int saveType = SAVING_THROW_TYPE_NONE;
	
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
int Box_StunGrenade(object oTarget) {
	
	//
	int dc = 12;
	float duration = 9.0;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_NONE;
	
	//
	effect eStun = EffectStunned();
	// effect eDistract = EffectACDecrease(1, AC_DODGE_BONUS, AC_VS_DAMAGE_TYPE_ALL);
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration);
	}
	//
	else if (saveResult == SAVED) {
		// ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDistract, oTarget, 6.0);
	}
	
	return saveResult;
}

//
int Box_IonGrenade(object oTarget) {
	
	//
	int dc = 12;
	int damage = 12;
	int droidDamage = 18;
	int saveDamage = 8;
	int damageType = DAMAGE_TYPE_ION;
	float duration = 6.0;
	int save = SAVING_THROW_REFLEX;
	int saveType = SAVING_THROW_TYPE_ION;
	
	effect eStun = EffectDroidStun();
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
		
		if (Box_IsDroid(oTarget)) {
			Box_DealDamage(oTarget, droidDamage, damageType);
			ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration);
		}
		else {
			Box_DealDamage(oTarget, damage, damageType);
		}
	}
	//
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}

//
int Box_SonicGrenade(object oTarget) {
	
	//
	int dc = 12;
	int damage = 16;
	int saveDamage = 8;
	int damageType = DAMAGE_TYPE_SONIC;
	float duration = 30.0;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_SONIC;
	
	//
	effect eSonic = EffectAbilityDecrease(ABILITY_INTELLIGENCE, 4);
	eSonic = EffectLinkEffects(eSonic, EffectAbilityDecrease(ABILITY_WISDOM, 4));
	eSonic = EffectLinkEffects(eSonic, EffectAbilityDecrease(ABILITY_CHARISMA, 4));
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSonic, oTarget, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSonic, oTarget, 9.0);
	}
	
	return saveResult;
}

//
int Box_ColdGrenade(object oTarget) {
	
	//
	int dc = 14;
	int damage = 24;
	int saveDamage = 8;
	int damageType = DAMAGE_TYPE_COLD;
	float duration = 6.0;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_REFLEX);
	int saveType = SAVING_THROW_TYPE_COLD;
	
	//
	effect eStun;
	if (Box_IsDroid(oTarget)) {
		eStun = EffectDroidStun();
	}
	else {
		eStun = EffectParalyze();
	}
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, damage/2, damageType);
	}
	
	return saveResult;
}

//
int Box_PlasmaGrenade(object oTarget) {
	
	//
	int dc = 14;
	int damage = 32;
	int saveDamage = 8;
	int damageType = DAMAGE_TYPE_FIRE;
	int save = SAVING_THROW_REFLEX;
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


//
int Box_ThermalDetonator(object oTarget) {
	
	//
	int dc = 20;
	int damage = 80;
	int saveDamage = 20;
	int damageType = DAMAGE_TYPE_BLASTER;
	int save = SAVING_THROW_REFLEX;
	int saveType = SAVING_THROW_TYPE_NONE;
	
	// TODO: Force push? Need to pass a location
	
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





