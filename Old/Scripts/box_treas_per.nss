// box_treas_per

// Written by Box
// Treasure script for Peragus

#include "box_inc"


void Box_FillContainer101PER(object oContainer) {
	
	string tag = GetTag(oContainer);
	
	// Stealth Field Footlocker
	if (tag == "g_trescivil003") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("hs_steal", oContainer);
		CreateItemOnObject("hh_medpac1", oContainer, 1);
	}
	// Ion Grenades Footlocker
	if (tag == "g_trescivil004") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("wg_ion", oContainer, 2);
		CreateItemOnObject("g_i_credits003", oContainer);
	}
	// Plasma Torch Corpse
	if (tag == "g_tresgencorp004") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("wm_plasma", oContainer);
	}
	// Vibrocutter Corpse
	if (tag == "g_tresgencorp005") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("wr_mining1", oContainer);
		CreateItemOnObject("g_i_credits002", oContainer);
	}
	// Security Spike Corpse
	if (tag == "g_tresgencorp006") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_secspike01", oContainer);
	}
	// Credits Corpse
	if (tag == "g_tresgencorp007" ||
		tag == "g_tresgencorp008") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_credits002", oContainer);
	}
	// Credits Container
	if (tag == "g_tresmilhig006") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_credits002", oContainer);
	}
	// Medpac Container
	if (tag == "g_tresmillow006" ||
		tag == "g_tresmillow010") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("hh_medpac1", oContainer, 2);
	}
	// Medpac Container
	if (tag == "g_tresmillow007" ||
		tag == "g_tresmillow009") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("hh_medpac1", oContainer, 1);
	}
	// Stim Container
	if (tag == "g_tresmillow008") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("hs_con1", oContainer);
	}
	// Chem Container
	if (tag == "g_tresmillow011") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("chem_00001", oContainer, 100);
	}
	// Component Container
	if (tag == "g_tresmillow012") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("compont_00001", oContainer, 5);
	}
	// Credits Locker
	if (tag == "lockerlg001") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_credits003", oContainer);
	}
	// Locked Ion Grenade Locker
	if (tag == "lockerlg002") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("wg_ion", oContainer, 2);
		CreateItemOnObject("wg_sonic", oContainer, 2);
		CreateItemOnObject("hh_medpac1", oContainer, 1);
	}
	// Unlocked Ion Grenade Locker
	if (tag == "lockerlg003") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("wg_ion", oContainer, 2);
	}
}

void Box_FillContainer102PER(object oContainer) {
	
	string tag = GetTag(oContainer);
	
	// Parts Droid
	if (tag == "g_tresdrd004") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_parts01", oContainer, 3);
	}
	// Spike Droid
	if (tag == "g_tresdrd005") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_progspike01", oContainer, 1);
	}
	// Loot Droid
	if (tag == "g_tresdrd006") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("compont_00001", oContainer, 3);
		CreateItemOnObject("wg_sonic", oContainer, 1);
	}
	// Loot Droid
	if (tag == "g_tresdrd007") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("compont_00001", oContainer, 2);
		CreateItemOnObject("wg_sonic", oContainer, 1);
	}
	// Medpac Corpse
	if (tag == "g_tresgencorp004") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("hh_medpac1", oContainer);
		CreateItemOnObject("g_i_credits004", oContainer);
	}
	// Mining Carbine Corpse
	if (tag == "g_tresgencorp005") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("wr_mining2", oContainer);
	}
	// Hidden Corpse
	if (tag == "g_tresgencorp006") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("hb_cardio1", oContainer);
		CreateItemOnObject("wm_ion1", oContainer);
	}
	// Credits Corpse
	if (tag == "g_tresgencorp007" ||
		tag == "g_tresgencorp008" ||
		tag == "g_tresgencorp009" ||
		tag == "g_tresgencorp010") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_credits002", oContainer);
	}
	// Parts/Spikes Container
	if (tag == "g_tresmilhig006") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_parts01", oContainer, 7);
		CreateItemOnObject("g_i_progspike01", oContainer, 3);
	}
	// Uniform Container
	if (tag == "g_tresmillow007") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("ha_miner", oContainer);
		CreateItemOnObject("hs_mining", oContainer);
		CreateItemOnObject("hh_medpac1", oContainer);
		CreateItemOnObject("hb_reflex1", oContainer);
	}
	// Locked Continer
	if (tag == "g_tresmillow008") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_secspike01", oContainer);
		CreateItemOnObject("wg_sonic", oContainer, 2);
		CreateItemOnObject("hh_medpac1", oContainer);
	}
	// Broken? Container
	if (tag == "g_tresmillow009") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("hh_medpac1", oContainer, 2);
	}
}

void Box_FillContainer103PER(object oContainer) {
	
	string tag = GetTag(oContainer);
	
	// Empty Droid
	if (tag == "g_tresdrd005") {
		Box_RemoveAllItems(oContainer);
	}
	// Parts Droid
	if (tag == "g_tresdrd006") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_parts01", oContainer, 2);
		CreateItemOnObject("dh_repair1", oContainer, 2);
	}
	// Components Droid
	if (tag == "g_tresdrd007" ||
		tag == "g_tresdrd008") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("compont_00001", oContainer, 3);
	}
	// Loot Droid
	if (tag == "g_tresdrd009") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("compont_00001", oContainer, 2);
		CreateItemOnObject("wg_sonic", oContainer, 1);
	}
	// Credits Corpse
	if (tag == "g_tresgencorp004") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_credits002", oContainer);
	}
	// Datapad Corpse
	if (tag == "g_tresgencorp005") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("mine_datapad001", oContainer);
		CreateItemOnObject("tm_sonic1", oContainer, 3);
	}
	// Spike Corpse
	if (tag == "g_tresgencorp006") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_progspike01", oContainer, 2);
	}
	// Mainteenance Officer Corpse
	if (tag == "g_tresgencorp007") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_credits001", oContainer);
	}
	// Sonic Sensor Container
	if (tag == "g_tresmilhig006") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("sonicimprintsens", oContainer);
		CreateItemOnObject("mine_datapad002", oContainer);
	}
	// Cheat Container
	if (tag == "g_tresmilhig007") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("um_ecell", oContainer);
	}
	// Concealed Stash
	if (tag == "g_tresmilhig008") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("hangar25control", oContainer);
		CreateItemOnObject("dh_repair1", oContainer, 4);
	}
	// Random Locker
	if (tag == "g_tresmillow006") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_credits002", oContainer);
	}
	// Implant Locker
	if (tag == "g_tresmillow007") {
		Box_RemoveAllItems(oContainer);
		// Coming soon
		CreateItemOnObject("g_i_parts01", oContainer);
	}
	// Spacesuit Locker
	if (tag == "lockerlg001") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("lev40_spacesuit", oContainer);
	}
	
}

void Box_FillContainer105PER(object oContainer) {
	
	string tag = GetTag(oContainer);
	
	// Empty Footlocker
	if (tag == "g_trescivil003") {
		Box_RemoveAllItems(oContainer);
	}
	// Credits Footlocker
	if (tag == "g_trescivil004") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_credits004", oContainer);
	}
	// Datapad Footlocker
	if (tag == "g_trescivil005") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("datapadminer002", oContainer);
		CreateItemOnObject("datapadminer1", oContainer);
		CreateItemOnObject("datapadminer003", oContainer);
		CreateItemOnObject("datapaddockoff", oContainer);
		CreateItemOnObject("datapadmineadm", oContainer);
		CreateItemOnObject("datapadmineforem", oContainer);
		CreateItemOnObject("datapadminecoort", oContainer);
	}
	// Components Droid
	if (tag == "g_tresdrd004") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("compont_00001", oContainer, 3);
		CreateItemOnObject("wg_sonic", oContainer, 1);
	}
	// Empty Corpse
	if (tag == "g_tresgencorp004") {
		Box_RemoveAllItems(oContainer);
	}
	// Smuggler Corpse
	if (tag == "g_tresgencorp005") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("datapadminer1", oContainer);
	}
	// Administration Officer Corpse
	if (tag == "g_tresgencorp006") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("datapadmineadm", oContainer);
		CreateItemOnObject("g_i_credits003", oContainer);
	}
	// Dock Officer Corpse
	if (tag == "g_tresgencorp007") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("datapaddockoff", oContainer);
		CreateItemOnObject("g_i_parts01", oContainer);
	}
	// Medical Officer Corpse
	if (tag == "g_tresgencorp008") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("hh_medpac1", oContainer);
		CreateItemOnObject("chem_00001", oContainer, 10);
	}
	// Sullustan Corpse
	if (tag == "g_tresgencorp009") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("compont_00001", oContainer, 2);
	}
	// Coorta Corpse
	if (tag == "g_tresgencorp010") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("datapadminecoort", oContainer);
		CreateItemOnObject("wm_mining1", oContainer);
		CreateItemOnObject("g_i_credits001", oContainer);
	}
	// Coorta Thug Corpse
	if (tag == "g_tresgencorp011") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_credits001", oContainer);
		CreateItemOnObject("wm_mining1", oContainer);
	}
	// Random Corpse
	if (tag == "g_tresgencorp012") {
		Box_RemoveAllItems(oContainer);
	}
	// Storage Corpse
	if (tag == "g_tresgencorp013") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("datapadminer003", oContainer);
	}
	// Cheat Cylinder
	if (tag == "g_tresmilhig006") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_secspike01", oContainer, 2);
		CreateItemOnObject("g_i_progspike01", oContainer, 2);
		CreateItemOnObject("g_i_parts01", oContainer, 2);
	}
	// Parts Locker
	if (tag == "g_tresmilhig007") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_parts01", oContainer, 2);
	}
	// Spikes Locker
	if (tag == "g_tresmilhig008") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_progspike01", oContainer, 2);
	}
	// Cheat Cylinder
	if (tag == "g_tresmilhig009") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_secspike01", oContainer, 2);
		CreateItemOnObject("g_i_progspike01", oContainer, 2);
		CreateItemOnObject("g_i_parts01", oContainer, 2);
		CreateItemOnObject("datapaddockoff", oContainer);
		CreateItemOnObject("datapadmineadm", oContainer);
		CreateItemOnObject("datapadmineforem", oContainer);
		CreateItemOnObject("datapadminecoort", oContainer);
	}
	// Empty Locker
	if (tag == "g_tresmillow006") {
		Box_RemoveAllItems(oContainer);
	}
	// Breath Mask Container
	if (tag == "g_tresmillow007") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("datapadminer002", oContainer);
		// CreateItemOnObject("hh_antido", oContainer, 2);
	}
	// Empty Container
	if (tag == "g_tresmillow008") {
		Box_RemoveAllItems(oContainer);
	}
	// Broken Container
	if (tag == "g_tresmillow009") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("hh_medpac1", oContainer);
		CreateItemOnObject("ua_med1", oContainer);
	}
	// Credits Container
	if (tag == "g_tresmillow010") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_credits002", oContainer);
	}
	// Locked Locker
	if (tag == "g_tresmillow011") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_credits003", oContainer, 1);
	}
	// Insulation Locker
	if (tag == "g_tresmillow012") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("ua_enviro1", oContainer);
	}
	// Credits Container
	if (tag == "g_tresmillow013") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_credits002", oContainer);
	}
	// Survival Kit
	if (tag == "g_tresmilmid006") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("hh_medpac1", oContainer, 4);
		CreateItemOnObject("hh_antido", oContainer, 2);
	}
	// Survival Kit
	if (tag == "g_tresmilmid007") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("hh_medpac1", oContainer, 3);
		CreateItemOnObject("chem_00001", oContainer, 10);
	}
}

void Box_FillContainer106PER(object oContainer) {
	
	string tag = GetTag(oContainer);
	
	// Repair Kit Droid
	if (tag == "g_tresdrd004") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("dh_repair1", oContainer, 2);
	}
	// Repair Kit Droid
	if (tag == "g_tresdrd005") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("dh_repair1", oContainer);
	}
	// Empty Container
	if (tag == "g_tresmilhig006") {
		Box_RemoveAllItems(oContainer);
	}
	// Weapon Container
	if (tag == "g_tresmilhig007") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("we_hack1", oContainer);
	}
	// Component Container
	if (tag == "g_tresmilhig008") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("compont_00001", oContainer, 2);
	}
	// Empty Footlocker
	if (tag == "g_tresmillow006") {
		Box_RemoveAllItems(oContainer);
	}
	// Parts/Spikes Container
	if (tag == "g_tresmillow007") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_parts01", oContainer, 5);
		CreateItemOnObject("g_i_progspike01", oContainer, 5);
	}
	// Cargo Footlocker
	if (tag == "g_tresmillow008") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("wg_sonic", oContainer);
	}
	// Component Footlocker
	if (tag == "g_tresmillow009") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("compont_00001", oContainer, 1);
	}
	// Locked Footlocker
	if (tag == "g_tresmillow010") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_progspike01", oContainer, 3);
		CreateItemOnObject("g_i_credits004", oContainer);
	}
	// Kit Container
	if (tag == "g_tresmillow011") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("dh_repair1", oContainer, 2);
	}
	// Kit Container
	if (tag == "g_tresmillow012") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("dh_repair1", oContainer, 2);
	}
	// Random Container
	if (tag == "g_tresmillow013") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_credits002", oContainer);
	}
	// Empty Container
	if (tag == "g_tresmillow014") {
		Box_RemoveAllItems(oContainer);
	}
	// Exit Footlocker
	if (tag == "g_tresmillow015") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("wg_sonic", oContainer);
		CreateItemOnObject("compont_00001", oContainer);
	}
	// Locked Footlocker
	if (tag == "g_tresmillow016") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("g_i_credits005", oContainer);
	}
	// Kit Container
	if (tag == "g_tresmillow017") {
		Box_RemoveAllItems(oContainer);
		CreateItemOnObject("dh_repair1", oContainer);
	}
}


void main() {
	
	object oContainer = OBJECT_SELF;
	string module = GetModuleFileName();
	
	if (module == "101PER")
		Box_FillContainer101PER(oContainer);
	if (module == "102PER")
		Box_FillContainer102PER(oContainer);
	if (module == "103PER")
		Box_FillContainer103PER(oContainer);
	// if (module == "104PER")
		// Box_FillContainer104PER(oContainer);
	if (module == "105PER")
		Box_FillContainer105PER(oContainer);
	if (module == "106PER")
		Box_FillContainer106PER(oContainer);
	// if (module == "107PER")
		// Box_FillContainer107PER(oContainer);
	
	// Remove script after treasure is placed
	RemoveHeartbeat(oContainer);
}














