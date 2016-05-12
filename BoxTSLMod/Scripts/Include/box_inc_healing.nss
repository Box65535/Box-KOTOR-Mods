// box_inc_healing

// Written by Box
// Include file for healing related scripts

void Box_RemoveEffects(int effectType, object oTarget)
{
    effect eEffect = GetFirstEffect(oTarget);
	
    while (GetIsEffectValid(eEffect)) {
		
		if (GetEffectType(eEffect) == effectType) {
			RemoveEffect(oTarget, eEffect);
		}
		
        eEffect = GetNextEffect(oTarget);
    }
}

void Box_Medpac(object oUser, int regen, float duration) {
	
	effect eHeal = EffectRegenerate(regen, 2.0f);
	effect eStun = EffectSleep(); // I cannot remember what this is supposed to be
	
	effect eMedpac = EffectLinkEffects(eHeal, eStun);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eMedpac, oUser, duration);
}

void Box_RepairKit(object oUser, int regen, float duration) {
	
	effect eHeal = EffectRegenerate(regen, 2.0f);
	effect eStun = EffectDroidStun(); // I cannot remember what this is supposed to be
	
	effect eKit = EffectLinkEffects(eHeal, eStun);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eKit, oUser, duration);
}

void Box_QuickFix(object oUser, int heal, int penalty, float duration) {
	
	effect eHeal = EffectHeal(heal);
	effect eWeak = EffectAbilityDecrease(ABILITY_STRENGTH, penalty);
	eWeak = EffectLinkEffects(eWeak, EffectAbilityDecrease(ABILITY_DEXTERITY, penalty));
	eWeak = EffectLinkEffects(eWeak, EffectAbilityDecrease(ABILITY_WISDOM, penalty));
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, eHeal, oUser);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eWeak, oUser, 1.0f * duration);
}

void Box_AntidotePack(object oUser) {
	
	int duration = 8;
	
	effect eStun = EffectStunned(); // I cannot remember what this is supposed to be
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oUser, 1.0f * duration);
	
	Box_RemoveEffects(EFFECT_TYPE_POISON, oUser);
}

// 
void Box_Medpac1(object oUser) {
	Box_Medpac(oUser, 10, 8.0f);
}

// 
void Box_Medpac2(object oUser) {
	Box_Medpac(oUser, 20, 8.0f);
}

// 
void Box_Medpac3(object oUser) {
	Box_Medpac(oUser, 30, 8.0f);
}

// 
void Box_Medpac4(object oUser) {
	Box_Medpac(oUser, 40, 8.0f);
}

//
void Box_RepairKit1(object oUser) {
	Box_RepairKit(oUser, 10, 8.0f);
}

//
void Box_RepairKit2(object oUser) {
	Box_RepairKit(oUser, 20, 8.0f);
}

//
void Box_RepairKit3(object oUser) {
	Box_RepairKit(oUser, 30, 8.0f);
}

//
void Box_RepairKit4(object oUser) {
	Box_RepairKit(oUser, 30, 8.0f);
}

//
void Box_LifeSupport1(object oUser) {
	Box_QuickFix(oUser, 60, 4, 30.0f);
}

//
void Box_LifeSupport2(object oUser) {
	Box_QuickFix(oUser, 120, 4, 30.0f);
}

//
void Box_QuickKit1(object oUser) {
	Box_QuickFix(oUser, 60, 4, 30.0f);
}

//
void Box_QuickKit2(object oUser) {
	Box_QuickFix(oUser, 120, 4, 30.0f);
}





