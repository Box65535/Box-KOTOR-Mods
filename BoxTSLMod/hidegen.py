import shutil

class Hide:
	def __init__(self, name, attack, defense, fortitude, reflex, will, regen, deflect, immunities, feats,
	skill_bonuses, immunity_bonuses, save_bonuses):
		self.name = name
		self.attack = attack
		self.defense = defense
		self.fortitude = fortitude
		self.reflex = reflex
		self.will = will
		self.regen = regen
		self.deflect = deflect
		self.immunities = immunities
		self.feats = feats
		self.skill_bonuses = skill_bonuses
		self.immunity_bonuses = immunity_bonuses
		self.save_bonuses = save_bonuses


def count_properties(hide):
	props = 0
	props = props + (hide.attack // 5) + 1
	props = props + (hide.defense // 5) + 1
	props = props + (hide.fortitude // 5) + 1
	props = props + (hide.reflex // 5) + 1
	props = props + (hide.will // 5) + 1
	
	if hide.regen:
		props = props + 1
	
	props = props + (hide.deflect // 10) + 1
	
	if hide.immunities:
		props = props + len(hide.immunities)
	
	if hide.feats:
		props = props + len(hide.feats)
	
	for key in hide.skill_bonuses:
		props = props + (hide.skill_bonuses[key] // 10) + 1
	
	for key in hide.immunity_bonuses:
		props = props + 1
	
	for key in hide.save_bonuses:
		props = props + (hide.save_bonuses[key] // 5) + 1
	
	return props # Turns out I'm not good at calcing this

def write_property(file, name, propname, subtype, costtable, costvalue, param1, param1value, chanceappear):
	
	file.write('[' + name + ']\n')
	file.write('FieldType=Struct\n')
	file.write('Path=PropertiesList\n')
	file.write('Label=\n')
	file.write('TypeId=0\n')
	file.write('AddField0=' + name + '_PropertyName\n')
	file.write('AddField1=' + name + '_Subtype\n')
	file.write('AddField2=' + name + '_CostTable\n')
	file.write('AddField3=' + name + '_CostValue\n')
	file.write('AddField4=' + name + '_Param1\n')
	file.write('AddField5=' + name + '_Param1Value\n')
	file.write('AddField6=' + name + '_ChanceAppear\n')
	file.write('[' + name + '_PropertyName]\n')
	file.write('FieldType=Word\n')
	file.write('Label=PropertyName\n')
	file.write('Value=' + str(propname) + '\n')
	file.write('[' + name + '_Subtype]\n')
	file.write('FieldType=Word\n')
	file.write('Label=Subtype\n')
	file.write('Value=' + str(subtype) + '\n')
	file.write('[' + name + '_CostTable]\n')
	file.write('FieldType=Byte\n')
	file.write('Label=CostTable\n')
	file.write('Value=' + str(costtable) + '\n')
	file.write('[' + name + '_CostValue]\n')
	file.write('FieldType=Word\n')
	file.write('Label=CostValue\n')
	file.write('Value=' + str(costvalue) + '\n')
	file.write('[' + name + '_Param1]\n')
	file.write('FieldType=Byte\n')
	file.write('Label=Param1\n')
	file.write('Value=' + str(param1) + '\n')
	file.write('[' + name + '_Param1Value]\n')
	file.write('FieldType=Byte\n')
	file.write('Label=Param1Value\n')
	file.write('Value=' + str(param1value) + '\n')
	file.write('[' + name + '_ChanceAppear]\n')
	file.write('FieldType=Byte\n')
	file.write('Label=ChanceAppear\n')
	file.write('Value=' + str(chanceappear) + '\n')

def write_hide(file, hide):
	
	num_props = count_properties(hide)
	
	name = hide.name
	
	file.write('[' + name + '.uti]\n')
	file.write('TemplateResRef=' + name + '\n')
	file.write('Tag=' + name + '\n')
	for i in range(0, num_props):
		file.write('AddField' + str(i) + '=gff_' + name + '_PropertiesList_' + str(i+1) + '_0\n')
	file.write('!ReplaceFile=1\n')
	
	num_used = 0
	
	attack = hide.attack
	while attack > 5:
		write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 38, 0, 2, 5, 255, 0, 100)
		num_used += 1
		attack -= 5
	if attack > 0:
		write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 38, 0, 2, attack, 255, 0, 100)
		num_used += 1
	defense = hide.defense
	while defense > 5:
		write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 1, 0, 2, 5, 255, 0, 100)
		num_used += 1
		defense -= 5
	if defense > 0:
		write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 1, 0, 2, defense, 255, 0, 100)
		num_used += 1
	fortitude = hide.fortitude
	while fortitude > 5:
		write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 27, 1, 2, 5, 255, 0, 100)
		num_used += 1
		fortitude -= 5
	if fortitude > 0:
		write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 27, 1, 2, fortitude, 255, 0, 100)
		num_used += 1
	reflex = hide.reflex
	while reflex > 5:
		write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 27, 2, 2, 5, 255, 0, 100)
		num_used += 1
		reflex -= 5
	if reflex > 0:
		write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 27, 2, 2, reflex, 255, 0, 100)
		num_used += 1
	will = hide.will
	while will > 5:
		write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 27, 3, 2, 5, 255, 0, 100)
		will -= 5
		num_used += 1
	if will > 0:
		write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 27, 3, 2, will, 255, 0, 100)
		num_used += 1
	
	if hide.regen:
		write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 35, 0, 2, hide.regen, 255, 0, 100)
		num_used += 1
	
	deflect = hide.deflect
	while deflect > 10:
		write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 55, 0, 2, 10, 255, 0, 100)
		deflect -= 10
		num_used += 1
	if deflect > 0:
		write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 55, 0, 2, deflect, 255, 0, 100)
		num_used += 1
	
	if hide.immunities:
		for i in hide.immunities:
			write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 24, i, 0, 0, 255, 0, 100)
			num_used += 1
	
	if hide.feats:
		for f in hide.feats:
			write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 9, f, 0, 1, 255, 0, 100)
			num_used += 1
	
	for key in hide.skill_bonuses:
		skill = hide.skill_bonuses[key]
		while skill > 10:
			write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 36, key, 1, 10, 255, 0, 100)
			num_used += 1
			skill -= 10
		if skill > 0:
			write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 36, key, 1, skill, 255, 0, 100)
			num_used += 1
	
	for key in hide.immunity_bonuses:
		bonus = hide.immunity_bonuses[key]
		write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 14, key, 5, bonus, 255, 0, 100)
		num_used += 1
	
	for key in hide.save_bonuses:
		save = hide.save_bonuses[key]
		while save > 5:
			write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 26, key, 2, 5, 255, 0, 100)
			num_used += 1
			save -= 5
		if save > 0:
			write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 26, key, 2, save, 255, 0, 100)
			num_used += 1
	
	# Decided I don't need this and can deal with the warnings
	#for i in range(num_used, num_props):
		#write_property(file, 'gff_' + name + '_PropertiesList_' + str(num_used+1) + '_0', 9, 0, 0, 1, 255, 0, 100)


def write_header(file, hides):
	file.write('; This file was generated by createhides.py\n')
	file.write('\n')
	file.write('[Settings]\n')
	file.write('FileExists=1\n')
	file.write('ConfirmMessage=N/A\n')
	file.write('LogLevel=4\n')
	file.write('InstallerMode=1\n')
	file.write('BackupFiles=0\n')
	file.write('PlaintextLog=1\n')
	file.write('LookupGameFolder=1\n')
	file.write('LookupGameNumber=2\n')
	file.write('SaveProcessedScripts=0\n')
	file.write('\n')
	file.write('[TLKList]\n')
	file.write('\n')
	file.write('[InstallList]\n')
	file.write('\n')
	file.write('[2DAList]\n')
	file.write('\n')
	file.write('[GFFList]\n')
	for i in range(0, len(hides)):
		file.write('File')
		file.write(str(i+1))
		file.write('=')
		file.write(hides[i].name)
		file.write('.uti\n')
	file.write('\n')
	file.write('[CompileList]\n')
	file.write('\n')
	file.write('[SSFList]\n')
	file.write('\n')



def attack_high(level):
	attack = 1
	levelups = [2, 3, 5, 6, 8, 9, 11, 12, 14, 15, 17, 18, 20, 21, 23, 24, 26, 27, 29, 30, 32, 33, 35, 36, 38, 39, 41, 42, 44, 45, 47, 48, 50]
	for up in levelups:
		if level >= up:
			attack += 1
	return attack

def attack_medium(level):
	attack = 0
	levelups = [2, 3, 5, 8, 9, 11, 14, 15, 17, 20, 21, 23, 26, 27, 29, 32, 33, 35, 38, 39, 41, 44, 45, 47, 50]
	for up in levelups:
		if level >= up:
			attack += 1
	return attack

def defense_high(level):
	defense = 1
	levelups = [3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49]
	for up in levelups:
		if level >= up:
			defense += 1
	return defense

def defense_medium(level):
	defense = 0
	levelups = [3, 5, 7, 11, 13, 15, 19, 21, 23, 27, 29, 33, 35, 37, 41, 43, 45, 49]
	for up in levelups:
		if level >= up:
			defense += 1
	return defense

def save_high(level):
	save = 0
	levelups = [3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49]
	for up in levelups:
		if level >= up:
			save += 1
	return save

def save_medium(level):
	save = 0
	levelups = [3, 7, 9, 13, 15, 19, 21, 25, 27, 31, 33, 37, 39, 43, 45, 49]
	for up in levelups:
		if level >= up:
			save += 1
	return save
	
def save_low(level):
	save = 0
	levelups = [5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49]
	for up in levelups:
		if level >= up:
			save += 1
	return save

blank_feats = None
blank_immunities = None
blank_skill_bonuses = {}
blank_immunity_bonuses = {}
blank_save_bonuses = {}

droid_immunities = [2, 3, 7]


max_level = 16

hides = []

# Expert Droid (Weak)
for i in range(1, max_level):
	hides.append(Hide('eh_exdrwk' + str(i), attack_medium(i), defense_medium(i), save_low(i), save_low(i), save_medium(i),
	0, 0, droid_immunities, blank_feats, blank_skill_bonuses, blank_immunity_bonuses, blank_save_bonuses))
# Expert Droid (Regular)
for i in range(1, max_level):
	hides.append(Hide('eh_exdrrg' + str(i), attack_medium(i), defense_medium(i), save_medium(i), save_medium(i), save_medium(i),
	0, 0, droid_immunities, blank_feats, blank_skill_bonuses, blank_immunity_bonuses, blank_save_bonuses))

# Combat Droid (Regular)
for i in range(1, max_level):
	hides.append(Hide('eh_cmdrrg' + str(i), attack_high(i), defense_medium(i), save_medium(i), save_medium(i), save_medium(i),
	0, 0, droid_immunities, blank_feats, blank_skill_bonuses, blank_immunity_bonuses, blank_save_bonuses))

# HK-50 (Boss)
for i in range(1, max_level):
	hides.append(Hide('eh_hk50bs' + str(i), attack_high(i), defense_high(i), save_high(i), save_high(i), save_high(i),
	0, 0, droid_immunities, blank_feats, blank_skill_bonuses, blank_immunity_bonuses, blank_save_bonuses))

# Turret (Regular)
for i in range(1, max_level):
	hides.append(Hide('eh_turrrg' + str(i), attack_high(i), defense_medium(i), save_high(i), save_low(i), save_low(i),
	0, 0, droid_immunities, blank_feats, blank_skill_bonuses, blank_immunity_bonuses, blank_save_bonuses))

# Sith Assassin (Regular)
for i in range(1, max_level):
	hides.append(Hide('eh_sassrg' + str(i), attack_medium(i), defense_medium(i), save_medium(i), save_high(i), save_medium(i),
	0, 0, blank_immunities, blank_feats, blank_skill_bonuses, blank_immunity_bonuses, blank_save_bonuses))


with open('tslpatchdata\\hides.ini', 'w') as file:
	write_header(file, hides)
	for hide in hides:
		write_hide(file, hide)
		shutil.copy('template.uti', 'tslpatchdata\\' + hide.name + '.uti')








































