
class Upgrade:
	def __init__(self, name, type, skill, skill_req, level_req, page):
		self.name = name
		self.type = type
		self.skill = skill
		self.skill_req = skill_req
		self.level_req = level_req
		self.page = page

item_group = 4
melee_group = 2
armor_group = 0
saber_group = 3
ranged_group = 1

science = 0
security = 5
medicine =  7
repair = 4
stealth = 6
persuade = 4
demolitions = 2
awareness = 3

upgrades = []


# Overlays
upgrades.append(Upgrade('ua_ablat1', 10, repair, 12, 0, armor_group))
upgrades.append(Upgrade('ua_ablat2', 10, repair, 20, 0, armor_group))
upgrades.append(Upgrade('ua_ablat3', 10, repair, 34, 0, armor_group))
upgrades.append(Upgrade('ua_ballis1', 10, repair, 8, 0, armor_group))
upgrades.append(Upgrade('ua_ballis2', 10, repair, 14, 0, armor_group))
upgrades.append(Upgrade('ua_ballis3', 10, repair, 20, 0, armor_group))
upgrades.append(Upgrade('ua_ballis4', 10, repair, 28, 0, armor_group))
upgrades.append(Upgrade('ua_energy1', 10, science, 8, 0, armor_group))
upgrades.append(Upgrade('ua_energy2', 10, science, 14, 0, armor_group))
upgrades.append(Upgrade('ua_energy3', 10, science, 20, 0, armor_group))
upgrades.append(Upgrade('ua_energy4', 10, science, 28, 0, armor_group))
upgrades.append(Upgrade('ua_heat1', 10, science, 4, 0, armor_group))
upgrades.append(Upgrade('ua_heat2', 10, science, 12, 0, armor_group))
upgrades.append(Upgrade('ua_heat3', 10, science, 18, 0, armor_group))
upgrades.append(Upgrade('ua_heat4', 10, science, 26, 0, armor_group))
upgrades.append(Upgrade('ua_radian1', 10, science, 6, 0, armor_group))
upgrades.append(Upgrade('ua_radian2', 10, science, 12, 0, armor_group))
upgrades.append(Upgrade('ua_radian3', 10, science, 22, 0, armor_group))
upgrades.append(Upgrade('ua_radian4', 10, science, 30, 0, armor_group))
upgrades.append(Upgrade('ua_steal1', 10, science, 10, 0, armor_group))
upgrades.append(Upgrade('ua_steal2', 10, science, 16, 0, armor_group))
upgrades.append(Upgrade('ua_steal3', 10, science, 24, 0, armor_group))
upgrades.append(Upgrade('ua_steal4', 10, science, 32, 0, armor_group))
# Underlays
upgrades.append(Upgrade('ua_biores1', 11, medicine, 26, 0, armor_group))
upgrades.append(Upgrade('ua_biores2', 11, medicine, 32, 0, armor_group))
upgrades.append(Upgrade('ua_envir1', 11, science, 4, 0, armor_group))
upgrades.append(Upgrade('ua_envir2', 11, science, 8, 0, armor_group))
upgrades.append(Upgrade('ua_mental1', 11, science, 10, 0, armor_group))
upgrades.append(Upgrade('ua_mental2', 11, science, 16, 0, armor_group))
upgrades.append(Upgrade('ua_mental3', 11, science, 24, 0, armor_group))
upgrades.append(Upgrade('ua_prot1', 11, science, 18, 0, armor_group))
upgrades.append(Upgrade('ua_prot2', 11, science, 30, 0, armor_group))
upgrades.append(Upgrade('ua_stren1', 11, science, 16, 0, armor_group))
upgrades.append(Upgrade('ua_stren2', 11, science, 26, 0, armor_group))
upgrades.append(Upgrade('ua_stren3', 11, science, 34, 0, armor_group))
upgrades.append(Upgrade('ua_med1', 11, medicine, 2, 0, armor_group))
upgrades.append(Upgrade('ua_med2', 11, medicine, 6, 0, armor_group))
upgrades.append(Upgrade('ua_med3', 11, medicine, 14, 0, armor_group))
upgrades.append(Upgrade('ua_med4', 11, medicine, 22, 0, armor_group))
upgrades.append(Upgrade('ua_flex1', 11, repair, 12, 0, armor_group))
upgrades.append(Upgrade('ua_flex2', 11, repair, 20, 0, armor_group))
upgrades.append(Upgrade('ua_flex3', 11, repair, 28, 0, armor_group))

# Melee cells
upgrades.append(Upgrade('um_vcell', 9, science, 14, 0, melee_group))
upgrades.append(Upgrade('um_sonic', 9, science, 26, 0, melee_group))
upgrades.append(Upgrade('um_ecell', 9, science, 10, 0, melee_group))
upgrades.append(Upgrade('um_elec', 9, science, 18, 0, melee_group))
upgrades.append(Upgrade('um_plasma', 9, science, 22, 0, melee_group))
# Edges
upgrades.append(Upgrade('um_crit1', 8, repair, 8, 0, melee_group))
upgrades.append(Upgrade('um_crit2', 8, repair, 16, 0, melee_group))
upgrades.append(Upgrade('um_crit3', 8, repair, 24, 0, melee_group))
upgrades.append(Upgrade('um_metal1', 8, repair, 4, 0, melee_group))
upgrades.append(Upgrade('um_metal2', 8, repair, 12, 0, melee_group))
upgrades.append(Upgrade('um_metal3', 8, repair, 20, 0, melee_group))
upgrades.append(Upgrade('um_metal4', 8, repair, 28, 0, melee_group))
upgrades.append(Upgrade('um_psn1', 8, medicine, 4, 0, melee_group))
upgrades.append(Upgrade('um_psn2', 8, medicine, 10, 0, melee_group))
upgrades.append(Upgrade('um_psn3', 8, medicine, 18, 0, melee_group))
upgrades.append(Upgrade('um_psn4', 8, medicine, 24, 0, melee_group))
upgrades.append(Upgrade('um_eedge', 8, science, 18, 0, melee_group))
upgrades.append(Upgrade('um_ion1', 8, science, 6, 0, melee_group))
upgrades.append(Upgrade('um_ion2', 8, science, 20, 0, melee_group))
upgrades.append(Upgrade('um_keen', 8, repair, 22, 0, melee_group))
upgrades.append(Upgrade('um_chill', 8, science, 30, 0, melee_group))
upgrades.append(Upgrade('um_heat', 8, science, 26, 0, melee_group))
# Grips
upgrades.append(Upgrade('um_aggro1', 7, repair, 2, 0, melee_group))
upgrades.append(Upgrade('um_aggro2', 7, repair, 10, 0, melee_group))
upgrades.append(Upgrade('um_aggro3', 7, repair, 20, 0, melee_group))
upgrades.append(Upgrade('um_defend1', 7, repair, 6, 0, melee_group))
upgrades.append(Upgrade('um_defend2', 7, repair, 16, 0, melee_group))
upgrades.append(Upgrade('um_defend3', 7, repair, 26, 0, melee_group))
upgrades.append(Upgrade('um_balan1', 7, repair, 14, 0, melee_group))
upgrades.append(Upgrade('um_balan2', 7, repair, 18, 0, melee_group))
upgrades.append(Upgrade('um_balan3', 7, repair, 28, 0, melee_group))
upgrades.append(Upgrade('um_passiv1', 7, repair, 4, 0, melee_group))
upgrades.append(Upgrade('um_passiv2', 7, repair, 12, 0, melee_group))
upgrades.append(Upgrade('um_passiv3', 7, repair, 24, 0, melee_group))
upgrades.append(Upgrade('um_power1', 7, repair, 22, 0, melee_group))
upgrades.append(Upgrade('um_power2', 7, repair, 30, 0, melee_group))


# Chamber
upgrades.append(Upgrade('ur_wide1', 6, science, 4, 0, ranged_group))
upgrades.append(Upgrade('ur_wide2', 6, science, 16, 0, ranged_group))
upgrades.append(Upgrade('ur_wide3', 6, science, 28, 0, ranged_group))
upgrades.append(Upgrade('ur_conc1', 6, science, 2, 0, ranged_group))
upgrades.append(Upgrade('ur_conc2', 6, science, 10, 0, ranged_group))
upgrades.append(Upgrade('ur_conc3', 6, science, 24, 0, ranged_group))
upgrades.append(Upgrade('ur_ion1', 6, science, 6, 0, ranged_group))
upgrades.append(Upgrade('ur_ion2', 6, science, 18, 0, ranged_group))
upgrades.append(Upgrade('ur_beam1', 6, science, 8, 0, ranged_group))
upgrades.append(Upgrade('ur_beam2', 6, science, 20, 0, ranged_group))
upgrades.append(Upgrade('ur_disrup1', 6, science, 12, 0, ranged_group))
upgrades.append(Upgrade('ur_disrup2', 6, science, 22, 0, ranged_group))
upgrades.append(Upgrade('ur_precis1', 6, science, 14, 0, ranged_group))
upgrades.append(Upgrade('ur_precis2', 6, science, 26, 0, ranged_group))
# Ranged Cells
upgrades.append(Upgrade('ur_ecell1', 5, science, 4, 0, ranged_group))
upgrades.append(Upgrade('ur_ecell2', 5, science, 14, 0, ranged_group))
upgrades.append(Upgrade('ur_ecell3', 5, science, 22, 0, ranged_group))
upgrades.append(Upgrade('ur_ecell4', 5, science, 30, 0, ranged_group))
upgrades.append(Upgrade('ur_elec1', 5, science, 6, 0, ranged_group))
upgrades.append(Upgrade('ur_elec2', 5, science, 16, 0, ranged_group))
upgrades.append(Upgrade('ur_elec3', 5, science, 22, 0, ranged_group))
upgrades.append(Upgrade('ur_elec4', 5, science, 28, 0, ranged_group))
upgrades.append(Upgrade('ur_ion1', 5, science, 8, 0, ranged_group))
upgrades.append(Upgrade('ur_ion2', 5, science, 18, 0, ranged_group))
upgrades.append(Upgrade('ur_plasma1', 5, science, 8, 0, ranged_group))
upgrades.append(Upgrade('ur_plasma2', 5, science, 24, 0, ranged_group))
upgrades.append(Upgrade('ur_crit1', 5, science, 6, 0, ranged_group))
upgrades.append(Upgrade('ur_crit2', 5, science, 12, 0, ranged_group))
upgrades.append(Upgrade('ur_crit3', 5, science, 20, 0, ranged_group))
upgrades.append(Upgrade('ur_crit4', 5, science, 28, 0, ranged_group))
upgrades.append(Upgrade('ur_phys1', 5, science, 10, 0, ranged_group))
upgrades.append(Upgrade('ur_phys2', 5, science, 18, 0, ranged_group))
upgrades.append(Upgrade('ur_phys3', 5, science, 26, 0, ranged_group))
# Scopes
upgrades.append(Upgrade('ur_keen', 4, repair, 22, 0, ranged_group))
upgrades.append(Upgrade('ur_acc1', 4, repair, 12, 0, ranged_group))
upgrades.append(Upgrade('ur_acc2', 4, repair, 28, 0, ranged_group))

# Lightsaber Cells
upgrades.append(Upgrade('ul_cold', 3, science, 30, 0, saber_group))
upgrades.append(Upgrade('ul_elec', 3, science, 22, 0, saber_group))
upgrades.append(Upgrade('ul_disrup', 3, science, 26, 0, saber_group))
upgrades.append(Upgrade('ul_fire', 3, science, 28, 0, saber_group))
upgrades.append(Upgrade('ul_ion', 3, science, 24, 0, saber_group))
upgrades.append(Upgrade('ul_energy', 3, science, 20, 0, saber_group))
# Emitters
upgrades.append(Upgrade('ul_disrup1', 2, science, 22, 0, saber_group))
upgrades.append(Upgrade('ul_disrup2', 2, science, 28, 0, saber_group))
upgrades.append(Upgrade('ul_deflec1', 2, science, 20, 0, saber_group))
upgrades.append(Upgrade('ul_deflec2', 2, science, 26, 0, saber_group))
upgrades.append(Upgrade('ul_fencin', 2, science, 24, 0, saber_group))
upgrades.append(Upgrade('ul_phob', 2, science, 30, 0, saber_group))
# Lenses
upgrades.append(Upgrade('ul_vib1', 1, science, 18, 0, saber_group))
upgrades.append(Upgrade('ul_vib2', 1, science, 24, 0, saber_group))
upgrades.append(Upgrade('ul_kunda1', 1, science, 22, 0, saber_group))
upgrades.append(Upgrade('ul_kunda2', 1, science, 28, 0, saber_group))
upgrades.append(Upgrade('ul_wide1', 1, science, 20, 0, saber_group))
upgrades.append(Upgrade('ul_wide2', 1, science, 26, 0, saber_group))
upgrades.append(Upgrade('ul_sharp', 1, science, 30, 0, saber_group))


crystals = []
crystals.append(Upgrade('ul_ankar', 0, None, None, None, None))
crystals.append(Upgrade('ul_barab', 0, None, None, None, None))
crystals.append(Upgrade('ul_bondar', 0, None, None, None, None))
crystals.append(Upgrade('ul_damind', 0, None, None, None, None))
crystals.append(Upgrade('ul_dragit', 0, None, None, None, None))
crystals.append(Upgrade('ul_firk', 0, None, None, None, None))
crystals.append(Upgrade('ul_fond', 0, None, None, None, None))
crystals.append(Upgrade('ul_hurr', 0, None, None, None, None))
crystals.append(Upgrade('ul_jenrau', 0, None, None, None, None))
crystals.append(Upgrade('ul_kasha', 0, None, None, None, None))
crystals.append(Upgrade('ul_lorrd', 0, None, None, None, None))
crystals.append(Upgrade('ul_nextor', 0, None, None, None, None))
crystals.append(Upgrade('ul_pontit', 0, None, None, None, None))
crystals.append(Upgrade('ul_qixoni', 0, None, None, None, None))
crystals.append(Upgrade('ul_rubat', 0, None, None, None, None))
crystals.append(Upgrade('ul_sigil', 0, None, None, None, None))
crystals.append(Upgrade('ul_solari', 0, None, None, None, None))
crystals.append(Upgrade('ul_styg', 0, None, None, None, None))
crystals.append(Upgrade('ul_ultima', 0, None, None, None, None))
crystals.append(Upgrade('ul_upari', 0, None, None, None, None))

items = []
items.append(Upgrade('wm_simple1', None, repair, 2, 0, item_group))
items.append(Upgrade('wm_simple2', None, repair, 4, 0, item_group))
items.append(Upgrade('wm_simple3', None, repair, 4, 0, item_group))
items.append(Upgrade('wm_simple5', None, repair, 4, 0, item_group))
items.append(Upgrade('wm_simple6', None, repair, 6, 0, item_group))
items.append(Upgrade('wm_simple4', None, repair, 8, 0, item_group))
items.append(Upgrade('wr_common2', None, science, 2, 0, item_group))
items.append(Upgrade('wr_common1', None, science, 4, 0, item_group))
items.append(Upgrade('wr_common3', None, science, 6, 0, item_group))
items.append(Upgrade('wr_common4', None, science, 6, 0, item_group))
items.append(Upgrade('wr_common5', None, science, 6, 0, item_group))
items.append(Upgrade('wr_common7', None, science, 6, 0, item_group))
items.append(Upgrade('wr_common6', None, science, 8, 0, item_group))
items.append(Upgrade('wr_common8', None, science, 8, 0, item_group))
items.append(Upgrade('dh_repair1', None, repair, 2, 0, item_group))
items.append(Upgrade('dh_repair2', None, repair, 10, 0, item_group))
items.append(Upgrade('dh_quick1', None, repair, 12, 0, item_group))
items.append(Upgrade('dh_repair3', None, repair, 18, 0, item_group))
items.append(Upgrade('dh_quick2', None, repair, 20, 0, item_group))
items.append(Upgrade('g_i_progspike01', None, science, 4, 0, item_group))
items.append(Upgrade('g_i_parts01', None, repair, 4, 0, item_group))
items.append(Upgrade('g_i_secspike01', None, science, 6, 0, item_group))
items.append(Upgrade('g_i_secspike02', None, science, 12, 0, item_group))

jediitems = []
jediitems.append(Upgrade('ha_robe1', None, repair, 6, 0, item_group))
jediitems.append(Upgrade('ha_robe2', None, repair, 10, 0, item_group))
jediitems.append(Upgrade('ha_robe3', None, repair, 12, 0, item_group))
jediitems.append(Upgrade('ha_robe4', None, repair, 14, 0, item_group))
jediitems.append(Upgrade('ha_robe5', None, repair, 18, 0, item_group))
jediitems.append(Upgrade('g_w_shortsbr01', None, awareness, 10, 16, item_group))
jediitems.append(Upgrade('g_w_lghtsbr01', None, awareness, 12, 18, item_group))
jediitems.append(Upgrade('g_w_dblsbr01', None, awareness, 14, 20, item_group))
jediitems.append(Upgrade('g_w_shortsbr02', None, awareness, 10, 16, item_group))
jediitems.append(Upgrade('g_w_lghtsbr02', None, awareness, 12, 18, item_group))
jediitems.append(Upgrade('g_w_dblsbr02', None, awareness, 14, 20, item_group))
jediitems.append(Upgrade('g_w_shortsbr03', None, awareness, 10, 16, item_group))
jediitems.append(Upgrade('g_w_lghtsbr03', None, awareness, 12, 18, item_group))
jediitems.append(Upgrade('g_w_dblsbr03', None, awareness, 14, 20, item_group))
jediitems.append(Upgrade('g_w_shortsbr04', None, awareness, 10, 16, item_group))
jediitems.append(Upgrade('g_w_lghtsbr04', None, awareness, 12, 18, item_group))
jediitems.append(Upgrade('g_w_dblsbr04', None, awareness, 14, 20, item_group))

implant_group = 0
stim_group = 1
mine_group = 2
grenade_group = 3

meds =[]

# Implants
meds.append(Upgrade('hi_implan1', None, medicine, 1, None, implant_group))
meds.append(Upgrade('hi_implan2', None, medicine, 2, None, implant_group))
meds.append(Upgrade('hi_implan3', None, medicine, 3, None, implant_group))
meds.append(Upgrade('hi_implan4', None, medicine, 4, None, implant_group))
meds.append(Upgrade('hi_implan5', None, medicine, 5, None, implant_group))
meds.append(Upgrade('hi_implan6', None, medicine, 6, None, implant_group))
meds.append(Upgrade('hi_implan7', None, medicine, 7, None, implant_group))
meds.append(Upgrade('hi_implan8', None, medicine, 8, None, implant_group))
meds.append(Upgrade('hi_implan9', None, medicine, 9, None, implant_group))
meds.append(Upgrade('hi_implan10', None, medicine, 10, None, implant_group))
meds.append(Upgrade('hi_pack1', None, medicine, 1, None, implant_group))
meds.append(Upgrade('hi_pack2', None, medicine, 2, None, implant_group))
meds.append(Upgrade('hi_pack3', None, medicine, 3, None, implant_group))
meds.append(Upgrade('hi_pack4', None, medicine, 4, None, implant_group))
meds.append(Upgrade('hi_pack5', None, medicine, 5, None, implant_group))
meds.append(Upgrade('hi_pack6', None, medicine, 6, None, implant_group))
meds.append(Upgrade('hi_pack7', None, medicine, 7, None, implant_group))
meds.append(Upgrade('hi_pack8', None, medicine, 8, None, implant_group))
meds.append(Upgrade('hi_pack9', None, medicine, 9, None, implant_group))
meds.append(Upgrade('hi_pack10', None, medicine, 10, None, implant_group))
meds.append(Upgrade('hi_system1', None, medicine, 1, None, implant_group))
meds.append(Upgrade('hi_system2', None, medicine, 2, None, implant_group))
meds.append(Upgrade('hi_system3', None, medicine, 3, None, implant_group))
meds.append(Upgrade('hi_system4', None, medicine, 4, None, implant_group))
meds.append(Upgrade('hi_system5', None, medicine, 5, None, implant_group))
meds.append(Upgrade('hi_system6', None, medicine, 6, None, implant_group))
meds.append(Upgrade('hi_system7', None, medicine, 7, None, implant_group))
meds.append(Upgrade('hi_system8', None, medicine, 8, None, implant_group)) 
meds.append(Upgrade('hi_system9', None, medicine, 9, None, implant_group))
meds.append(Upgrade('hi_system10', None, medicine, 10, None, implant_group))
# Medpacs - the "eff" weapons are the efficient versions and haven't been created yet, not sure if any have
meds.append(Upgrade('hh_medpac1', None, medicine, 4, None, stim_group))
meds.append(Upgrade('hh_medpac2', None, medicine, 12, None, stim_group))
meds.append(Upgrade('hh_medpac3', None, medicine, 24, None, stim_group))
meds.append(Upgrade('hh_medpac1e', None, medicine, 16, None, stim_group))
meds.append(Upgrade('hh_medpac2e', None, medicine, 24, None, stim_group))
meds.append(Upgrade('hh_medpac3e', None, medicine, 32, None, stim_group))
meds.append(Upgrade('hh_antido', None, medicine, 8, None, stim_group))
meds.append(Upgrade('hh_antitoe', None, medicine, 18, None, stim_group))
meds.append(Upgrade('hh_lifepk1', None, medicine, 14, None, stim_group))
meds.append(Upgrade('hh_lifepk2', None, medicine, 24, None, stim_group))
meds.append(Upgrade('hh_lifepk1e', None, medicine, 22, None, stim_group))
meds.append(Upgrade('hh_lifepk2e', None, medicine, 30, None, stim_group))
# Grenades
meds.append(Upgrade('wg_frag', None, demolitions, 4, None, grenade_group))
meds.append(Upgrade('wg_stun', None, demolitions, 4, None, grenade_group))
meds.append(Upgrade('wg_ion', None, demolitions, 6, None, grenade_group))
meds.append(Upgrade('wg_sonic', None, demolitions, 6, None, grenade_group))
meds.append(Upgrade('wg_plasma', None, demolitions, 8, None, grenade_group))
meds.append(Upgrade('wg_cold', None, demolitions, 8, None, grenade_group))
meds.append(Upgrade('wg_thermal', None, demolitions, 20, None, grenade_group))
# Mines - these haven't been created yet
meds.append(Upgrade('tm_frag1', None, demolitions, 6, None, mine_group))
meds.append(Upgrade('tm_frag4', None, demolitions, 24, None, mine_group))
meds.append(Upgrade('tm_flash1', None, demolitions, 6, None, mine_group))
meds.append(Upgrade('tm_flash4', None, demolitions, 24, None, mine_group))
meds.append(Upgrade('tm_sonic1', None, demolitions, 6, None, mine_group))
meds.append(Upgrade('tm_sonic4', None, demolitions, 24, None, mine_group))
meds.append(Upgrade('tm_gas1', None, demolitions, 6, None, mine_group))
meds.append(Upgrade('tm_gas4', None, demolitions, 24, None, mine_group))
meds.append(Upgrade('tm_plasma1', None, demolitions, 6, None, mine_group))
meds.append(Upgrade('tm_plasma4', None, demolitions, 24, None, mine_group))
# meds.append(Upgrade('mi_frag1', None, demolitions, 6, None, mine_group))
# meds.append(Upgrade('mi_frag2', None, demolitions, 12, None, mine_group))
# meds.append(Upgrade('mi_frag3', None, demolitions, 18, None, mine_group))
# meds.append(Upgrade('mi_frag4', None, demolitions, 24, None, mine_group))
# meds.append(Upgrade('mi_frag5', None, demolitions, 30, None, mine_group))
# meds.append(Upgrade('mi_flash1', None, demolitions, 6, None, mine_group))
# meds.append(Upgrade('mi_flash2', None, demolitions, 12, None, mine_group))
# meds.append(Upgrade('mi_flash3', None, demolitions, 18, None, mine_group))
# meds.append(Upgrade('mi_flash4', None, demolitions, 24, None, mine_group))
# meds.append(Upgrade('mi_flash5', None, demolitions, 30, None, mine_group))
# meds.append(Upgrade('mi_sonic1', None, demolitions, 6, None, mine_group))
# meds.append(Upgrade('mi_sonic2', None, demolitions, 12, None, mine_group))
# meds.append(Upgrade('mi_sonic3', None, demolitions, 18, None, mine_group))
# meds.append(Upgrade('mi_sonic4', None, demolitions, 24, None, mine_group))
# meds.append(Upgrade('mi_sonic5', None, demolitions, 30, None, mine_group))
# meds.append(Upgrade('mi_gas1', None, demolitions, 6, None, mine_group))
# meds.append(Upgrade('mi_gas2', None, demolitions, 12, None, mine_group))
# meds.append(Upgrade('mi_gas3', None, demolitions, 18, None, mine_group))
# meds.append(Upgrade('mi_gas4', None, demolitions, 24, None, mine_group))
# meds.append(Upgrade('mi_gas5', None, demolitions, 30, None, mine_group))
# meds.append(Upgrade('mi_plasma1', None, demolitions, 6, None, mine_group))
# meds.append(Upgrade('mi_plasma2', None, demolitions, 12, None, mine_group))
# meds.append(Upgrade('mi_plasma3', None, demolitions, 18, None, mine_group))
# meds.append(Upgrade('mi_plasma4', None, demolitions, 24, None, mine_group))
# meds.append(Upgrade('mi_plasma5', None, demolitions, 30, None, mine_group))

header = 'error'
with open('upgradeheader.ini', 'r') as file:
	header = file.read()

with open('tslpatchdata\\upgrades.ini', 'w') as file:
	
	file.write(header)
	
	file.write('[upgrade.2da]\n')
	for i in range(0, len(upgrades)):
		file.write('AddRow' + str(i) + '=upgrade_row_' + upgrades[i].name + '_' + str(i) + '\n')
	for i in range(len(upgrades), len(upgrades) + len(crystals)):
		file.write('AddRow' + str(i) + '=upgrade_row_' + crystals[i-len(upgrades)].name + '_' + str(i) + '\n')
	
	for i in range(0, len(upgrades)):
		file.write('[upgrade_row_' + upgrades[i].name + '_' + str(i) + ']\n')
		file.write('label=' + upgrades[i].name + '\n')
		file.write('template=' + upgrades[i].name + '\n')
		file.write('upgradetype=' + str(upgrades[i].type) + '\n')
	for i in range(0, len(crystals)):
		file.write('[upgrade_row_' + crystals[i].name + '_' + str(i+len(upgrades)) + ']\n')
		file.write('label=' + crystals[i].name + '\n')
		file.write('template=' + crystals[i].name + '\n')
		file.write('upgradetype=' + str(crystals[i].type) + '\n')
	
	
	file.write('[itemcreate.2da]\n')
	for i in range(0, len(upgrades)):
		file.write('AddRow' + str(i) + '=itemcreate_row_' + upgrades[i].name + '_' + str(i) + '\n')
	for i in range(len(upgrades), len(upgrades) + len(items)):
		file.write('AddRow' + str(i) + '=itemcreate_row_' + items[i-len(upgrades)].name + '_' + str(i) + '\n')
	for i in range(0, len(upgrades)):
		file.write('[itemcreate_row_' + upgrades[i].name + '_' + str(i) + ']\n')
		file.write('label=' + upgrades[i].name + '\n')
		file.write('skill=' + str(upgrades[i].skill_req) + '\n')
		file.write('group=' + str(upgrades[i].page) + '\n')
		file.write('level=' + str(upgrades[i].level_req) + '\n')
		file.write('align=0\n')
		file.write('base_skill=' + str(upgrades[i].skill) + '\n')
		file.write('dunno=0\n')
	for i in range(len(upgrades), len(upgrades) + len(items)):
		file.write('[itemcreate_row_' + items[i-len(upgrades)].name + '_' + str(i) + ']\n')
		file.write('label=' + items[i-len(upgrades)].name + '\n')
		file.write('skill=' + str(items[i-len(upgrades)].skill_req) + '\n')
		file.write('group=' + str(items[i-len(upgrades)].page) + '\n')
		file.write('level=' + str(items[i-len(upgrades)].level_req) + '\n')
		file.write('align=0\n')
		file.write('base_skill=' + str(items[i-len(upgrades)].skill) + '\n')
		file.write('dunno=0\n')
	
	file.write('[itemcreatejedi.2da]\n')
	for i in range(0, len(upgrades)):
		file.write('AddRow' + str(i) + '=itemcreatejedi_row_' + upgrades[i].name + '_' + str(i) + '\n')
	for i in range(len(upgrades), len(upgrades) + len(items)):
		file.write('AddRow' + str(i) + '=itemcreatejedi_row_' + items[i-len(upgrades)].name + '_' + str(i) + '\n')
	for i in range(len(upgrades) + len(items), len(upgrades) + len(items) + len(jediitems)):
		file.write('AddRow' + str(i) + '=itemcreatejedi_row_' + jediitems[i-len(upgrades)-len(items)].name + '_' + str(i) + '\n')
	for i in range(0, len(upgrades)):
		file.write('[itemcreatejedi_row_' + upgrades[i].name + '_' + str(i) + ']\n')
		file.write('label=' + upgrades[i].name + '\n')
		file.write('skill=' + str(upgrades[i].skill_req) + '\n')
		file.write('group=' + str(upgrades[i].page) + '\n')
		file.write('level=' + str(upgrades[i].level_req) + '\n')
		file.write('align=0\n')
		file.write('base_skill=' + str(upgrades[i].skill) + '\n')
		file.write('dunno=0\n')
	for i in range(len(upgrades), len(upgrades) + len(items)):
		file.write('[itemcreatejedi_row_' + items[i-len(upgrades)].name + '_' + str(i) + ']\n')
		file.write('label=' + items[i-len(upgrades)].name + '\n')
		file.write('skill=' + str(items[i-len(upgrades)].skill_req) + '\n')
		file.write('group=' + str(items[i-len(upgrades)].page) + '\n')
		file.write('level=' + str(items[i-len(upgrades)].level_req) + '\n')
		file.write('align=0\n')
		file.write('base_skill=' + str(items[i-len(upgrades)].skill) + '\n')
		file.write('dunno=0\n')
	for i in range(len(upgrades) + len(items), len(upgrades) + len(items) + len(jediitems)):
		file.write('[itemcreatejedi_row_' + jediitems[i-len(upgrades)-len(items)].name + '_' + str(i) + ']\n')
		file.write('label=' + jediitems[i-len(upgrades)-len(items)].name + '\n')
		file.write('skill=' + str(jediitems[i-len(upgrades)-len(items)].skill_req) + '\n')
		file.write('group=' + str(jediitems[i-len(upgrades)-len(items)].page) + '\n')
		file.write('level=' + str(jediitems[i-len(upgrades)-len(items)].level_req) + '\n')
		file.write('align=0\n')
		file.write('base_skill=' + str(jediitems[i-len(upgrades)-len(items)].skill) + '\n')
		file.write('dunno=0\n')
	
	file.write('[chemicalcreate.2da]\n')
	for i in range(0, len(meds)):
		file.write('AddRow' + str(i) + '=chemicalcreate_row_' + meds[i].name + '_' + str(i) + '\n')
	for i in range(0, len(meds)):
		file.write('[chemicalcreate_row_' + meds[i].name + '_' + str(i) + ']\n')
		file.write('label=' + meds[i].name + '\n')
		file.write('skilllevel=' + str(meds[i].skill_req) + '\n')
		file.write('group=' + str(meds[i].page) + '\n')
		file.write('base_skill=' + str(meds[i].skill) + '\n')
	
	