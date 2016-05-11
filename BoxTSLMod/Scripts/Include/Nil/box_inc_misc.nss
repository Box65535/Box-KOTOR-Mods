// box_inc_misc

// Written by Box
// Include file for enemy-only spells and other things

//
int Box_WeakSonicGrenade(object oTarget) {
	
	//
	int dc = 10;
	int damage = 8;
	int saveDamage = 4;
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


int Box_WeakBurners(object oTarget) {
	
	int dc = 10;
	int damage = 12;
	int saveDamage = 4;
	int damageType = DAMAGE_TYPE_FIRE;
	int save = SAVING_THROW_FORT;
	int saveType = SAVING_THROW_TYPE_FIRE;
	
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
	}
	
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}

//
int Box_Burners(object oTarget) {
	
	int dc = 10;
	int damage = 24;
	int saveDamage = 8;
	int damageType = DAMAGE_TYPE_FIRE;
	int save = SAVING_THROW_FORT;
	int saveType = SAVING_THROW_TYPE_FIRE;
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
	}
	
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}

//
int Box_FireSuppression(object oTarget) {
	
	int dc = 10;
	int damage = 24;
	int saveDamage = 8;
	float duration = 6.0f;
	int damageType = DAMAGE_TYPE_COLD;
	int save = SAVING_THROW_FORT;
	int saveType = SAVING_THROW_TYPE_COLD;
	
	effect eStun;
	if (Box_IsDroid(oTarget)) {
		eStun = EffectDroidStun();
	}
	else {
		eStun = EffectParalyze();
	}
	// Need to put these visual effects here
	eStun = EffectLinkEffects(eStun, EffectVisualEffect(2054));
	eStun = EffectLinkEffects(eStun, EffectVisualEffect(2055));
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration);
	}
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}




