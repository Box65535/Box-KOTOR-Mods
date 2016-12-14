// box_inc_ai

// Written by Box
// Include file for AI


///////////////////////////////////////// Equipment /////////////////////////////////////////

int Box_CheckIsRangedSlot(object oUser, int slot) {
	
	object oItem = GetItemInSlot(slot, oUser);
	if (!GetIsObjectValid(oItem))
		return FALSE;
	
	int baseItem = GetBaseItemType(oItem);
	
	return (FALSE ||
	// Generated lines go here
	// RANGED
	FALSE);
}

int Box_CheckIsRangedEquipped(object oUser) {
	return Box_CheckIsRangedSlot(oUser, INVENTORY_SLOT_RIGHTWEAPON);
}

int Box_CheckIsRangedSecondary(object oUser) {
	return Box_CheckIsRangedSlot(oUser, INVENTORY_SLOT_RIGHTWEAPON2);
}

int Box_CheckIsUnarmedEquipped(object oUser) {
	object oItem = GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oUser);
	return (!GetIsObjectValid(oItem));
}

int Box_CheckIsUnarmedSecondary(object oUser) {
	object oItem = GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON2, oUser);
	return (!GetIsObjectValid(oItem));
}

int Box_CheckIsMeleeEquipped(object oUser) {
	return !(Box_CheckIsUnarmedEquipped(oUser) || Box_CheckIsRangedEquipped(oUser));
}

int Box_CheckIsMeleeSecondary(object oUser) {
	return !(Box_CheckIsUnarmedSecondary(oUser) || Box_CheckIsRangedSecondary(oUser));
}


////////////////////////////////////// Weapon Switching //////////////////////////////////////

int Box_GuessIsUnarmedWeapon(object oUser) {
	// Basically, most characters can equip a ranged weapon and a melee weapon together
	// and the AI will smartly switch between the two
	// What's hard is figuring out if unarmed indicates that you don't want to switch weapons
	// or that you want to smartly switch between ranged and unarmed
	// What this does is guess that your lack of primary/secondary weapon means you actually want
	// to use unarmed as a weapon
	
	int featScore = 0;
	if (GetFeatAcquired(FEAT_UNARMED_1, oUser))
		featScore += 1;
	if (GetFeatAcquired(FEAT_UNARMED_2, oUser))
		featScore += 1;
	// Decided against including the character feats
	// i.e. ECHANI_STRIKE, SHIELD_BREAKER, REPULSOR_STRIKE
	
	if (featScore < 2)
		return FALSE;
	
	if (Box_CheckIsUnarmedEquipped(oUser) && Box_CheckIsRangedSecondary(oUser))
		return TRUE;
	
	if (Box_CheckIsUnarmedSecondary(oUser) && Box_CheckIsRangedEquipped(oUser))
		return TRUE;
	
	return FALSE;
}

int Box_CheckIsBeingAttackedAtMeleeRange(object oUser) {
	
    object oAttacker = GetFirstAttacker(oUser);
    while(GetIsObjectValid(oAttacker)) {
		float distance = GetDistanceBetween(oUser, oAttacker);
		if (distance < 6.0) {
			int meleeEquipped = Box_CheckIsUnarmedEquipped(oAttacker) || Box_CheckIsMeleeEquipped(oAttacker);
			if (meleeEquipped)
				return TRUE;
		}
		oAttacker = GetNextAttacker(oUser);
    }
    return FALSE;
}

int Box_CheckIsMeleeRangeClear(object oUser, float radius) {
	
	if (Box_CheckIsBeingAttackedAtMeleeRange(oUser))
		return FALSE;
	
	location lUser = GetLocation(oUser);
	object oEnemy = GetFirstObjectInShape(SHAPE_SPHERE, radius, lUser, TRUE);
	while (GetIsObjectValid(oEnemy)) {
		if (/*Faction/Reputation*/)
			return FALSE;
		oEnemy = GetNextObjectInShape(SHAPE_SPHERE, radius, lUser, TRUE);
	}
	
	return TRUE;
}

int Box_ShouldSwitchWeapon(object oUser, float meleeAttackRadius) {
	
	int meleeEquipped = (Box_CheckIsUnarmedEquipped(oUser) && Box_GuessIsUnarmedWeapon(oUser)) || Box_CheckIsMeleeEquipped(oUser);
	int meleeSecondary = (Box_CheckIsUnarmedSecondary(oUser) && Box_GuessIsUnarmedWeapon(oUser)) || Box_CheckIsMeleeSecondary(oUser);
	int rangedEquipped = Box_CheckIsRangedEquipped(oUser);
	int rangedSecondary = Box_CheckIsRangedSecondary(oUser);
	
	if (meleeEquipped && rangedSecondary && Box_CheckIsMeleeRangeClear(oUser))
		return TRUE;
	if (rangedEquipped && meleeSecondary && Box_CheckIsBeingAttackedAtMeleeRange(oUser, meleeAttackRadius))
		return TRUE;
	
	return FALSE;
}


///////////////////////////////////////// Targeting /////////////////////////////////////////

object Box_FindClosestEnemy(object oUser) {
	
	object oClose = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY, oUser, 1);
	return oClose;
}

object Box_FindWeakestEnemy(object oUser) {
	
	location lUser = GetLocation(oUser);
	object oWeakest = OBJECT_INVALID;
	object oEnemy = GetFirstObjectInShape(SHAPE_SPHERE, 20.0, lUser, TRUE);
	while (GetIsObjectValid(oEnemy)) {
		if (!GetIsObjectValid(oWeakest)) {
			oWeakest = oEnemy;
			continue;
		}
		if (/*Faction/Reputation*/ && GetCurrentHitPoints(oEnemy) < GetCurrentHitPoints(oWeakest)) {
			oWeakest = oEnemy;
		}
		oEnemy = GetNextObjectInShape(SHAPE_SPHERE, 20.0, lUser, TRUE);
	}
	
	return oWeakest;
}


////////////////////////////////////////// Movement //////////////////////////////////////////


int Box_CheckDistanceToPartyLeader(object oUser, float maxDistance) {
	
	object oLeader = GetPartyLeader();
	if (oUser == oLeader)
		return 0.0;
	return GetDistanceBetween2D(oUser);
}

void Box_MoveToPartyLeader(object oUser, float maxDistance) {
	
	int currentAction = GetCurrentAction(oUser);
	if (currentAction != ACTION_MOVETOPOINT) {
		float distance = GetDistanceToObject2D(oLeader);
		object oLeader = GetPartyLeader();
		ClearAllActions();
		ActionMoveToObject(oLeader, TRUE, distance - maxDistance);
	}
}





/////////////////////////////////////////// Feats ///////////////////////////////////////////

int Box_ApproximateAttack(object oUser) {
	
	// TODO
}

int Box_GetNumberOfAttackers(object oUser) {
	
	int count = 0;
    object oAttacker = GetFirstAttacker(oUser);
    while(GetIsObjectValid(oAttacker)) {
        oAttacker = GetNextAttacker(oUser);
		count = count + 1;
    }
    return count;
}

int Box_CalculateAttackPenalty(int attack, int defense, int drop, int scalar) {
	
	int hitChance = attack + 20 - defense;
	int hitChanceDrop = attack + 20 - drop - defense;
	
	if (hitChanceDrop < 1)
		return 100 * scalar;
	
	// To capture fractions, we have to do our scaling here
	int penalty = (hitChance * scalar) / hitChanceDrop;
	return penalty;
}

int Box_CalculateDefensePenalty(int attack, int defense, int drop, int numberOfAttackers, int desiredHitChance) {
	
	int hitChance = attack + 20 - defense;
	if (hitChance < 1)
		return 100 * scalar;
	
	int risk = numberOfAttackers * drop;
	// We need to multiply this way to minimize rounding
	int penalty = risk * multiplier * desiredHitChance / hitChance;
	
	return ;
}

int Box_GetFeatStrength(int feat) {
	
	// These ratings are intended to ignore penalties in the feats
	switch (featType) {
		case FEAT_POWER_ATTACK_1: return 4;
		case FEAT_POWER_ATTACK_2: return 6;
		case FEAT_POWER_ATTACK_3: return 8;
		case FEAT_POWER_BLAST_1: return 4;
		case FEAT_POWER_BLAST_2: return 6;
		case FEAT_POWER_BLAST_3: return 8;
		case FEAT_FLURRY_1: return 6;
		case FEAT_FLURRY_2: return 6;
		case FEAT_FLURRY_3: return 6;
		case FEAT_RAPID_SHOT_1: return 6;
		case FEAT_RAPID_SHOT_2: return 6;
		case FEAT_RAPID_SHOT_3: return 6;
		case FEAT_CRITICAL_STRIKE_1: return 7;
		case FEAT_CRITICAL_STRIKE_2: return 9;
		case FEAT_CRITICAL_STRIKE_3: return 11;
		case FEAT_SNIPER_SHOT_1: return 7;
		case FEAT_SNIPER_SHOT_2: return 9;
		case FEAT_SNIPER_SHOT_3: return 11;
	}
	return 0;
}

int Box_CalculateFeatRating(object oUser, object oTarget, int feat, int numberOfAttackers, int attackApproximation, int enemyAC) {
	
	if (feat == FEAT_INVALID)
		return 0;
	
	int attackDrop = Box_GetAttackDropForFeat(feat);
	int defenseDrop = Box_GetDefenseDropForFeat(feat);
	
	// See above ratings
	int featStrength = Box_GetFeatStrength(feat);
	// Penalty is %Increase in chance to hit from not using feat times 10
	// e.g. 20% hit chance increase by not using the feat means a penalty of 2
	int attackPenalty = Box_CalculateAttackPenalty(attackApproximation, enemyAC, attackDrop, 10);
	// This is a mess but it kind of works?
	int defensePenalty = Box_CalculateDefensePenalty(attackApproximation-attackDrop, enemyAC, attackDrop, numberOfAttackers, 10);
	
	if (attackPenalty < 0)
		attackPenalty = 0;
	if (defensePenalty < 0)
		defensePenalty = 0;
	
	int random = d4() - 2;
	int rating = featStrength - defensePenalty - attackPenalty + random;
	
	return rating;
}

talent Box_ChooseFeatTalent(object oUser, object oTarget, int featType1, int featType2, int featType3) {
	
	// We pre-compute these as arguments to be more efficient
	int numberOfAttackers = Box_GetNumberOfAttackers(oUser);
	int attackApproximation = Box_ApproximateAttack(oUser);
	int enemyAC = GetAC(oTarget);
	
	// powerAttack, flurry, and criticalStrike are examplars using melee weapons
	// The same method is used for ranged weapons
	int powerAttack = Box_GetBestFeatOfType(oUser, featType1);
	int flurry = Box_GetBestFeatOfType(oUser, featType2);
	int criticalStrike = Box_GetBestFeatOfType(oUser, featType3);
	
	int powerAttackRating = Box_CalculateFeatRating(oUser, oTarget, powerAttack, numberOfAttackers, attackApproximation, enemyAC);
	int flurryRating = Box_CalculateFeatRating(oUser, oTarget, flurry, numberOfAttackers, attackApproximation, enemyAC);
	int criticalStrikeRating = Box_CalculateFeatRating(oUser, oTarget, criticalStrike, numberOfAttackers, attackApproximation, enemyAC);
	
	int featChoice = -1;
	int featChoiceRating = 0;
	if (powerAttackRating > featChoiceRating) {
		featChoice = powerAttack;
		featChoiceRating = powerAttackRating;
	}
	if (flurryRating > featChoiceRating) {
		featChoice = flurry;
		featChoiceRating = flurryRating;
	}
	if (powerAttackRating > featChoiceRating) {
		featChoice = criticalStrike;
	}
	
	return TalentFeat(featChoice);
}

int Box_CalculateFeatRatingSimple(object oUser, int feat) {
	
	if (feat == FEAT_INVALID)
		return 0;
	
	return Box_GetFeatTier(feat);
}

talent Box_ChooseFeatTalentSimple(object oUser, int featType1, int featType2, int featType3) {
	
	// powerAttack, flurry, and criticalStrike are examplars using melee weapons
	// The same method is used for ranged weapons
	int powerAttack = Box_GetBestFeatOfType(oUser, featType1);
	int flurry = Box_GetBestFeatOfType(oUser, featType2);
	int criticalStrike = Box_GetBestFeatOfType(oUser, featType3);
	
	int powerAttackRating = Box_CalculateFeatRatingSimple(oUser, powerAttack);
	int flurryRating = Box_CalculateFeatRatingSimple(oUser, flurry);
	int criticalStrikeRating = Box_CalculateFeatRatingSimple(oUser, criticalStrike);
	
	int featChoice = -1;
	int featChoiceRating = 0;
	if (powerAttackRating > featChoiceRating) {
		featChoice = powerAttack;
		featChoiceRating = powerAttackRating;
	}
	if (flurryRating > featChoiceRating) {
		featChoice = flurry;
		featChoiceRating = flurryRating;
	}
	if (powerAttackRating > featChoiceRating) {
		featChoice = criticalStrike;
	}
	
	return TalentFeat(featChoice);
}

talent Box_ChooseMeleeFeatTalent(object oUser, object oTarget) {
	return Box_ChooseFeatTalent(oUser, oTarget, FEAT_TYPE_POWER_ATTACK, FEAT_TYPE_FLURRY, FEAT_TYPE_CRITICAL_STRIKE);
}

talent Box_ChooseRangedFeatTalent(object oUser, object oTarget) {
	return Box_ChooseFeatTalent(oUser, oTarget, FEAT_TYPE_POWER_BLAST, FEAT_TYPE_RAPID_SHOT, FEAT_TYPE_SNIPER_SHOT);
}




////////////////////////////////////////// Scripts //////////////////////////////////////////

int Box_Offensive(object oUser, int reputation/faction/whatever) {
	
	// Targeting
	
	
	// Action
}

