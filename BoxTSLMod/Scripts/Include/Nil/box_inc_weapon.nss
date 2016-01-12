// box_inc_weapon

// Written by Box
// Include file for auxiliary weapon scripts

int POISON_DART = 75;
int POISON_GRENADE = 76;
int POISON_RADIATION = 77;

//
int Box_MinorSonicGrenade(object oTarget) {
	
	//
	int dc = 10;
	int damage = 12;
	int damageType = DAMAGE_TYPE_SONIC;
	float duration = 30.0;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_SONIC;
	
	//
	effect eSonic = EffectAbilityDecrease(ABILITY_INTELLIGENCE, 2);
	eSonic = EffectLinkEffects(eSonic, EffectAbilityDecrease(ABILITY_WISDOM, 2));
	eSonic = EffectLinkEffects(eSonic, EffectAbilityDecrease(ABILITY_CHARISMA, 2));
	
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
int Box_FragGrenade(object oTarget) {
	
	//
	int dc = 14;
	int damage = 24;
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
	int dc = 14;
	float duration = 6.0;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_NONE;
	
	//
	effect eStun = effectStunned();
	effect eDistract = EffectACDecrease(1, AC_DODGE_BONUS, AC_VS_DAMAGE_TYPE_ALL);
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration);
	}
	//
	else if (saveResult == SAVED) {
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDistract, oTarget, 6.0);
	}
	
	return saveResult;
}

//
int Box_PlasmaGrenade(object oTarget) {
	
	//
	int dc = 18;
	int damage = 36;
	int saveDamage = 12;
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
	int dc = 22;
	int damage = 60;
	int saveDamage = 20;
	int damageType = DAMAGE_TYPE_BLASTER;
	int save = SAVING_THROW_REFLEX;
	int saveType = SAVING_THROW_TYPE_BLASTER;
	
	// TODO: Force push location effect
	
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
int Box_PoisonGrenade(object oTarget) {
	
	//
	int dc = 18;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_REFLEX);
	int saveType = SAVING_THROW_TYPE_POISON;
	
	//
	effect ePoison = EffectPoison(POISON_GRENADE);
	// effect eSave = EffectPoison(POISON_GRENADE_SAVE);
	
	// Nov 2015 - Just using poison effect
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
	
	// int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	// if (saveResult == SAVE_FAILED) {
		
		// ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
	// }
	//
	// else if (saveResult == SAVED) {
		// ApplyEffectToObject(DURATION_TYPE_PERMANENT, eSave, oTarget);
	// }
	
	return -1;
}

//
int Box_SonicGrenade(object oTarget) {
	
	//
	int dc = 18;
	int damage = 24;
	int saveDamage = 8;
	int damageType = DAMAGE_TYPE_SONIC;
	float duration = 30.0;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_REFLEX, SAVING_THROW_WILL);
	int saveType = SAVING_THROW_TYPE_SONIC;
	
	//
	effect eSonic = EffectAbilityDecrease(ABILITY_INTELLIGENCE, 6);
	eSonic = EffectLinkEffects(eSonic, EffectAbilityDecrease(ABILITY_WISDOM, 6));
	eSonic = EffectLinkEffects(eSonic, EffectAbilityDecrease(ABILITY_CHARISMA, 6));
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSonic, oTarget, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
		//ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSonic, oTarget, 9.0);
	}
	
	return saveResult;
}

//
int Box_ExplosiveRocket(object oTarget) {
	
	//
	int dc = 18;
	int damage = 42;
	int saveDamage = 14;
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
int Box_RadioactiveRocket(object oTarget) {
	
	//
	int dc = 18;
	int damage = 20;
	int damageType = DAMAGE_TYPE_FIRE;
	int save = Box_GetBestSave(oTarget, SAVING_THROW_FORT, SAVING_THROW_REFLEX);
	int saveType = SAVING_THROW_TYPE_FIRE;
	
	//
	effect ePoison = EffectPoison(POISON_RADIATION);
	// effect eSave = EffectPoison(POISON_RADIATION_SAVE);
	
	// Nov 2015 - Just using poison effect
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
	Box_DealDamage(oTarget, damage, damageType);
	
	// int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	// if (saveResult == SAVE_FAILED) {
		
		// Box_DealDamage(oTarget, damage, damageType);
		// ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
	// }
	//
	// else if (saveResult == SAVED) {
		// Box_DealDamage(oTarget, damage, damageType);
		// ApplyEffectToObject(DURATION_TYPE_PERMANENT, eSave, oTarget);
	// }
	
	return -1;
}

//
int Box_FlamethrowerWeapon(object oTarget) {
	
	//
	int dc = 16;
	int damage = 30;
	int saveDamage = 10;
	int damageType = DAMAGE_TYPE_FIRE;
	float duration = 6.0;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_FIRE;
	
	//
	effect eFear = EffectHorrified();
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eFear, oTarget, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}

//
int Box_ShockWeapon(object oTarget) {
	
	//
	int dc = 16;
	int damage = 36;
	int saveDamage = 12;
	int damageType = DAMAGE_TYPE_ELECTRICAL;
	float duration = 3.0;
	int save = SAVING_THROW_FORT;
	int saveType = SAVING_THROW_TYPE_ELECTRICAL;
	
	//
	effect eStun = EffectStunned();
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}

//
int Box_CarboniteWeapon(object oTarget) {
	
	//
	int dc = 20;
	int damage = 30;
	int saveDamage = 10;
	int damageType = DAMAGE_TYPE_COLD;
	float duration = 15.0;
	int save = SAVING_THROW_FORT;
	int saveType = SAVING_THROW_TYPE_COLD;
	
	//
	effect eStun;
	if (Box_IsDroid()) {
		eStun = EffectDroidStun();
	}
	else {
		eStun = EffectParalyze();
	}
	effect eCold = EffectAbilityDecrease(ABILITY_DEXTERITY, 4);
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration);
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eCold, oTarget, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eCold, oTarget, 6.0);
	}
	
	return saveResult;
}

//
int Box_SonicWeapon(object oTarget) {
	
	//
	int dc = 20;
	int damage = 24;
	int saveDamage = 8;
	int damageType = DAMAGE_TYPE_SONIC;
	float duration = 30.0;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_SONIC;
	
	//
	effect eSonic = EffectAbilityDecrease(ABILITY_INTELLIGENCE, 6);
	eSonic = EffectLinkEffects(eSonic, EffectAbilityDecrease(ABILITY_WISDOM, 6));
	eSonic = EffectLinkEffects(eSonic, EffectAbilityDecrease(ABILITY_CHARISMA, 6));
	
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
int Box_IonBlastWeapon(object oTarget) {
	
	//
	int dc = 16;
	int damage = 30;
	int saveDamage = 10;
	int damageType = DAMAGE_TYPE_ION;
	float duration = 9.0;
	int save = SAVING_THROW_FORT;
	int saveType = SAVING_THROW_TYPE_ION;
	
	effect eStun = EffectDroidStun();
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
		
		if (Box_IsDroid(oTarget)) 
			ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration);
		
	}
	//
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
		
		//if (Box_IsDroid(oTarget)) 
		//	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, 3.0);
		
	}
	
	return saveResult;
}

//
int Box_StunRayWeapon(object oTarget) {
	
	//
	int dc = 16;
	float duration = 12.0;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING;
	
	//
	effect eStun = EffectStunned();
	effect eDistract = EffectACDecrease(2, AC_DODGE_BONUS, AC_VS_DAMAGE_TYPE_ALL);
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration);
	}
	//
	else if (saveResult == SAVED) {
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDistract, oTarget, 6.0);
	}
	
	return saveResult;
}

//
int Box_PlasmaWeapon(object oTarget) {
	
	//
	int dc = 20;
	int damage = 48;
	int saveDamage = 16;
	int damageType = DAMAGE_TYPE_FIRE;
	float duration = 30.0;
	int save = SAVING_THROW_FORT;
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
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}

//
int Box_DroidHackWeapon(object oTarget) {
	
	//
	int dc = 20;
	float duration = 24.0;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_MIND_AFFECTING; // TODO: Verify that Droids aren't immune to this
	
	//
	effect eConfuse = EffectFactionModifier(STANDARD_FACTION_FRIENDLY_1);
	effect eDistract = EffectFactionModifier(STANDARD_FACTION_NEUTRAL);
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eConfuse, oTarget, duration);
	}
	//
	else if (saveResult == SAVED) {
		//ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDistract, oTarget, 9.0);
	}
	
	return saveResult;
}

//
int Box_GrapplingWeapon(object oTarget) {
	
	//
	int dc = 16;
	float duration = 12.0;
	int save = SAVING_THROW_REFLEX;
	int saveType = SAVING_THROW_TYPE_NONE;
	
	//
	effect eChoke = EffectChoke();
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eChoke, oTarget, duration);
	}
	//
	else if (saveResult == SAVED) {
		// ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eChoke, oTarget, 3.0);
	}
	
	return saveResult;
}

//
int Box_PoisonDartWeapon(object oTarget) {
	
	//
	int dc = 16;
	int save = SAVING_THROW_FORT;
	int saveType = SAVING_THROW_TYPE_POISON;
	
	//
	effect ePoison = EffectPoison(POISON_DART);
	// effect eSave = EffectPoison(POISON_DART_SAVE);
	
	// Nov 2015 - Just apply poison
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
	
	// int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	// if (saveResult == SAVE_FAILED) {
		
		// ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
	// }
	//
	// else if (saveResult == SAVED) {
		// ApplyEffectToObject(DURATION_TYPE_PERMANENT, eSave, oTarget);
	// }
	
	return -1;
}

//
void Box_AntiArmorWeapon(object oTarget) {
	
	//
	int dc = 24;
	int damage = 90;
	int saveDamage = 30;
	int damageType = DAMAGE_TYPE_PIERCING;
	int save = SAVING_THROW_REFLEX;
	int saveType = SAVING_THROW_TYPE_NONE;
	
	// TODO: Push effect
	
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
int Box_MinorFlamethrowerWeapon(object oTarget) {
	
	//
	int dc = 12;
	int damage = 10;
	int damageType = DAMAGE_TYPE_FIRE;
	float duration = 3.0;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_FIRE;
	
	//
	effect eFear = EffectHorrified();
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eFear, oTarget, duration);
	}
	//
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, damage/2, damageType);
	}
	
	return saveResult;
}

//
int Box_MinorCarboniteWeapon(object oTarget) {
	
	//
	int dc = 12;
	int damage = 8;
	int damageType = DAMAGE_TYPE_COLD;
	float duration = 6.0;
	int save = SAVING_THROW_FORT;
	int saveType = SAVING_THROW_TYPE_COLD;
	
	//
	effect eStun;
	if (Box_IsDroid()) {
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
int Box_PlasmaFlamethrowerWeapon(object oTarget) {
	
	//
	int dc = 24;
	int damage = 75;
	int saveDamage = 25;
	int damageType = DAMAGE_TYPE_FIRE;
	float duration = 30.0;
	int save = SAVING_THROW_FORT;
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
		Box_DealDamage(oTarget, saveDamage, damageType);
	}
	
	return saveResult;
}

//
int Box_DisruptorWeapon(object oTarget) {
	
	//
	int dc = 24;
	int damage = 60;
	int saveDamage = 20;
	int damageType = DAMAGE_TYPE_UNSTOPPABLE;
	int save = SAVING_THROW_WILL;
	int saveType = SAVING_THROW_TYPE_SONIC;
	
	// TODO: Decide what is going on with this weapon
	
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
int Box_IonCannonWeapon(object oTarget) {
	
	//
	int dc = 24;
	int damage = 75;
	int saveDamage = 25;
	int damageType = DAMAGE_TYPE_ION;
	float duration = 12.0;
	int save = SAVING_THROW_FORT;
	int saveType = SAVING_THROW_TYPE_ION;
	
	effect eStun = EffectDroidStun();
	
	int saveResult = Box_RollSavingThrow(oTarget, dc, save, saveType);
	//
	if (saveResult == SAVE_FAILED) {
		
		Box_DealDamage(oTarget, damage, damageType);
		
		if (Box_IsDroid(oTarget)) 
			ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, duration);
		
	}
	//
	else if (saveResult == SAVED) {
		Box_DealDamage(oTarget, saveDamage, damageType);
		
		//if (Box_IsDroid(oTarget)) 
		//	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, 3.0);
		
	}
	
	return saveResult;
}




