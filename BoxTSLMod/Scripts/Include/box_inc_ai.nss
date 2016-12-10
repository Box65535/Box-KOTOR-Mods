// box_inc_ai

// Written by Box
// Include file for AI


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
	return Box_CheckIsRangedSlot(oUser, INVENTORY_SLOT_RIGHTWEAPON_2);
}




