// box_inc_save

// Written by Box
// Include file for saving throws and damage

int SAVE_FAILED = 0;
int SAVED = 1;
int IMMUNE = 2;


//
int Box_DealDamage(object oTarget, int damage, int damageType) {
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(damage, damageType), oTarget);
	return damage;
}

//
void Box_DealDamageAction(object oTarget, int damage, int damageType) {
	
	Box_DealDamage(oTarget, damage, damageType);
}

//
void Box_DealDamageIterative(object oTarget, int damage, int damageType, float duration) {
	
	float threshhold = 1.5;
	
	if (duration > threshhold) {
		
		int damageNow = FloatToInt((threshhold / duration) * damage);
		Box_DealDamage(oTarget, damageNow, damageType);
		DelayCommand(threshhold, Box_DealDamageIterative(oTarget, damage - damageNow, damageType, duration - threshhold));
	}
	else {
		Box_DealDamage(oTarget, damage, damageType);
	}
}

//
int Box_CalculateBaseSave(object oTarget, int save) {
	
	//
	if (save == SAVING_THROW_FORT) {
		return GetFortitudeSavingThrow(oTarget);
	}
	//
	else if (save == SAVING_THROW_REFLEX) {
		return GetReflexSavingThrow(oTarget);
	}
	//
	else if (save == SAVING_THROW_WILL) {
		return GetWillSavingThrow(oTarget);
	}
	//
	else {
		return 0;
	}
}

//
int Box_GetBestSave(object oTarget, int save1, int save2) {
	
	//
	if (Box_CalculateBaseSave(oTarget, save1) > Box_CalculateBaseSave(oTarget, save2)) {
		return save1;
	}
	//
	else {
		return save2;
	}
}

//
int Box_RollSavingThrow(object oTarget, int dc, int save, int saveType) {
	
	int saveResult;
	
	//
	if (save == SAVING_THROW_FORT) {
		saveResult = FortitudeSave(oTarget, dc, saveType);
	}
	//
	else if (save == SAVING_THROW_REFLEX) {
		saveResult = ReflexSave(oTarget, dc, saveType);
	}
	//
	else if (save == SAVING_THROW_WILL) {
		saveResult = WillSave(oTarget, dc, saveType);
	}
	//
	else {
		saveResult = SAVE_FAILED;
	}
	
	return saveResult;
}