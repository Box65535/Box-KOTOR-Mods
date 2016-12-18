// box_spawn_per

// Written by Box
// Spawn script for Peragus

#include "k_inc_generic"
#include "box_inc"

string DOUBLE_BLADED_SWORD = "wm_simple4";

void Box_SithAssassin(object oEnemy) {

	Box_RemoveAllItems(oEnemy);
		
	// Hide
	string hide = Box_GetHideTemplate(HIDE_TYPE_SITH_ASSASSIN, ENEMY_STRENGTH_REGULAR);
	ActionEquipItem(CreateItemOnObject(hide, oEnemy), INVENTORY_SLOT_CARMOUR, TRUE);
	
	// Equipment
	Box_GrantDualWield(oEnemy);
	ActionEquipItem(CreateItemOnObject(DOUBLE_BLADED_SWORD, oEnemy), INVENTORY_SLOT_RIGHTWEAPON, TRUE);
	
	// Special Script
	effect eUncloak = EffectVisualEffect(8001);
    DelayCommand(0.5f, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eUncloak, OBJECT_SELF, 5.0f));
}

void Box_OutfitEnemy151HAR(object oEnemy) {
	
	string tag = GetTag(oEnemy);
	
	// Sith Assassin
	if (tag == "SithAssassin") {
		Box_MiningDroid(oEnemy);
	}
}


