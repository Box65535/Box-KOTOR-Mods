// box_inc_stims

// Written by Box
// Include file for stim related scripts

float STIMULANT_DURATION = 30.0;

void Box_PoisonResistance(object oUser) {
	effect eResist = EffectImmunity(IMMUNITY_TYPE_POISON);
	eResist = EffectLinkEffects(eResist, EffectSavingThrowIncrease(SAVING_THROW_FORT, 4));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eAdren, oUser, STIMULANT_DURATION);
}

void Box_FearResistance(object oUser) {
	effect eResist = EffectImmunity(IMMUNITY_TYPE_FEAR);
	eResist = EffectLinkEffects(eResist, EffectSavingThrowIncrease(SAVING_THROW_WILL, 4));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eAdren, oUser, STIMULANT_DURATION);
}

void Box_SneakResistance(object oUser) {
	effect eResist = EffectImmunity(IMMUNITY_TYPE_SNEAK_ATTACK);
	eResist = EffectLinkEffects(eResist, EffectSavingThrowIncrease(SAVING_THROW_REFLEX, 4));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eAdren, oUser, STIMULANT_DURATION);
}

void Box_AdrenalStrength(object oUser) {
	effect eAdren = EffectAbilityIncrease(ABILITY_STRENGTH, 4);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eAdren, oUser, STIMULANT_DURATION);
}

void Box_AdrenalStamina(object oUser) {
	effect eAdren = EffectAbilityIncrease(ABILITY_CONSTITUTION, 4);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eAdren, oUser, STIMULANT_DURATION);
}

void Box_AdrenalAlacrity(object oUser) {
	effect eAdren = EffectAbilityIncrease(ABILITY_DEXTERITY, 4);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eAdren, oUser, STIMULANT_DURATION);
}

void Box_StrengthStim(object oUser) {
	
	effect eStim = EffectAbilityIncrease(ABILITY_STRENGTH, 4);
	eStim = EffectLinkEffects(eStim, EffectSavingThrowIncrease(SAVING_THROW_FORT, 4));
	eStim = EffectLinkEffects(eStim, EffectSavingThrowIncrease(SAVING_THROW_REFLEX, 4));
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, STIMULANT_DURATION);
}

void Box_ToughnessStim(object oUser) {
	
	effect eStim = EffectAbilityIncrease(ABILITY_CONSTITUTION, 4);
	eStim = EffectLinkEffects(eStim, EffectDamageImmunityIncrease(DAMAGE_TYPE_SLASHING, 10));
	eStim = EffectLinkEffects(eStim, EffectDamageImmunityIncrease(DAMAGE_TYPE_PIERCING, 10));
	eStim = EffectLinkEffects(eStim, EffectDamageImmunityIncrease(DAMAGE_TYPE_BLUDGEONING, 10));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, STIMULANT_DURATION);
}

void Box_ConcentrationStim(object oUser) {
	
	effect eStim = EffectAbilityIncrease(ABILITY_DEXTERITY, 4);
	eStim = EffectLinkEffects(eStim, EffectSavingThrowIncrease(SAVING_THROW_WILL, 4));
	eStim = EffectLinkEffects(eStim, EffectSavingThrowIncrease(SAVING_THROW_ALL, 4, SAVING_THROW_TYPE_FEAR));
	eStim = EffectLinkEffects(eStim, EffectSavingThrowIncrease(SAVING_THROW_ALL, 4, SAVING_THROW_TYPE_MIND_AFFECTING));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, STIMULANT_DURATION);
}

void Box_BattleStim(object oUser) {
	
	effect eStim = EffectAbilityIncrease(ABILITY_STRENGTH, 4);
	eStim = EffectLinkEffects(eStim, EffectDamageIncrease(2));
	eStim = EffectLinkEffects(eStim, EffectSavingThrowIncrease(SAVING_THROW_ALL, 4));
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, STIMULANT_DURATION);
}

void Box_EnduranceStim(object oUser) {
	
	Box_RemoveEffects(EFFECT_TYPE_POISON, oUser);
	
	effect eStim = EffectAbilityIncrease(ABILITY_CONSTITUTION, 4);
	eStim = EffectLinkEffects(eStim, EffectRegenerate(4, 3.0f));
	eStim = EffectLinkEffects(eStim, EffectImmunity(IMMUNITY_TYPE_POISON));
	eStim = EffectLinkEffects(eStim, EffectImmunity(IMMUNITY_TYPE_PARALYSIS));
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, STIMULANT_DURATION);
}

void Box_AgilityStim(object oUser) {
	
	effect eStim = EffectAbilityIncrease(ABILITY_DEXTERITY, 4);
	eStim = EffectLinkEffects(eStim, EffectModifyAttacks(1));
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStim, oUser, STIMULANT_DURATION);
}

