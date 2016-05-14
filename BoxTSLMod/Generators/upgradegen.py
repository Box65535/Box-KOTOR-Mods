
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
# Generated lines go here
#MEDS


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
	
	