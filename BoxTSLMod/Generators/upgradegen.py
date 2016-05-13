
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

overlay = 10
underlay = 11
mcell = 9
edge = 8
grip = 7
chamber = 6
rcell = 5
scope = 4
lcell = 3
emitter = 2
lens = 1

upgrades = []
# Generated lines go here
#UPGRADES


crystals = []
# Generated lines go here
#CRYSTALS

items = []
# Generated lines go here
#ITEM

jediitems = []
# Generated lines go here
#JEDI

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
	
	