// box_inc_stims

// Written by Box
// Include file for stim related scripts

void Box_AdrenalStrength(object oUser) {
	
	effect eAdren = EffectAbilityIncrease(ABILITY_STRENGTH, 4);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eAdren, oUser, 40.0f);
}

void Box_AdrenalStamina(object oUser) {
	
	effect eAdren = EffectAbilityIncrease(ABILITY_CONSTITUTION, 4);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eAdren, oUser, 40.0f);
}

void Box_AdrenalAlacrity(object oUser) {
	
	effect eAdren = EffectAbilityIncrease(ABILITY_DEXTERITY, 4);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eAdren, oUser, 40.0f);
}

void Box_StimStrength(object oUser) {
	
	effect eStim = EffectAbilityIncrease(ABILITY_STRENGTH, 4);
	eStim = EffectLinkEffects(eStim, EffectDamageIncrease(2));
	eStim = EffectLinkEffects(eStim, EffectSavingThrowIncrease(SAVING_THROW_ALL, 4));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, 40.0f);
}

void Box_StimEndurance(object oUser) {
	
	Box_RemoveEffects(EFFECT_TYPE_POISON, oUser);
	
	effect eStim = EffectAbilityIncrease(ABILITY_CONSTITUTION, 4);
	eStim = EffectLinkEffects(eStim, EffectRegenerate(2, 2.0f));
	eStim = EffectLinkEffects(eStim, EffectImmunity(IMMUNITY_TYPE_POISON));
	eStim = EffectLinkEffects(eStim, EffectImmunity(IMMUNITY_TYPE_PARALYSIS));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, 40.0f);
}

void Box_StimAgility(object oUser) {
	
	effect eStim = EffectAbilityIncrease(ABILITY_DEXTERITY, 4);
	eStim = EffectLinkEffects(eStim, EffectModifyAttacks(1));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, 40.0f);
}

