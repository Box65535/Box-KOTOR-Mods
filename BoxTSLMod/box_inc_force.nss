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

// TODO
int FORCE_FEAT_1 = #BOX_FORCE1#;
int FORCE_FEAT_2 = #BOX_FORCE2#;
int FORCE_FEAT_3 = #BOX_FORCE3#;
int FORCE_FEAT_4 = #BOX_FORCE4#;
int FORCE_FEAT_5 = #BOX_FORCE5#;
int FEAT_FORCE_SEVER = 2; // This should be advanced guard stance, an unused feat

//
int Box_GetForceByClassLevel(int class, int level, int totalLevel) {
	
	int force = 0;
	
	//
	if ((class == CLASS_JEDI_CONSULAR) ||
		(class == CLASS_JEDI_PRESTIGE_CONSULAR) ||
		(class == CLASS_KRIEA)) {
		
		if (level >= 1)
			force += 2;
		if (level >= 3)
			force += 1;
		if (level >= 5)
			force += 1;
		if (level >= 7)
			force += 1;
		if (level >= 9)
			force += 1;
		if (level >= 11)
			force += 1;
		if (level >= 13)
			force += 1;
		if (level >= 15)
			force += 1;
		if (level >= 17)
			force += 1;
		if (level >= 19)
			force += 1;
		if (level >= 21)
			force += 1;
		if (level >= 23)
			force += 1;
		if (level >= 25)
			force += 1;
		if (level >= 27)
			force += 1;
		if (level >= 29)
			force += 1;
		if (level >= 31)
			force += 1;
		if (level >= 33)
			force += 1;
		if (level >= 35)
			force += 1;
		if (level >= 37)
			force += 1;
		if (level >= 39)
			force += 1;
		if (level >= 41)
			force += 1;
		if (level >= 43)
			force += 1;
		if (level >= 45)
			force += 1;
		if (level >= 47)
			force += 1;
		if (level >= 49)
			force += 1;
	}
	//
	else if ((class == CLASS_JEDI_GUARDIAN) ||
		(class == CLASS_JEDI_SENTINEL) ||
		(class == CLASS_JEDI_PRESTIGE_GUARDIAN) ||
		(class == CLASS_JEDI_PRESTIGE_SENTINEL)) {
		
		if (level >= 1)
			force += 1;
		if (level >= 3)
			force += 1;
		if (level >= 7)
			force += 1;
		if (level >= 9)
			force += 1;
		if (level >= 13)
			force += 1;
		if (level >= 15)
			force += 1;
		if (level >= 19)
			force += 1;
		if (level >= 21)
			force += 1;
		if (level >= 25)
			force += 1;
		if (level >= 27)
			force += 1;
		if (level >= 31)
			force += 1;
		if (level >= 33)
			force += 1;
		if (level >= 37)
			force += 1;
		if (level >= 39)
			force += 1;
		if (level >= 43)
			force += 1;
		if (level >= 45)
			force += 1;
		if (level >= 49)
			force += 1;
	}
	//
	else if (class == CLASS_JEDI_APPRENTICE ||
			class == CLASS_JEDI_APPRENTICE_STRONG) {
		
		int min1 = level;
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
int Box_GetForce(object oUser, int powerAlignment) {
	
	int force = GetAbilityModifier(ABILITY_CHARISMA, oUser);
	int totalLevel = GetHitDice(oUser);
	
	int class;
	for (class = 0; class < NUMBER_OF_CLASSES; class++) {
		int level = GetLevelByClass(class, oUser);
		force += Box_GetForceByClassLevel(class, level, totalLevel);
	}
	
	if (GetFeatAcquired(FORCE_FEAT_1, oUser))
		force++;
	if (GetFeatAcquired(FORCE_FEAT_2, oUser))
		force++;
	if (GetFeatAcquired(FORCE_FEAT_3, oUser))
		force++;
	if (GetFeatAcquired(FORCE_FEAT_4, oUser))
		force++;
	if (GetFeatAcquired(FORCE_FEAT_5, oUser))
		force++;
	
	force = Box_ModifyForceByAlignment(oUser, force, powerAlignment);
	
	if (GetFeatAcquired(FEAT_FORCE_SEVER, oUser))
		force = 0;
	
	return force;
}

//
int Box_RollCastDC(object oUser, int castDC, int powerAlignment) {
	
	int force = Box_GetForce(oUser, powerAlignment);
	
	if (force <= 0) {
		return FALSE;
	}
	else if (force + d10() >= castDC) {
		return TRUE;
	}
	else {
		return FALSE;
	}
}

//
int Box_GetPowerDC(object oUser, int powerAlignment) {
	
	return Box_GetForce(oUser, powerAlignment) + 10;
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

