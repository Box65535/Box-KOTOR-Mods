// box_inc_force

// Written by Box
// Include file for force related scripts

// TODO
int NUMBER_OF_CLASSES = 17;
int CLASS_JEDI_CONSULAR = CLASS_TYPE_JEDICONSULAR;
int CLASS_JEDI_SENTINEL = CLASS_TYPE_JEDISENTINEL;
int CLASS_JEDI_GUARDIAN = CLASS_TYPE_JEDIGUARDIAN;
int CLASS_JEDI_PRESTIGE_CONSULAR = CLASS_TYPE_JEDIMASTER;
int CLASS_JEDI_PRESTIGE_SENTINEL = CLASS_TYPE_JEDIWATCHMAN;
int CLASS_JEDI_PRESTIGE_GUARDIAN = CLASS_TYPE_JEDIWEAPONMASTER;
int CLASS_KRIEA = CLASS_TYPE_SITHLORD;
int CLASS_JEDI_APPRENTICE = CLASS_TYPE_SITHASSASSIN;
int CLASS_JEDI_APPRENTICE_STRONG = CLASS_TYPE_SITHMARAUDER;

int POWER_TYPE_UNIVERSAL = 1;
int POWER_TYPE_LIGHT = 2;
int POWER_TYPE_DARK = 3;

//
int Box_GetForceByClassLevel(int class, int level, int totalLevel) {
	
	int force = 0;
	
	//
	if ((class == CLASS_JEDI_CONSULAR) ||
		(class == CLASS_JEDI_PRESTIGE_CONSULAR) ||
		(class == CLASS_KRIEA)) {
		
		if (class == CLASS_JEDI_PRESTIGE_CONSULAR) {
			level = level + 15;
			force = force - 11;
		}
		
		if (level >= 1)
			force += 1;
		if (level >= 2)
			force += 1;
		if (level >= 4)
			force += 1;
		if (level >= 5)
			force += 1;
		if (level >= 6)
			force += 1;
		if (level >= 8)
			force += 1;
		if (level >= 9)
			force += 1;
		if (level >= 10)
			force += 1;
		if (level >= 12)
			force += 1;
		if (level >= 13)
			force += 1;
		if (level >= 14)
			force += 1;
		if (level >= 16)
			force += 1;
		if (level >= 17)
			force += 1;
		if (level >= 18)
			force += 1;
		if (level >= 20)
			force += 1;
		if (level >= 21)
			force += 1;
		if (level >= 22)
			force += 1;
		if (level >= 24)
			force += 1;
		if (level >= 25)
			force += 1;
		if (level >= 26)
			force += 1;
		if (level >= 28)
			force += 1;
		if (level >= 29)
			force += 1;
		if (level >= 30)
			force += 1;
	}
	//
	else if ((class == CLASS_JEDI_GUARDIAN) ||
		(class == CLASS_JEDI_SENTINEL) ||
		(class == CLASS_JEDI_PRESTIGE_GUARDIAN) ||
		(class == CLASS_JEDI_PRESTIGE_SENTINEL)) {
		
		if ((class == CLASS_JEDI_PRESTIGE_GUARDIAN) ||
			(class == CLASS_JEDI_PRESTIGE_SENTINEL)) {
			level = level + 15;
			force = force - 7;
		}
		
		if (level >= 2)
			force += 1;
		if (level >= 4)
			force += 1;
		if (level >= 6)
			force += 1;
		if (level >= 8)
			force += 1;
		if (level >= 10)
			force += 1;
		if (level >= 12)
			force += 1;
		if (level >= 14)
			force += 1;
		if (level >= 16)
			force += 1;
		if (level >= 18)
			force += 1;
		if (level >= 20)
			force += 1;
		if (level >= 22)
			force += 1;
		if (level >= 24)
			force += 1;
		if (level >= 26)
			force += 1;
		if (level >= 28)
			force += 1;
		if (level >= 30)
			force += 1;
	}
	//
	else if (class == CLASS_JEDI_APPRENTICE ||
			class == CLASS_JEDI_APPRENTICE_STRONG) {
		
		int min1 = 1 + level;
		int min2 = Box_GetForceByClassLevel(CLASS_JEDI_SENTINEL, totalLevel, 0);
		
		if (min1 < min2) {
			force += min1;
		}
		else {
			force += min2;
		}		
	}
	else {
		//
	}
	
	return force;
}

//
int Box_ModifyForceByAlignment(object oUser, int force, int powerAlignment) {
	
	//
	int userAlignment = GetGoodEvilValue(oUser);
	
	//
	int darkSidePowerCutoff = 55 + 5*GetAbilityModifier(ABILITY_CHARISMA, oUser);
	int lightSidePowerCutoff = 45 - 5*GetAbilityModifier(ABILITY_CHARISMA, oUser);
	
	//
	if ((userAlignment > darkSidePowerCutoff) && (powerAlignment == POWER_TYPE_DARK)) {
		
		//
		int alignmentDisparity = userAlignment - darkSidePowerCutoff;
		int forcePenalty = alignmentDisparity / 5;
		
		//
		force -= forcePenalty;
	}
	//
	else if ((userAlignment < lightSidePowerCutoff) && (powerAlignment == POWER_TYPE_LIGHT)) {
		
		//
		int alignmentDisparity = lightSidePowerCutoff - userAlignment;
		int forcePenalty = alignmentDisparity / 5;
		
		//
		force -= forcePenalty;
	}
	
	return force;
}

//
int Box_GetBaseForce(object oUser, int powerAlignment) {
	
	int force = GetAbilityModifier(ABILITY_CHARISMA, oUser);
	int totalLevel = GetHitDice(oUser);
	
	int class;
	for (class = 0; class < NUMBER_OF_CLASSES; class++) {
		int level = GetLevelByClass(class, oUser);
		force += Box_GetForceByClassLevel(class, level, totalLevel);
	}
	
	force = Box_ModifyForceByAlignment(oUser, force, powerAlignment);
	
	if (GetFeatAcquired(FEAT_FORCE_SEVER, oUser))
		force = 0;
	
	return force;
}

int Box_GetCastForce(object oUser, int powerAlignment) {
	
	int force = Box_GetBaseForce(oUser, powerAlignment);
	
	if (GetFeatAcquired(FORCE_FEAT_1, oUser))
		force++;
	if (GetFeatAcquired(FORCE_FEAT_2, oUser))
		force++;
	if (GetFeatAcquired(FORCE_FEAT_3, oUser))
		force++;
	
	return force;
}

int Box_GetSpellForce(object oUser, int powerAlignment, int castSuccess) {
	
	int force = Box_GetBaseForce(oUser, powerAlignment);
	
	if (castSuccess)
		return force;
	else
		return (force + 1) / 2;
}

// 
int Box_RollCastDC(object oUser, int castDC, int powerAlignment) {
	
	int force = Box_GetCastForce(oUser, powerAlignment);
	
	if (force + d8() >= castDC) {
		return TRUE;
	}
	else {
		return FALSE;
	}
}

// 
int Box_CheckSpellSuccess(object oUser, int castDC, int powerAlignment) {
	
	int force = Box_GetBaseForce(oUser, powerAlignment);
	
	if (force <= 0) {
		return FALSE;
	}
	// else if (force + d10() >= castDC) {
		// return TRUE;
	// }
	// else {
		// return FALSE;
	// }
	else {
		return TRUE;
	}
}

//
int Box_GetPowerDC(object oUser, int powerAlignment) {
	
	return Box_GetBaseForce(oUser, powerAlignment) + 10;
}

//
int Box_AdjustForceDamage(object oUser, int damage) {
	
	return damage;
}

//
float Box_AdjustForceDuration(object oUser, float duration) {
	
	return duration;
} 

//
int Box_AdjustForceDC(object oUser, int dc) {
	
	return dc;
}

//
int Box_DealForceDamage(object oUser, object oTarget, int damage, int damageType) {
	
	damage = Box_AdjustForceDamage(oUser, damage); 
	return Box_DealDamage(oTarget, damage, damageType);
}

//
void Box_DealForceDamageIterative(object oUser, object oTarget, int damage, int damageType, float duration) {
	
	damage = Box_AdjustForceDamage(oUser, damage); 
	Box_DealDamageIterative(oTarget, damage, damageType, duration);
}

//
void Box_DealForceDamageAction(object oUser, object oTarget, int damage, int damageType) {
	
	damage = Box_AdjustForceDamage(oUser, damage); 
	Box_DealDamageAction(oTarget, damage, damageType);
}

//
int Box_DealForcePointDamage(object oUser, object oTarget, int damage) {
	
	damage = Box_AdjustForceDamage(oUser, damage); 
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForceDrain(damage), oTarget);
	return damage;
}

//
float Box_PerformForceEffect(object oUser, object oTarget, effect eEffect, float duration) {
	
	duration = Box_AdjustForceDuration(oUser, duration);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eEffect, oTarget, duration);
	return duration;
}

//
int Box_RollForceSavingThrow(object oUser, object oTarget, int powerDC, int save, int saveType) {
	
	// TODO: Form etc Adjustments
	return Box_RollSavingThrow(oTarget, powerDC, save, saveType);
}

