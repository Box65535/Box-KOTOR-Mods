// box_inc_turretspells

// Written by Box
// Include file for turret spells

// For now, I'm using this in my Turrets standalone mod
int Box_FlameTurret(object oTarget) {
	return Box_DamageWeapon(oTarget, 15, 16, 4, DAMAGE_TYPE_FIRE, SAVING_THROW_WILL, SAVING_THROW_TYPE_FIRE);
}

int Box_SonicTurret(object oTarget) {
	effect eSonic = EffectAbilityDecrease(ABILITY_DEXTERITY, 6);
	effect ePush = EffectForcePushTargeted(GetLocation(OBJECT_SELF));
	int ret =  Box_DamageAndEffectWeapon(oTarget, 15, 8, 4, DAMAGE_TYPE_SONIC, eSonic, SAVING_THROW_WILL, SAVING_THROW_TYPE_SONIC, 30.0);
	if (ret == SAVE_FAILED) {
		effect ePush = EffectForcePushTargeted(GetLocation(OBJECT_SELF));
		float duration = 0.1;
		ApplyEffectToObject(DURATION_TYPE_TEMPORARY, ePush, oTarget, duration);
	}
	return ret;	
}

int Box_IonTurret(object oTarget) {
	return Box_IonWeapon(oTarget, 20, 24, 8, 24, SAVING_THROW_FORT, 9.0);
}

int Box_FragTurret(object oTarget) {
	int save = SAVING_THROW_REFLEX;
	return Box_PiercingWeapon(oTarget, 20, 24, 6, save);
}

int Box_FusionTurret(object oTarget) {
	return Box_DamageWeapon(oTarget, 25, 36, 12, DAMAGE_TYPE_BLASTER, SAVING_THROW_REFLEX, SAVING_THROW_TYPE_NONE);
}








