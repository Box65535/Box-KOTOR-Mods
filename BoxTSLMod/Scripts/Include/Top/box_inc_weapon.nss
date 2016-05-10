// box_inc_weapon

// Written by Box
// Include file for common weapon patterns

// 
int Box_DamageWeapon(object oTarget, int dc, int damage, int saveDamage,
		int damageType, int save, int saveType) {
	
	// Damage
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	if (saveResult == SAVE_FAILED)
		Box_DealDamage(oTarget, damage, damageType);
	else if (saveResult == SAVED)
		Box_DealDamage(oTarget, saveDamage, damageType);
	
	return saveResult;
}

// 
int Box_EffectWeapon(object oTarget, int dc, effect eEffect, int save, int saveType, float duration) {
	
	// Effect
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	if (saveResult == SAVE_FAILED)
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eEffect, oTarget, duration);
		
	return saveResult;
}

//
int Box_DamageAndEffectWeapon(object oTarget, int dc, int damage, int saveDamage,
		effect eEffect, int damageType, int save, int saveType, float duration) {
	
	// Damage/Effects
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

//
int Box_PiercingWeapon(object oTarget, int dc, int damage, int saveDamage, int save) {
	
	// Properties
	int damageType = DAMAGE_TYPE_PIERCING;
	int saveType = SAVING_THROW_TYPE_NONE;
	
	// Damage
	return Box_DamageWeapon(oTarget, dc, damage, saveDamage, damageType, save, saveType);
}

//
int Box_PlasmaWeapon(object oTarget, int dc, int damage, int saveDamage, int save) {
	
	// Properties
	int damageType = DAMAGE_TYPE_FIRE;
	int saveType = SAVING_THROW_TYPE_FIRE;
	
	// Damage
	return Box_DamageWeapon(oTarget, dc, damage, saveDamage, damageType, save, saveType);
}

//
int Box_FlashWeapon(object oTarget, int dc, int save, float duration) {
	
	// Properties
	effect eStun = EffectStunned();
	int saveType = SAVING_THROW_TYPE_NONE;
	
	// Damage
	return Box_EffectWeapon(oTarget, eStun, save, saveType, duration);
}

//
int Box_StunWeapon(object oTarget, int dc, int save, float duration) {
	
	// Properties
	effect eStun = EffectStunned();
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	// Damage
	return Box_EffectWeapon(oTarget, eStun, save, saveType, duration);
}

//
int Box_ConfuseWeapon(object oTarget, int dc, int save, float duration) {
	
	// Properties
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	effect eConfuse = EffectFactionModifier(STANDARD_FACTION_INSANE);
	
	// Damage
	return Box_EffectWeapon(oTarget, eStun, save, saveType, duration);
}

//
int Box_IonWeapon(object oTarget, int dc, int damage, int saveDamage, int droidDamage,
		int save, float duration) {
	
	// Properties
	int damageType = DAMAGE_TYPE_ION;
	int saveType = SAVING_THROW_TYPE_ION;
	effect eStun = EffectDroidStun();
	
	// Damage/Effects
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	if (saveResult == SAVE_FAILED) {
		
		// Droid
		if (Box_IsDroid(oTarget)) {
			Box_DealDamage(oTarget, droidDamage, damageType);
			ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration);
		}
		// Human
		else {
			Box_DealDamage(oTarget, damage, damageType);
		}
	}
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}

//
int Box_ColdWeapon(object oTarget, int dc, int damage, int saveDamage, int save, float duration) {
	
	// Properties
	int damageType = DAMAGE_TYPE_COLD;
	int saveType = SAVING_THROW_TYPE_COLD;
	effect eStun;
	
	if (Box_IsDroid(oTarget))
		eStun = EffectDroidStun();
	else
		eStun = EffectParalyze();
	
	// Damage/Effects
	return Box_DamageAndEffectWeapon(oTarget, dc, damage, saveDamage, damageType, eStun,
			save, saveType, duration);
}

//
int Box_FireWeapon(object oTarget, int dc, int damage, int saveDamage, int save, float duration) {
	
	// Properties
	int damageType = DAMAGE_TYPE_FIRE;
	int saveType = SAVING_THROW_TYPE_FIRE;
	effect eHorror = EffectHorrified();
	
	// Damage/Effects
	return Box_DamageAndEffectWeapon(oTarget, dc, damage, saveDamage, damageType, eHorror,
			save, saveType, duration);
}

//
int Box_ShockWeapon(object oTarget, int dc, int damage, int saveDamage, int save, float duration) {
	
	// Properties
	int damageType = DAMAGE_TYPE_ELECTRIC;
	int saveType = SAVING_THROW_TYPE_ELECTRIC;
	effect eStun;
	
	if (Box_IsDroid(oTarget))
		eStun = EffectDroidStun();
	else
		eStun = EffectStunned();
	
	// Damage/Effects
	return Box_DamageAndEffectWeapon(oTarget, dc, damage, saveDamage, damageType, eStun,
			save, saveType, duration);
}

//
int Box_SonicWeapon(object oTarget, int dc, int damage, int saveDamage, int save, int abilities, float duration) {
	
	// Properties
	int damageType = DAMAGE_TYPE_SONIC;
	int saveType = SAVING_THROW_TYPE_SONIC;
	
	effect eSonic = EffectAbilityDecrease(ABILITY_INTELLIGENCE, abilities);
	eSonic = EffectLinkEffects(eSonic, EffectAbilityDecrease(ABILITY_WISDOM, abilities));
	eSonic = EffectLinkEffects(eSonic, EffectAbilityDecrease(ABILITY_CHARISMA, abilities));
	
	// Damage/Effects
	return Box_DamageAndEffectWeapon(oTarget, dc, damage, saveDamage, damageType, eSonic,
			save, saveType, duration);
}

// 
int Box_PoisonWeapon(object oTarget, int poison) {
	
	// I think this is the best we can do
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectPoison(poison), oTarget);
	return SAVE_FAILED;
}

//
int Box_BurnWeapon(object oTarget, int dc, int damage, int saveDamage, int save, int abilities, float duration) {
	
	// Properties
	int damageType = DAMAGE_TYPE_FIRE;
	int saveType = SAVING_THROW_TYPE_FIRE;
	effect eBurn = EffectAbilityDecrease(ABILITY_CONSTITUTION, abilities);
	
	// Damage/Effects
	return Box_DamageAndEffectWeapon(oTarget, dc, damage, saveDamage, damageType, eBurn,
			save, saveType, duration);
}

//
int Box_DetonatorWeapon(object oTarget, int dc, int damage, int saveDamage, int save) {
	
	// Properties
	int damageType = DAMAGE_TYPE_BLASTER;
	int saveType = SAVING_THROW_TYPE_NONE;
	float duration = 0.1;
	effect ePush = EffectForcePushTargetted(GetSpellTargetLocation());
	
	// Damage/Effects
	return Box_DamageAndEffectWeapon(oTarget, dc, damage, saveDamage, damageType, eStun,
			save, saveType, duration);
}



