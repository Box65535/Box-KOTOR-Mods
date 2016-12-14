// box_inc_talent

// Written by Box
// Include file for Talents

int FEAT_INVALID = -1;

int FEAT_TYPE_POWER_ATTACK = 1;
int FEAT_TYPE_FLURRY = 2;
int FEAT_TYPE_CRITICAL_STRIKE = 3;
int FEAT_TYPE_POWER_BLAST = 4;
int FEAT_TYPE_RAPID_SHOT = 5;
int FEAT_TYPE_SNIPER_SHOT = 6;

int Box_GetTier3FeatOfType(int featType) {
	switch (featType) {
		case FEAT_TYPE_POWER_ATTACK: return FEAT_POWER_ATTACK_3;
		case FEAT_TYPE_FLURRY: return FEAT_FLURRY_3;
		case FEAT_TYPE_CRITICAL_STRIKE: return FEAT_CRITICAL_STRIKE_3;
		case FEAT_TYPE_POWER_BLAST: return FEAT_POWER_BLAST_3;
		case FEAT_TYPE_RAPID_SHOT: return FEAT_RAPID_SHOT_3;
		case FEAT_TYPE_SNIPER_SHOT: return FEAT_SNIPER_SHOT_3;
	}
	return FEAT_INVALID;
}

int Box_GetTier2FeatOfType(int featType) {
	switch (featType) {
		case FEAT_TYPE_POWER_ATTACK: return FEAT_POWER_ATTACK_2;
		case FEAT_TYPE_FLURRY: return FEAT_FLURRY_2;
		case FEAT_TYPE_CRITICAL_STRIKE: return FEAT_CRITICAL_STRIKE_2;
		case FEAT_TYPE_POWER_BLAST: return FEAT_POWER_BLAST_2;
		case FEAT_TYPE_RAPID_SHOT: return FEAT_RAPID_SHOT_2;
		case FEAT_TYPE_SNIPER_SHOT: return FEAT_SNIPER_SHOT_2;
	}
	return FEAT_INVALID;
}

int Box_GetTier1FeatOfType(int featType) {
	switch (featType) {
		case FEAT_TYPE_POWER_ATTACK: return FEAT_POWER_ATTACK_1;
		case FEAT_TYPE_FLURRY: return FEAT_FLURRY_1;
		case FEAT_TYPE_CRITICAL_STRIKE: return FEAT_CRITICAL_STRIKE_1;
		case FEAT_TYPE_POWER_BLAST: return FEAT_POWER_BLAST_1;
		case FEAT_TYPE_RAPID_SHOT: return FEAT_RAPID_SHOT_1;
		case FEAT_TYPE_SNIPER_SHOT: return FEAT_SNIPER_SHOT_1;
	}
	return FEAT_INVALID;
}

int Box_GetBestFeatOfType(object oUser, int featType) {
	
	int best = Box_GetTier3FeatOfType(featType);
	if (GetHasFeat(best, oUser))
		return best;
	
	best = Box_GetTier2FeatOfType(featType);
	if (GetHasFeat(best, oUser))
		return best;
	
	best = Box_GetTier1FeatOfType(featType);
	if (GetHasFeat(best, oUser))
		return best;
	
	return FEAT_INVALID;
}

int Box_GetAttackDropForFeat(int feat) {
	switch (featType) {
		case FEAT_POWER_ATTACK_1: return 3;
		case FEAT_POWER_ATTACK_2: return 3;
		case FEAT_POWER_ATTACK_3: return 3;
		case FEAT_FLURRY_1: return 4;
		case FEAT_FLURRY_2: return 2;
		case FEAT_POWER_BLAST_1: return 3;
		case FEAT_POWER_BLAST_2: return 3;
		case FEAT_POWER_BLAST_3: return 3;
		case FEAT_RAPID_SHOT_1: return 4;
		case FEAT_RAPID_SHOT_2: return 4;
	}
	return 0;
}

int Box_GetDefenseDropForFeat(int feat) {
	switch (featType) {
		case FEAT_CRITICAL_STRIKE_1: return 5;
		case FEAT_CRITICAL_STRIKE_2: return 5;
		case FEAT_CRITICAL_STRIKE_3: return 5;
		case FEAT_FLURRY_1: return 2;
		case FEAT_FLURRY_2: return 1;
		case FEAT_SNIPER_SHOT_1: return 5;
		case FEAT_SNIPER_SHOT_2: return 5;
		case FEAT_SNIPER_SHOT_3: return 5;
		case FEAT_RAPID_SHOT_1: return 2;
		case FEAT_RAPID_SHOT_2: return 2;
	}
	return 0;
}

int Box_GetFeatTier(int feat) {
	
	switch (featType) {
		case FEAT_POWER_ATTACK_1: return 1;
		case FEAT_POWER_ATTACK_2: return 2;
		case FEAT_POWER_ATTACK_3: return 3;
		case FEAT_POWER_BLAST_1: return 1;
		case FEAT_POWER_BLAST_2: return 2;
		case FEAT_POWER_BLAST_3: return 3;
		case FEAT_FLURRY_1: return 1;
		case FEAT_FLURRY_2: return 2;
		case FEAT_FLURRY_3: return 3;
		case FEAT_RAPID_SHOT_1: return 1;
		case FEAT_RAPID_SHOT_2: return 2;
		case FEAT_RAPID_SHOT_3: return 3;
		case FEAT_CRITICAL_STRIKE_1: return 1;
		case FEAT_CRITICAL_STRIKE_2: return 2;
		case FEAT_CRITICAL_STRIKE_3: return 3;
		case FEAT_SNIPER_SHOT_1: return 1;
		case FEAT_SNIPER_SHOT_2: return 2;
		case FEAT_SNIPER_SHOT_3: return 3;
	}
	return 0;
}



