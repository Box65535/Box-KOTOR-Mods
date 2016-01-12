// box_inc_mines

// Written by Box
// Include file for mine trap scripts

int POISON_MINE_1 = 22;
int POISON_MINE_2 = 23;
int POISON_MINE_3 = 24;
int POISON_MINE_4 = 25;
int POISON_MINE_5 = 26;


//
int Box_FragMine(object oTarget, int mineLevel) {
	
	//
	int dc = 10 + 2*mineLevel;
	int damage = 10 + 10*mineLevel;
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
		Box_DealDamage(oTarget, damage/2, damageType);
	}
	
	return saveResult;
}

//
int Box_PlasmaMine(object oTarget, int mineLevel) {
	
	//
	int dc = 10 + 2*mineLevel;
	int damage = 8 + 8*mineLevel;
	int damageType = DAMAGE_TYPE_FIRE;
	float duration = 15.0;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_REFLEX);
	int saveType = SAVING_THROW_TYPE_FIRE;
	
	//
	effect ePlasma = EffectAbilityDecrease(ABILITY_CONSTITUTION, 4);
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, ePlasma, oTarget, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, damage/2, damageType);
	}
	
	return saveResult;
}

//
int Box_SonicMine(object oTarget, int mineLevel) {
	
	//
	int dc = 10 + 2*mineLevel;
	int damage = 8 + 8*mineLevel;
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
		Box_DealDamage(oTarget, damage/2, damageType);
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSonic, oTarget, 9.0);
	}
	
	return saveResult;
}

//
int Box_PoisonMine(object oTarget, int mineLevel) {
	
	//
	int dc = 10 + 2*mineLevel;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_REFLEX);
	int saveType = SAVING_THROW_TYPE_POISON;
	
	//
	effect ePoison;
	effect eSave;
	
	if (mineLevel == 1) {
		effect ePoison = EffectPoison(POISON_MINE_1);
		// effect eSave = EffectPoison(POISON_MINE_1_SAVE);
	}
	else if (mineLevel == 2) {
		effect ePoison = EffectPoison(POISON_MINE_2);
		// effect eSave = EffectPoison(POISON_MINE_2_SAVE);
	}
	else if (mineLevel == 3) {
		effect ePoison = EffectPoison(POISON_MINE_3);
		// effect eSave = EffectPoison(POISON_MINE_3_SAVE);
	}
	else if (mineLevel == 4) {
		effect ePoison = EffectPoison(POISON_MINE_4);
		// effect eSave = EffectPoison(POISON_MINE_4_SAVE);
	}
	else {
		effect ePoison = EffectPoison(POISON_MINE_5);
		// effect eSave = EffectPoison(POISON_MINE_5_SAVE);
	}
	
	// Nov 2015 - Just using regular poison effect
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
	
	// int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	// if (saveResult == SAVE_FAILED) {
		
		// ApplyEffectToObject(DURATION_TYPE_PERMENANT, ePoison, oTarget);
	// }
	
	// else if (saveResult == SAVED) {
		// ApplyEffectToObject(DURATION_TYPE_PERMENANT, eSave, oTarget);
	// }
	
	return -1;
}

//
int Box_FlashMine(object oTarget, int mineLevel) {
	
	//
	int dc = 10 + 2*mineLevel;
	float duration = 4.5 + 1.5*mineLevel;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_NONE;
	
	//
	effect eStun = EffectStunned();
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration);
	}
	//
	else if (saveResult == SAVED) {
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration/3.0);
	}
	
	return saveResult;
}







