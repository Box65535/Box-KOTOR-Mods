// box_inc_ammo

// Written by Box
// Include file for managing auxilary weapon and grenade reloads


// TODO: Define ammo strings

void Box_GrantAmmo(object oUser, string ammo, int amount) {
	CreateItemOnObject(ammo, oUser, amount, 0);
}


// TODO: Ammo functions

















