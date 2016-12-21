// box_inc_powers

// Written by Box
// Include file for force powers

//
void Box_SpeedPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 18.0 + 3.0*force;
	
	//
	effect eSpeed = EffectHaste();
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSpeed, oTarget, duration);
}

//
int Box_SweepPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d4(force);
	int damageType = DAMAGE_TYPE_BLUDGEONING;
	float duration = 3.0;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_NONE;
	
	effect eSweep = EffectKnockdown();
	
	
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eSweep, duration);
		DelayCommand(0.9, Box_DealForceDamageAction(oUser, oTarget, damage, damageType));
	}
	//
	else if (saveResult == SAVED)  {
		Box_DealForceDamage(oUser, oTarget, damage/3, damageType);
	}
	
	return saveResult;
}

//
int Box_PushPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d6(force);
	int damageType = DAMAGE_TYPE_BLUDGEONING;
	float duration = 0.5 + 0.1*force;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_NONE;
	
	//
	effect ePush = EffectForcePushed();
	ePush = EffectLinkEffects(ePush, EffectVisualEffect(VFX_IMP_FORCE_PUSH));
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, ePush, oTarget, duration);
		DelayCommand(duration + 0.3, Box_DealForceDamageAction(oUser, oTarget, damage, damageType));
	}
	//
	else if (saveResult == SAVED) {
		Box_DealForceDamage(oUser, oTarget, damage/2, damageType);
	}
	
	return saveResult;
}

//
int Box_IonizePower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d4(force);
	int damageType = DAMAGE_TYPE_ION;
	float duration = 9.0 + 0.25*force;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_ION;
	
	//
	effect eStun = EffectDroidStun();
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eStun, duration);
		Box_DealForceDamage(oUser, oTarget, damage, damageType);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealForceDamage(oUser, oTarget, damage/3, damageType);
	}
	
	return saveResult;
}

//
int Box_SleepPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 6.0 + 0.25*force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	//
	effect eSleep = EffectSleep();
	effect eDrowsy = EffectAbilityDecrease(ABILITY_DEXTERITY, 2);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eSleep, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_PerformForceEffect(oUser, oTarget, eDrowsy, 6.0);
	}
	
	return saveResult;
}

int Box_BlindPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 12.0 + 0.5*force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	//
	effect eBlind = EffectMissChance(25);
	eBlind = EffectLinkEffects(eBlind, EffectACDecrease(4, AC_DODGE_BONUS, AC_VS_DAMAGE_TYPE_ALL));
	effect eDistract = EffectACDecrease(2, AC_DODGE_BONUS, AC_VS_DAMAGE_TYPE_ALL);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eBlind, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_PerformForceEffect(oUser, oTarget, eDistract, 6.0);
	}
	
	return saveResult;
}

//
int Box_AfflictPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 18.0 + 2.0*force;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_POISON;
	
	//
	effect eSlow = EffectMovementSpeedDecrease(50);
	eSlow = EffectLinkEffects(eSlow, EffectAbilityDecrease(ABILITY_STRENGTH, 4));
	eSlow = EffectLinkEffects(eSlow, EffectAbilityDecrease(ABILITY_DEXTERITY, 4));
	effect eHalfSlow = EffectMovementSpeedDecrease(75);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eSlow, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_PerformForceEffect(oUser, oTarget, eHalfSlow, 9.0);
	}
	
	return saveResult;
}

//
void Box_ValorPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 9.0 + force;
	
	//
	effect eValor = EffectAttackIncrease(3, ATTACK_BONUS_MISC);
	eValor = EffectLinkEffects(eValor,  EffectACIncrease(3, AC_DODGE_BONUS, AC_VS_DAMAGE_TYPE_ALL));
	//eValor = EffectLinkEffects(eValor,  EffectBlasterDeflectIncrease(2));
	//eValor = EffectLinkEffects(eValor,  EffectSavingThrowIncrease(SAVING_THROW_ALL, 2, SAVING_THROW_TYPE_ALL));
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eValor, oTarget, duration);
}

//
void Box_FuryPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 9.0 + force;
	
	//
	effect eFury = EffectAttackIncrease(4, ATTACK_BONUS_MISC);
	eFury = EffectLinkEffects(eFury, EffectDamageIncrease(4, DAMAGE_TYPE_DARK_SIDE));
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eFury, oTarget, duration);
}

//
int Box_ThrowLightsaberPower(object oUser, object oTarget, int force) {
	
	//
	int damage = d6(force);
	int powerDC = 10 + force;
	int save = SAVING_THROW_REFLEX;
	int saveType = SAVING_THROW_TYPE_NONE;
	
	//
	effect eThrow = EffectLightsaberThrow(oTarget, OBJECT_INVALID, OBJECT_INVALID, damage);
	effect eMiss = EffectLightsaberThrow(oTarget, OBJECT_INVALID, OBJECT_INVALID, damage/3);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eThrow, oUser, 3.0);
	}
	//
	else if (saveResult == SAVED) {
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eMiss, oUser, 3.0);
	}
	
	return saveResult;
}

//
void Box_ShieldPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 10.0 + 2.0*force;
	
	//
	// TODO: Shield Effect
	//effect eShield = EffectDamageImmunity(
	
	//
	//ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oTarget, duration);
}

//
void Box_BodyPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 18.0 + 3.0*force;
	
	//
	effect eBody = EffectRegenerate(2, 3.0);
	eBody = EffectLinkEffects(eBody, EffectImmunity(IMMUNITY_TYPE_POISON));
	eBody = EffectLinkEffects(eBody, EffectImmunity(IMMUNITY_TYPE_ABILITY_DECREASE));
	
	// From box_inc_healing
	Box_RemoveEffects(EFFECT_TYPE_POISON, oUser);
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBody, oTarget, duration);
}

//
void Box_EnlightenPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 18.0 + 3.0*force;
	
	// Force Speed
	effect eSpeed = EffectHaste();
	// Force Body
	effect eBody = EffectRegenerate(2, 3.0);
	eBody = EffectLinkEffects(eBody, EffectImmunity(IMMUNITY_TYPE_POISON));
	eBody = EffectLinkEffects(eBody, EffectImmunity(IMMUNITY_TYPE_ABILITY_DECREASE));
	// Force Agility
	effect eBonus = EffectModifyAttacks(1);
	
	// TODO: Check whether user has appropriate spells
	int hasSpeed = 1;
	int hasBody = 1;
	int hasAgility = 1;
	
	if (hasSpeed) {
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSpeed, oTarget, duration);
	}
	if (hasSpeed) {
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBody, oTarget, duration);
		// From box_inc_healing
		Box_RemoveEffects(EFFECT_TYPE_POISON, oUser);
	}
	if (hasSpeed) {
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBonus, oTarget, duration);
	}
}

//
int Box_FearPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 9.0 + 0.25*force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_FEAR;
	
	//
	effect eFear = EffectHorrified();
	effect eRattle = EffectAttackIncrease(2, ATTACK_BONUS_MISC);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eFear, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_PerformForceEffect(oUser, oTarget, eRattle, 6.0);
	}
	
	return saveResult;
}

//
int Box_ParalysisPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 12.0 + 0.5*force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	//
	effect eParalyze = EffectParalyze();
	effect eSlow = EffectMovementSpeedDecrease(50);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eParalyze, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_PerformForceEffect(oUser, oTarget, eSlow, 6.0);
	}
	
	return saveResult;
}

//
int Box_ChokePower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d6(force);
	int damageType = DAMAGE_TYPE_DARK_SIDE;
	float duration = 9.0;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_DARK_SIDE;
	
	//
	effect eChoke = EffectChoke();
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
	
		Box_PerformForceEffect(oUser, oTarget, eChoke, duration);
		Box_DealForceDamageIterative(oUser, oTarget, damage, damageType, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealForceDamage(oUser, oTarget, damage/3, damageType);
	}
	
	return saveResult;
}

//
int Box_LevitatePower(object oUser, object oTarget, int force)  {
	
	//
	int powerDC = 10 + force;
	float duration = 9.0 + 0.25*force;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_NONE;
	
	//
	effect eLevitate = EffectWhirlWind();
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eLevitate, duration);
	}
	//
	else if (saveResult == SAVED) {
	}
	
	return saveResult;
}

//
int Box_SuppressPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d6(force);
	float duration = 18.0 + 2.0*force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_LIGHT_SIDE;
	
	//
	effect eSuppress = EffectAbilityDecrease(ABILITY_WISDOM, 6);
	eSuppress = EffectLinkEffects(eSuppress, EffectAbilityDecrease(ABILITY_CHARISMA, 6));
	effect eHalfSuppress = EffectAbilityDecrease(ABILITY_WISDOM, 4);
	eHalfSuppress = EffectLinkEffects(eHalfSuppress, EffectAbilityDecrease(ABILITY_CHARISMA, 4));
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealForcePointDamage(oUser, oTarget, damage);
		Box_PerformForceEffect(oUser, oTarget, eSuppress, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_PerformForceEffect(oUser, oTarget, eHalfSuppress, 9.0);
	}
	
	return saveResult;
}

//
int Box_ConfusionPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 12.0 + force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	//
	effect eConfuse = EffectFactionModifier(STANDARD_FACTION_FRIENDLY_1);
	//effect eDistract = EffectFactionModifier(STANDARD_FACTION_NEUTRAL);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eConfuse, duration);
	}
	//
	else if (saveResult == SAVED) {
		//ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDistract, oTarget, 9.0);
	}
	
	return saveResult;
}

//
int Box_MassConfusionPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 12.0 + force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	//
	// TODO: Figure out what faction to use here
	effect eConfuse = EffectFactionModifier(STANDARD_FACTION_INSANE);
	//effect eDistract = EffectFactionModifier(STANDARD_FACTION_NEUTRAL);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eConfuse, duration);
	}
	//
	else if (saveResult == SAVED) {
		//ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDistract, oTarget, 9.0);
	}
	
	return saveResult;
}

//
void Box_AgilityPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 18.0 + 3.0*force;
	
	//
	effect eBonus = EffectModifyAttacks(1);
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBonus, oTarget, duration);
}

//
int Box_LightPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_LIGHT_SIDE;
	int damageType = DAMAGE_TYPE_LIGHT_SIDE;
	
	int morality = GetGoodEvilValue(oTarget);
	effect eSleep = EffectSleep();
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		int damage = 0;
		int hitLeft = GetCurrentHitPoints(oTarget);
		float duration = 0.0;
		int i;
		for (i = 0; i < force; i++) {
			int evil = (100 - morality) / 5;
			int damageCalc = Random(evil) + 1;
			damageCalc = Box_AdjustForceDamage(oUser, damageCalc);
			
			if (damageCalc > hitLeft)
				duration = duration + (0.1f * damageCalc);
			else
				damage = damage + damageCalc;
			
			morality = morality + 1;
		}
		
		if (morality > 100)
			morality = 100;
		
		SetGoodEvilValue(oTarget, morality);
		
		if (damage > 0)
			Box_DealDamage(oTarget, damage, damageType);
		
		if (duration > 0.0f)
			Box_PerformForceEffect(oUser, oTarget, eSleep, duration);
	}
	//
	else if (saveResult == SAVED) {
	
		int evil = (100 - GetGoodEvilValue(oTarget)) / 5;
		int saveDamage = 0;
		int i;
		for (i = 0; i < force; i++)
			saveDamage = saveDamage + Random(evil) + 1;
		saveDamage = saveDamage / 4;
		saveDamage = Box_AdjustForceDamage(oUser, saveDamage);
		
		int hitLeft = GetCurrentHitPoints(oTarget);
		if (saveDamage > hitLeft)
			saveDamage = hitLeft;
		
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}

//
int Box_LightningPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d12(force);
	int damageType = DAMAGE_TYPE_DARK_SIDE;
	float duration = 3.0;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_DARK_SIDE;
	
	//
	effect eStun = EffectStunned();
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealForceDamage(oUser, oTarget, damage, damageType);
		Box_PerformForceEffect(oUser, oTarget, eStun, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealForceDamage(oUser, oTarget, damage/3, damageType);
	}
	
	return saveResult;
}

//
int Box_DrainPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d6(force);
	int damageType = DAMAGE_TYPE_DARK_SIDE;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_DARK_SIDE;
	
	//
	effect eDrain = EffectForceDrain(damage/3);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		int heal = Box_DealForceDamage(oUser, oTarget, damage, damageType) / 2;
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(heal), oUser);
		ApplyEffectToObject(DURATION_TYPE_INSTANT, eDrain, oTarget);
	}
	//
	else if (saveResult == SAVED) {
		int heal = Box_DealForceDamage(oUser, oTarget, damage/3, damageType) / 2;
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(heal), oUser);
	}
	
	return saveResult;
}

//
void Box_MeditationPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 18.0 + 3.0*force;
	
	//
	effect eBattle = EffectAttackIncrease(3, ATTACK_BONUS_MISC);
	eBattle = EffectLinkEffects(eBattle,  EffectACIncrease(3, AC_DODGE_BONUS, AC_VS_DAMAGE_TYPE_ALL));
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBattle, oTarget, duration);
}

//
void Box_MasterMeditationPower(object oUser, object oTarget, int force) {
	
	//
	float duration = 18.0 + 3.0*force;
	
	//
	effect eBattle = EffectAttackIncrease(3, ATTACK_BONUS_MISC);
	eBattle = EffectLinkEffects(eBattle,  EffectACIncrease(3, AC_DODGE_BONUS, AC_VS_DAMAGE_TYPE_ALL));
	// TODO Figure out what this does
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBattle, oTarget, duration);
}

//
int Box_CrushPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int damage = d6(force);
	int damageType = DAMAGE_TYPE_DARK_SIDE;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_DARK_SIDE;
	
	//
	effect eCrush = EffectCrush();
	effect eDrop = EffectForcePushed();
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
	
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eCrush, oTarget, 2.0);
		DelayCommand(1.64, Box_DealForceDamageAction(oUser, oTarget, damage, damageType));
		DelayCommand(2.0, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDrop, oTarget));	
	}
	//
	else if (saveResult == SAVED) {
		Box_DealForceDamage(oUser, oTarget, damage/3, damageType);
	}
	
	return saveResult;
}

//
int Box_SeverPower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_LIGHT_SIDE;
	
	//
	effect ePsychic = EffectCutSceneParalyze();
	effect eSever = EffectAbilityDecrease(ABILITY_STRENGTH, 10);
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_CONSTITUTION, 10));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_DEXTERITY, 10));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_INTELLIGENCE, 10));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_WISDOM, 10));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_CHARISMA, 10));
	
	// TODO: Fix this mess
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, ePsychic, oTarget, 3.0);
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, eSever, oTarget);
	GrantFeat(FEAT_FORCE_SEVER, oTarget);
	
	return 0;
}

//
int Box_ConsumePower(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_DARK_SIDE;
	
	
	// TODO: Fix this mess
	//
	effect eHorror = EffectCutSceneHorrified();
	effect eDeath = EffectDamage(GetMaxHitPoints(oTarget));
	effect eSever = EffectMovementSpeedDecrease(10);
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_STRENGTH, 6));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_CONSTITUTION, 6));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_DEXTERITY, 6));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_INTELLIGENCE, 6));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_WISDOM, 6));
	eSever = EffectLinkEffects(eSever, EffectAbilityDecrease(ABILITY_CHARISMA, 6));
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eHorror, oTarget, 3.0);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType) && Box_IsJedi(oTarget)) {
		
		DelayCommand(3.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, eDeath, oTarget));
		DelayCommand(3.0, AddBonusForcePoints(oUser, 1));
	}
	//
	else if (Box_IsJedi(oTarget)) {
		
		DelayCommand(3.0, ApplyEffectToObject(DURATION_TYPE_PERMANENT, eSever, oTarget));
	}
	//
	else if (saveResult == SAVED) {
		
	}
	
	return saveResult;
}

//
void Box_BreathControl(object oUser, object oTarget, int force) {
	
	float duration = 120.0 + 15.0*force;
	
	//
	effect eBreath = EffectImmunity(IMMUNITY_TYPE_POISON);
	
	//
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBreath, oTarget, duration);
}

//
int Box_BeastTrick(object oUser, object oTarget, int force) {
	
	//
	int powerDC = 10 + force;
	float duration = 24.0 + 3.0*force;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	//
	effect eDistract = EffectFactionModifier(STANDARD_FACTION_NEUTRAL);
	
	int saveResult = Box_RollForceSavingThrow(oUser, oTarget, powerDC, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_PerformForceEffect(oUser, oTarget, eDistract, duration);
	}
	//
	else if (saveResult == SAVED) {
	}
	
	return saveResult;
}

