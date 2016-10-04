
# This is where we generate the generators

import csv

class Object(object):
	pass


def check_code(code, file):
	return (code + '=RowLabel') in file

def check_function(func, file):
	chk1 = 'int ' + func
	chk2 = 'void ' + func
	return (chk1 in file) or (chk2 in file)

def check_item(tag, file):
	return ('=' + tag + '.uti') in file

def verify_code(code, file):
	if not check_code(code, file):
		print(code)
		raise AssertionError

def verify_function(func, file):
	if not check_function(func, file):
		print(func)
		raise AssertionError

def verify_item(code, file):
	if not check_item(code, file):
		print(code)
		raise AssertionError

def verify_file(path):
	with open(path) as f:
		return
	print(path)
	raise AssertionError

def add_line(file, data, pattern, marker):
	replacement = pattern.format(**data) + '\n' + marker
	return file.replace(marker, replacement)

def copy_template(path, new_path):
	with open(path, 'r') as fin:
		with open(new_path, 'w') as fout:
			fout.write(fin.read())

def set_tlk_header(file):
	num_strings = 1
	done = False
	while not done:
		findthis = 'String ' + str(num_strings) + ':'
		if not findthis in file:
			done = True
		else:
			num_strings += 1
	header = 'Header:\n  Language: English\n  Number of Strings: ' + str(num_strings) + '\n\n'
	return header + file
	
def read_file(path):
	file = 'error'
	with open(path) as f:
		file = f.read()
	if f == 'error'
		print(path)
		raise AssertionError
	return file

def write_file(data, path):
	with open(path, 'w') as f:
		f.write(data)

def load_descriptions(file):
	descs = {}
	file = read_file('Data\\descriptions.txt')
	desclines = file.split('\n')
	keybuffer = []
	descbuffer = ''
	for line in desclines:
		if 'KEY: ' in line:
			keybuffer.append(line.replace('KEY: ', ''))
		elif  'EOV' == line:
			for key in keybuffer:
				descs[key] = descbuffer
			keybuffer = []
			descbuffer = ''
		else:
			if not descbuffer == '':
				descbuffer += '\n'
			descbuffer += line
	return descs

# armorgen.py
armor_pattern = """armor_list.append(Armor('{0.tag}',
	{0.bludgeoningdt}, {0.piercingdt}, {0.slashingdt}, {0.unstoppabledt},
	{0.universaldt}, {0.colddt}, {0.lightsidedt}, {0.electricaldt},
	{0.firedt}, {0.darksidedt}, {0.sonicdt}, {0.iondt}, {0.energydt}))"""

# costgen.py
cost_pattern = """costs.append(Item('{0.tag}', {0.cost}))"""

# featgen.py
featcode_pattern = """featcodes.append('{0.featcode}')"""
featname_pattern = """featnames.append('{0.featname}_N')"""
itemcode_pattern = """itemcodes.append('{0.baseitemcode}')"""
baseitem_pattern = """items.append(Item('{0.tag}', '{0.baseitemcode}'))""" 
featreq_pattern = """itemreqs['{0.tag}'] = '{0.featreq}'"""
featbonus_pattern = """itemreqs['{0.tag}'] = ['{0.featbonus1}']"""
featbonus2_pattern = """itemreqs['{0.tag}'] = ['{0.featbonus1}', '{0.featbonus2}']"""

# hidegen.py
hideclass_pattern = """hideclasses.append(HideClass({0.name}, {0.attack}, {0.defense}
	{0.fort}, {0.reflex}, {0.will}, {0.regen}, {0.deflect}, {0.immunities}, {0.feats},
	{0.skills}, {0.resistances}, {0.savebonuses}"""

# modulegen.py
module_pattern = """modules.append('{0.name}')"""
enemy_pattern = """enemies.append(Enemy('{0.module}', '{0.tag}', '{0.script}',
	{0.str}, {0.con}, {0.dex}, {0.int}, {0.wis}, {0.chr}, None,
	{0.fort}, {0.reflex}, {0.will}))"""
placeable_pattern = """placeables.append(Placeable('{0.module}', '{0.tag}', '{0.script}',
	{0.unlock}, {0.bash}, None))"""

# poisongen.py
poisoncode_pattern = """poisoncodes.append('{0.poisoncode}')"""
poisonitem_pattern = """itemcodes['{0.tag}.uti'] = '{0.poisoncode}'"""

# powergen.py
removepower_pattern = """remove_spells.append(Spell({0.spellindex}, '{0.spellcode}', 
	{0.powercost}, None, {0.levelreq}, None, {0.spellcr}, None, None, None, '{0.script}',
	None, None, None, None, None, None))"""
eradicatepower_pattern = """eradicate_spells.append(Spell({0.spellindex}, '{0.spellcode}',
	None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,
	None,  None,  None, None))"""
modifypower_pattern = """modify_spells.append(Spell({0.spellindex}, '{0.spellcode}', {0.powercost}, None,
	{0.levelreq}, False, {0.spellcr}, None, None, '{0.spellicon}', '{0.script}',
	None, None, None, None, None, None))"""
newpower_pattern = """new_spells.append(Spell(None, '{0.spellcode}', {0.powercost}, {0.prereq}, {0.levelreq},
	False, {0.spellcr}, '{0.spellcategory}', '{0.spellrange}', '{0.icon}', '{0.script}',
	'{0.conjanim}', '{0.castanim}', '{0.casthand}', {0.priority}, {0.hostile}, '{0.spellexclusion}'))"""
newsaberpower_pattern = """ls = Spell(None, '{0.spellcode}', {0.powercost}, {0.prereq}, {0.levelreq},
	False, 3, '0x1101', 'M', '{0.icon}', '{0.script}', 'throw', 'throw', '****', {0.priority}, True, '0x00')
ls.conjtime = 560
ls.casttime = 1940
ls.catchtime = 500
ls.catchanim = 'CATCH'
ls.requireitem = '0x0040'
new_spells.append(ls)"""
newcrushpower_pattern = """crush = Spell(None, '{0.spellcode}', {0.powercost}, {0.prereq}, {0.levelreq},
	False, 9, '****', 'S', '{0.icon}', '{0.script}', 'hand', 'crush', 'v_con_dark', {0.priority}, True, '0x02')
crush.conjtime = 0
crush.casttime = 2000
new_spells.append(crush)"""

# powergen2.py
powername_pattern = """spellnames.append('{0.spellcode}')"""

# spellgen.py
modifyspell_pattern = """modify_spells.append(Script({0.spellindex}, '{0.script}'))"""
projectilespell_pattern = """new_spells.append(Spell(None, '{0.spellcode}', {0.spellcr}, '0x8000',
	'L', '{0.script}', '{0.launchsound}', True, '{0.projectile}', '{0.projpath}', '****', True, '0x00'))"""
beamspell_pattern = """new_spells.append(Spell(None, '{0.spellcode}', {0.spellcr}, '0x8000',
	'M', '{0.script}', '{0.launchsound}', False, None, None, None, True, '{0.spellexclusion}'))"""
selfspell_pattern = """new_spells.append(Spell(None, '{0.spellcode}', {0.spellcr}, '0x1808',
	'T', '{0.script}', '{0.launchsound}', False, None, None, None, False, '0x00'))"""
medpacspell_pattern = """new_spells.append(Spell(None, '{0.spellcode}', {0.spellcr}, '0x1408',
	'T', '{0.script}', '{0.launchsound}', False, None, None, None, False, '0x00'))"""
repairspell_pattern = """new_spells.append(Spell(None, '{0.spellcode}', {0.spellcr}, '0x1404',
	'T', '{0.script}', '{0.launchsound}', False, None, None, None, False, '0x00'))"""
spellitem_pattern = """items.append(Item('{0.tag}', '{0.spellcode}'))"""

# shieldgen.py
shieldcode_pattern = """shieldnames.append('{0.shieldcode}')"""
shieldabsorb_pattern = """replaces['{0.shieldcode}_ABSORB'] = '{0.shieldabsorb}'"""
shieldflags_pattern = """replaces['{0.shieldcode}_FLAGS'] = '{0.shieldflags}'"""

# upgradegen.py
upgrade_pattern = """upgrades.append(Upgrade('{0.tag}', {0.upgradetype}, {0.skill},
	{0.skillreq}, {0.levereq}, {0.craftgroup}))"""
crystal_pattern = """crystals.append(Upgrade('{0.tag}', 0, None, None, None, None))"""
craftitem_pattern = """items.append(Upgrade('{0.tag}', None, {0.skill}, {0.skillreq},
	{0.levelreq}, item_group))"""
craftjedi_pattern = """jediitems.append(Upgrade('{0.tag}', None, {0.skill}, {0.skillreq},
	{0.levelreq}, item_group))"""
medstation_pattern = """meds.append(Upgrade('{0.tag}', None, {0.skill},
	{0.skillreq}, {0.levelreq}, {0.craftgroup}))"""

# scriptgen.py
forcebuffscript_pattern = """scripts.append(Script.new_forcebuff('{0.script}', {0.castdc}, '{0.functioncall}',
	'{0.visualfunction}', '{0.alignment}'))"""
forceteambuffscript_pattern = """scripts.append(Script.new_forceteambuff('{0.script}', {0.castdc},
	'{0.functioncall}', '{0.visualfunction}', '{0.alignment}'))"""
forceattackscript_pattern = """scripts.append(Script.new_forceattack('{0.script}', '{0.name}', '{0.castdc}',
	'{0.functioncall}', '{0.visualfunction}', '{0.alignment}'))"""
forceaoeattackscript_pattern = """scripts.append(Script.new_forceaoeattack('{0.script}', '{0.name}',
	{0.radius}, '{0.spellshape}', {0.castdc}, '{0.functioncall}', '{0.locationfunction}',
	'{0.visualfunction}', '{0.alignment}'))"""
grenadescript_pattern = """scripts.append(Script.new_grenade('{0.script}', {0.radius}, '{0.functioncall}',
	'{0.visualfunction}'))"""
beamscript_pattern = """scripts.append(Script.new_beam('{0.script}', '{0.functioncall}', '{0.visualfunction}'))"""
wavescript_pattern = """scripts.append(Script.new_wave('{0.script}', '{0.functioncall}', '{0.visualfunction}'))"""
minescript_pattern = """scripts.append(Script.new_mine('{0.script}', {0.radius}, {0.minelevel},
	'{0.functioncall}', '{0.visualfunction}'))"""
ammoscript_pattern = """scripts.append(Script.new_ammo('{0.script}', '{0.stacksize}', '{0.ammotag}'))"""
buffscript_pattern = """scripts.append(Script.new_buff('{0.script}', '{0.functioncall}'))"""
shieldscript_pattern = """scripts.append(Script.new_shield('{0.script}', '{0.shieldconst}'))"""
spawnscript_pattern = """scripts.append(Script.new_spawn('{0.script}', '{0.functioncall}', '{0.include}',
	'{0.childscript}'))"""
treasurescript_pattern = """scripts.append(Script.new_treasure('{0.script}', '{0.functioncall}',
	'{0.include}'))"""

# fieldgen.py
field_pattern = """items.append(Item('{0.tag}', '{0.name}', \"\"\"{0.description}\"\"\",
	'{0.model}', None, None))"""
fieldbase_pattern = """items.append(Item('{0.tag}', '{0.name}', \"\"\"{0.description}\"\"\",
	'{0.model}', None, '{0.baseitem}'))"""
weaponfield_pattern = """weapons.append(Item('{0.tag}', '{0.name}', \"\"\"{0.description}\"\"\",
	'{0.model}', '{0.upgradelevel}', None))"""
weaponfieldbase_pattern = """weapons.append(Item('{0.tag}', '{0.name}', \"\"\"{0.description}\"\"\",
	'{0.model}', '{0.upgradelevel}', '{0.baseitem}'))"""
upgradefield_pattern = """items.append(Item('{0.tag}', '{0.name}', \"\"\"{0.description}\"\"\",
	'{0.model}', '{0.upgradelevel}', '101'))"""

# trapgen.py
trapcode_pattern = """trapcodes.append('{0.trapcode}')"""
trapitem_pattern = """itemcodes['{0.tag}.uti'] = '{0.trapcode}'"""

# box_inc_featconst.nss
featconst_pattern = """int {0.featconst} = #CODE_{0.featcode}#;"""
itemconst_pattern = """int {0.baseitemconst} = #CODE_{0.baseitemcode}#;"""

# box_inc_spellconst.nss
# box_inc_powerconst.nss
spellconst_pattern = """int {0.spellconst} = #CODE_{0.spellcode}#;"""

# box_inc_shieldconst.nss
shieldconst_pattern = """int {0.shieldconst} = #CODE_{0.shieldcode}#;"""

# box_inc_poisonconst.nss
poisonconst_pattern = """int {0.poisonconst} = #CODE_{0.poisoncode}#;"""

# box_inc_itemconst.nss
tagconst_pattern = """string {0.itemconst} = "{0.tag}";"""

# box_inc_itemconst.nss
hideconst_pattern = """string {0.hideconst} = "{0.name}";"""

# box_inc_trapconst.nss
trapconst_pattern = """int {0.trapconst} = #CODE_{0.trapcode}#;"""

# box_inc_turretconst.nss
turretconst_pattern = """string {0.turretconst} = "{0.turrettag}";"""

# baseitems.ini
baseitemheader_pattern = """AddRow0{baseitemconst}=baseitem_{baseitemconst}"""
baseitemini_pattern = """[baseitem_{baseitemconst}]
name=0
label={baseitemconst}}
equipableslots={equipableslots}
canrotateicon={canrotateicon}
modeltype={modeltype}
itemclass={itemclass}
genderspecific={genderspecific}
partenvmap={partenvmap}
defaultmodel={defaultmodel}
defaulticon={defaulticon}
container={container}
weaponwield={weaponwield}
weapontype={weapontype}
damageflags={damageflags}
weaponsize={weaponsize}
rangedweapon={rangedweapon}
maxattackrange={maxattackrange}
prefattackdist={prefattackdist}
minrange={minrange}
maxrange={maxrange}
bloodcolr={bloodcolr}
numdice={numdice}
dietoroll={dietoroll}
critthreat={critthreat}
crithitmult={crithitmult}
basecost={basecost}
stacking={stacking}
itemmultiplier={itemmultiplier}
description=****
invsoundtype={invsoundtype}
maxprops={maxprops}
minprops={minprops}
propcolumn={propcolumn}
reqfeat0={reqfeat0}
reqfeat1={reqfeat1}
reqfeat2={reqfeat2}
reqfeat3={reqfeat3}
reqfeat4={reqfeat4}
ac_enchant={ac_enchant}
baseac={baseac}
dexbonus={dexbonus}
accheck={accheck}
armorcheckpen={armorcheckpen}
baseitemstatref={baseitemstatref}
chargesstarting={chargesstarting}
rotateonground={rotateonground}
tenthlbs={tenthlbs}
weaponmattype={weaponmattype}
ammunitiontype={ammunitiontype}
powereditem={powereditem}
powerupsnd={powerupsnd}
powerdownsnd={powerdownsnd}
poweredsnd={poweredsnd}
itemtype={itemtype}
bodyvar={bodyvar}
specfeat={specfeat}
focfeat={focfeat}
droidorhuman={droidorhuman}
denysubrace={denysubrace}
armortype={armortype}
storepanelsort={storepanelsort}
ExclusiveColumn=label
{baseitemcode}=RowIndex"""

# poison.ini
poisonheader_pattern = """AddRow0{poisonconst}=poison_{poisonconst}"""
poisonini_pattern = """[poison_{poisonconst}]
label={poisonconst}
dc_save={dc_save}
duration={duration}
period={period}
dam_hp={dam_hp}
dam_fp={dam_fp}
dam_str={dam_str}
dam_dex={dam_dex}
dam_con={dam_con}
dam_int={dam_int}
dam_wis={dam_wis}
dam_chr={dam_chr}
name=****
abil_dur={abil_dur}
ExclusiveColumn=label
{poisoncode}=RowIndex
"""

# shields.ini
shieldheader_pattern = """AddRow0{shieldconst}=shield_{shieldconst}"""
shieldini_pattern = """[shield_{shieldconst}]
label={shieldconst}
visualeffectdef={visualeffectdef}
defaultradius={defaultradius}
damageflags={damageflags}
vulnerflags={vulnerflags}
amount={amount}
permanent={permanent}
appearance_01={appearance_01}
visualeffect_01={visualeffect_01}
radius_01={radius_01}
appearance_02={appearance_02}
visualeffect_02={visualeffect_02}
radius_02={radius_02}
appearance_03={appearance_03}
visualeffect_03={visualeffect_03}
radius_03={radius_03}
appearance_04={appearance_04}
visualeffect_04={visualeffect_04}
radius_04={radius_04}
ExclusiveColumn=label
{shieldcode}=RowIndex
"""

# dc.ini
dcheader_pattern = """File0{tag}={tag}.uti"""
dcini_pattern = """[{tag}.uti]
PropertiesList\0\CostValue=2DAMEMORY{dc}"""

# traps.ini
oldtrapheader_pattern = """ChangeRow0{trapconst}=trap_{trapconst}"""
newtrapheader_pattern = """AddRow0{trapconst}=trap_{trapconst}"""
oldtrapini_pattern = """[traps_mod_trap_flash_stun_minor_0]
RowIndex={trapindex}
trapscript={script}
setdc={setdc}
detectdcmod={detectdcmod}
disarmdcmod={disarmdcmod}
resref={tag}"""
newtrapini_pattern = """[trap_{trapconst}]
label={trapconst}
trapscript={script}
setdc={setdc}
detectdcmod={detectdcmod}
disarmdcmod={disarmdcmod}
trapname={trapname}
resref={tag}
iconresref={iconresref}
name={namecode}
model={trapmodel}
explosionsound={explosionsound}
ExclusiveColumn=label
{trapcode}=RowIndex"""

# append.txt
tlk_pattern = """String {0.number}:
  Flags:
    Sound: No
    SoundLength: 0.0
    Text Present: Yes
  Audio:                 
  Text: {0.text}
----------
"""



def add_tlk(file, text, number):
	data = {}
	data['text'] = text
	data['number'] = number
	add_line(file, data, tlk_pattern, '\nEOF')	



verify_file('Data\\Headers\\costheader.ini')

feats = read_file('Data\\feats.ini')
baseitems = read_file('Data\\baseitems.ini')
poisons = read_file('Data\\poison.ini')
dcs = read_file('Data\\dc.ini')
shields = read_file('Data\\shields.ini')
traps = read_file('Data\\traps.ini')

incgrenade = read_file('Code\\Includes\\box_inc_grenades.nss')
incenergy = read_file('Code\\Includes\\box_inc_energy.nss')
incpowers = read_file('Code\\Includes\\box_inc_powers.nss')
incstims = read_file('Code\\Includes\\box_inc_stims.nss')
incvisual = read_file('Code\\Includes\\box_inc_visual.nss')
inchealing = read_file('Code\\Includes\\box_inc_healing.nss')
incfuelweap = read_file('Code\\Includes\\box_inc_fuelweap.nss')
incmines = read_file('Code\\Includes\\box_inc_mines.nss')

incspawn = read_file('Code\\Includes\\box_inc_spawn_per.nss') + read_file('Code\\Includes\\box_inc_spawn_tel.nss')
inctreasure = read_file('Code\\Includes\\box_inc_treas_per.nss') + read_file('Code\\Includes\\box_inc_treas_tel.nss')

armorgen = read_file('Code\\armorgen.py')
featgen = read_file('Code\\featgen.py')
hidegen = read_file('Code\\hidegen.py')
costgen = read_file('Code\\costgen.py')
poisongen = read_file('Code\\poisongen.py')
modulegen = read_file('Code\\modulegen.py')
powergen = read_file('Code\\powergen.py')
powergen2 = read_file('Code\\powergen2.py')
spellgen = read_file('Code\\spellgen.py')
shieldgen = read_file('Code\\shieldgen.py')
upgradegen = read_file('Code\\upgradegen.py')
scriptgen = read_file('Code\\scriptgen.py')
fieldgen = read_file('Code\\fieldgen.py')
trapgen = read_file('Code\\trapgen.py')

itemconst = read_file('Code\\box_inc_itemconst.nss')
featconst = read_file('Code\\box_inc_featconst.nss')
spellconst = read_file('Code\\box_inc_spellconst.nss')
powerconst = read_file('Code\\box_inc_powerconst.nss')
shieldconst = read_file('Code\\box_inc_shieldconst.nss')
hideconst = read_file('Code\\box_inc_hideconst.nss')
trapconst = read_file('Code\\box_inc_trapconst.nss')
turretconst = read_file('Code\\box_inc_turretconst.nss')

tlk = "\nEOF"
descriptions = load_descriptions("Data\\descriptions.txt")



# Poisons
with open('Data\\poisons.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	number = 1
	for row in reader:
		add_line(poisons, row, poisonheader_pattern, ';HEADERS')
		add_line(poisons, row, poisonini_pattern, ';POISONS')

# Weapons
with open('Data\\weapons.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Data\\Static\\' + row['tag'] + '.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		if row['baseitem']:
			add_line(fieldgen, row, weaponfieldbase_pattern, '#WEAPONS')
		else:
			verify_code(baseitems, row['baseitemcode'])
			add_line(featgen, row, baseitem_pattern, '#ITEMS')
			add_line(fieldgen, row, weaponfield_pattern, '#WEAPONS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(fieldgen, row, weaponfield_pattern, '#WEAPONS')
		if row['poisoncode']:
			verify_code(poisons, row['poisoncode'])
			add_line(poisongen, row, poisonitem_pattern, '#ITEMS')
		if row['dc']:
			add_line(dcs, row, dcheader_pattern, ';HEADERS')
			add_line(dcs, row, dcini_pattern, ';DCS')
		
# Armor
with open('Data\\armor.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Data\\Static\\' + row['tag'] + '.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		verify_code(baseitems, row['baseitemcode'])
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, upgradefield_pattern, '#ITEMS')
		add_line(armorgen, row, armor_pattern, '#ARMOR')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')

# Upgrades
with open('Data\\upgrades.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Data\\Static\\' + row['tag'] + '.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(fieldgen, row, upgradefield_pattern, '#ITEMS')
		if row['type'] == 'crystal'
			add_line(upgradegen, row, crystal_pattern, '#CRYSTALS')
		else:
			add_line(upgradegen, row, upgrade_pattern, '#UPGRADES')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		if row['poisoncode']:
			verify_code(poisons, row['poisoncode'])
			add_line(poisongen, row, poisonitem_pattern, '#ITEMS')
		if row['dc']:
			add_line(dcs, row, dcheader_pattern, ';HEADERS')
			add_line(dcs, row, dcini_pattern, ';DCS')

# Equipment
with open('Data\\equipment.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Data\\Static\\' + row['tag'] + '.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		if row['baseitem']:
			add_line(fieldgen, row, fieldbase_pattern, '#ITEMS')
		else:
			verify_code(baseitems, row['baseitemcode'])
			add_line(featgen, row, baseitem_pattern, '#ITEMS')
			add_line(fieldgen, row, field_pattern, '#ITEMS')
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')

# Launchers
with open('Data\\launchers.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Data\\Templates\\launcher.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		verify_code(baseitems, row['baseitemcode'])
		verify_code(feats, row['featbonus1'])
		verify_code(feats, row['featbonus2'])
		if row['type'] == '2':
			add_line(costgen, row, featbonus2_pattern, '#BONUSES')
		else:
			add_line(costgen, row, featbonus_pattern, '#BONUSES')	
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')

# Shields
with open('Data\\shields.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Data\\Templates\\shield.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		verify_code(baseitems, row['baseitemcode'])
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		add_line(spellgen, row, selfspell_pattern, '#SPELLS')
		add_line(spellgen, row, spellitem_pattern, '#ITEMS')
		add_line(shieldgen, row, shield_pattern, '#ITEMS')
		add_line(shieldgen, row, shieldabsorb_pattern, '#REPLACES')
		add_line(shieldgen, row, shieldflags_pattern, '#REPLACES')
		add_line(scriptgen, row, shieldscript_pattern, '#SCRIPTS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(shieldconst, row, shieldconst_pattern, '//SHIELDS')
		add_line(spellconst, row, spellconst_pattern, '//SPELLS')
		add_line(shields, row, shieldheader_pattern, ';HEADERS')
		add_line(shields, row, shieldini_pattern, ';SHIELDS')

# Stimulants
with open('Data\\stimulants.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Data\\Templates\\stim.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		verify_code(baseitems, row['baseitemcode'])
		verify_function(incstims, row['functioncall'])
		verify_function(incvisual, row['visualfunction'])
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		add_line(spellgen, row, selfspell_pattern, '#SPELLS')
		add_line(spellgen, row, spellitem_pattern, '#ITEMS')
		add_line(scriptgen, row, buffscript_pattern, '#SCRIPTS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(spellconst, row, spellconst_pattern, '//SPELLS')



# Grenades
with open('Data\\grenades.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Data\\Templates\\grenade.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		add_line(fieldgen, row, fieldbase_pattern, '#ITEMS')
		verify_function(incgrenade, row['functioncall'])
		verify_function(incvisual, row['visualfunction'])
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(spellgen, row, projectilespell_pattern, '#SPELLS')
		add_line(spellgen, row, spellitem_pattern, '#ITEMS')
		add_line(scriptgen, row, grenadescript_pattern, '#SCRIPTS')
		add_line(upgradegen, row, medstation_pattern, '#MEDS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(spellconst, row, spellconst_pattern, '//SPELLS')

# Fuel
with open('Data\\fuel.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Data\\Templates\\fuel.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		if row['baseitem']:
			add_line(fieldgen, row, fieldbase_pattern, '#ITEMS')
		else:
			verify_code(baseitems, row['baseitemcode'])
			add_line(featgen, row, baseitem_pattern, '#ITEMS')
			add_line(fieldgen, row, field_pattern, '#ITEMS')
		verify_code(baseitems, row['featcode'])
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(featgen, row, featreq_pattern, '#REQS')
		verify_function(incgrenade + incfuelweap, row['functioncall'])
		verify_function(incvisual, row['visualfunction'])
		if row['type'] == 'grenade':
			verify_function(incgrenade, row['functioncall'])
			verify_function(incvisual, row['visualfunction'])
		elif row['type'] == 'blast':
			add_line(spellgen, row, projectilespell_pattern, '#SPELLS')
			add_line(scriptgen, row, beamscript_pattern, '#SCRIPTS')
		elif row['type'] == 'beam':
			add_line(spellgen, row, beamspell_pattern, '#SPELLS')
			add_line(scriptgen, row, beamscript_pattern, '#SCRIPTS')
		add_line(spellgen, row, spellitem_pattern, '#ITEMS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(spellconst, row, spellconst_pattern, '//SPELLS')


# Ammo Boxes
with open('Data\\ammoboxes.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Data\\Templates\\ammobox.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		verify_code(baseitems, row['baseitemcode'])
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		add_line(spellgen, row, selfspell_pattern, '#SPELLS')
		add_line(spellgen, row, spellitem_pattern, '#ITEMS')
		add_line(scriptgen, row, ammoscript_pattern, '#SCRIPTS')
		if row['type'] == 'workbench':
			add_line(upgradegen, row, craftitem_pattern, '#ITEMS')
		else:
			add_line(upgradegen, row, medstation_pattern, '#MEDS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(spellconst, row, spellconst_pattern, '//SPELLS')


# Energy
with open('Data\\energy.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		if row['heavy']:
			copy_template('Data\\Templates\\heavyenergy.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		else:
			copy_template('Data\\Templates\\energy.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		verify_code(baseitems, row['baseitemcode'])
		verify_function(incenergy, row['functioncall'])
		verify_function(incvisual, row['visualfunction'])
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		if row['type'] == 'wave':
			add_line(spellgen, row, beamspell_pattern, '#SPELLS')
			add_line(scriptgen, row, wavescript_pattern, '#SCRIPTS')
		elif row['type'] == 'blast':
			add_line(spellgen, row, projectilespell_pattern, '#SPELLS')
			add_line(scriptgen, row, beamscript_pattern, '#SCRIPTS')
		elif row['type'] == 'beam':
			add_line(spellgen, row, beamspell_pattern, '#SPELLS')
			add_line(scriptgen, row, beamscript_pattern, '#SCRIPTS')
		add_line(spellgen, row, spellitem_pattern, '#ITEMS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(spellconst, row, spellconst_pattern, '//SPELLS')

# Healing
with open('Data\\healing.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		verify_function(inchealing + incfuelweap, row['functioncall'])
		verify_function(incvisual, row['visualfunction'])
		if row['type'] == 'medpac':
			copy_template('Data\\Templates\\medpac.uti', 'Data\\Items\\' + row['tag'] + '.uti')
			add_line(spellgen, row, medpacspell_pattern, '#SPELLS')
			add_line(upgradegen, row, medstation_pattern, '#MEDS')
		else:
			copy_template('Data\\Templates\\repairkit.uti', 'Data\\Items\\' + row['tag'] + '.uti')
			# We'll use ammo boxes for these now
			# add_line(spellgen, row, repairspell_pattern, '#SPELLS')
			# add_line(upgradegen, row, craftitem_pattern, '#ITEMS')
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(fieldgen, row, fieldbase_pattern, '#ITEMS')
		add_line(spellgen, row, spellitem_pattern, '#ITEMS')
		add_line(scriptgen, row, buffscript_pattern, '#SCRIPTS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(spellconst, row, spellconst_pattern, '//SPELLS')


# Mines
with open('Data\\mines.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		copy_template('Data\\Templates\\trap.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		verify_function(incmines, row['functioncall'])
		if row['type'] == 'new':
			row['description'] = descriptions[row['tag']]
			add_line(fieldgen, row, fieldbase_pattern, '#ITEMS')
			add_line(tagconst, row, tagconst_pattern, '//ITEMS')
			add_line(trapgen, row, trapitem_pattern, '#ITEMS')
			add_line(traps, row, newtrapheader_pattern, ';HEADERS')
			add_line(traps, row, newtrapini_pattern, ';TRAPS')
			add_line(upgradegen, row, medstation_pattern, '#MEDS')
		else:
			add_line(traps, row, oldtrapheader_pattern, ';HEADERS')
			add_line(traps, row, oldtrapini_pattern, ';TRAPS')
		add_line(trapgen, row, trapcode_pattern, '#TRAPS')
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(scriptgen, row, minescript_pattern, '#SCRIPTS')
		add_line(trapconst, row, trapconst_pattern, '//TRAPS')

		
# Turrets
with open('Data\\turrets.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		copy_template('Data\\Templates\\trap.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		row['description'] = descriptions[row['tag']]
		add_line(fieldgen, row, fieldbase_pattern, '#ITEMS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(trapgen, row, trapitem_pattern, '#ITEMS')
		add_line(traps, row, newtrapheader_pattern, ';HEADERS')
		add_line(traps, row, newtrapini_pattern, ';TRAPS')
		add_line(trapgen, row, trapcode_pattern, '#TRAPS')
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(upgradegen, row, craftitem_pattern, '#ITEMS')
		add_line(trapconst, row, trapconst_pattern, '//TRAPS')
		add_line(turretconst, row, turretconst_pattern, '//TURRETS')


# Craftables
with open('Data\\craftables.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		if row['type'] == 'workbench':
			add_line(upgradegen, row, craftitem_pattern, '#ITEMS')
		else:
			add_line(upgradegen, row, medstation_pattern, '#MEDS')

		
# Enemy Weapons
with open('Data\\enemyweapons.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		if row['type'] == 'template'
			copy_template('Data\\Templates\\enemyweapon.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		else:
			copy_template('Data\\Static\\' + row['tag'] + '.uti', 'Data\\Items\\' + row['tag'] + '.uti')
		row['name'] = 'Enemy Weapon'
		row['description'] = 'Enemy Weapon'
		row['cost'] = 0
		add_line(baseitems, row, baseitemheader_pattern, ';HEADERS')
		add_line(baseitems, row, baseitemini_pattern, ';ITEMS')
		add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(itemconst, row, itemconst_pattern, '//ITEMS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		if row['poisoncode']:
			verify_code(poisons, row['poisoncode'])
			add_line(poisongen, row, poisonitem_pattern, '#ITEMS')
		if row['dc']:
			add_line(dcs, row, dcheader_pattern, ';HEADERS')
			add_line(dcs, row, dcini_pattern, ';DCS')


# Feats
with open('Data\\feats.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	number = 1
	for row in reader:
		row['description'] = descriptions[row['name']]
		if row['new']:
			verify_code(feats, row['featcode'])
		add_line(featgen, row, featcode_pattern, '#FEATCODES')
		add_line(featgen, row, featname_pattern, '#FEATNAMES')
		add_line(featconst, row, featconst_pattern, '//FEATS')
		add_tlk(tlk, row['name'], number)
		number += 1
		add_tlk(tlk, row['description'], number)
		number += 1
	set_tlk_header(tlk)
	with open('feats.txt', 'w') as tlkout:
		file.write(tlk)
	tlk = "\nEOF"
		
# Base Items
with open('Data\\baseitems.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		if row['new']:
			verify_code(feats, row['baseitemcode'])
			add_line(featgen, row, itemcode_pattern, '#ITEMCODES')
		add_line(itemconst, row, itemconst_pattern, '//ITEMS')
		add_line(baseitems, row, baseitemheader_pattern, ';HEADERS')
		add_line(baseitems, row, baseitemini_pattern, ';ITEMS')

# Powers
with open('Data\\powers.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	number = 1
	for row in reader:
		row['description'] = descriptions[row['name']]
		if row['type'] == 'remove':
			add_line(powergen, row, removepower_pattern, '#REMOVES')
		elif row['type'] == 'eradicate':
			add_line(powergen, row, eradicatepower_pattern, '#ERADICATES')
		elif row['type'] == 'persuade':
			add_line(powergen, row, modifypower_pattern, '#MODIFIES')
		elif row['type'] == 'modify':
			verify_function(incpowers, row['functioncall'])
			verify_function(incvisual, row['visualfunction'])
			add_line(powergen, row, modifypower_pattern, '#MODIFIES')
			add_line(powergen, row, modifypower_pattern, '#NAMES')
			add_line(scriptgen, row, po, '#SCRIPTS')
			add_line(powerconst, row, spellconst_pattern, '//POWERS')
			add_tlk(tlk, row['name'], number)
			number += 1
			add_tlk(tlk, row['description'], number)
			number += 1
			if row['spellindex'] == '270': # Breath control
				add_line(scriptgen, row, forcebuffscript_pattern, '#SCRIPTS')
			elif row['spellindex'] == '182': # Beast trick
				add_line(scriptgen, row, forceattackscript_pattern, '#SCRIPTS')
			elif row['spellindex'] == '180': # Sever
				add_line(scriptgen, row, forceattackscript_pattern, '#SCRIPTS')
			elif row['spellindex'] == '177': # Consume
				add_line(scriptgen, row, forceattackscript_pattern, '#SCRIPTS')
		else:
			verify_function(incpowers, row['functioncall'])
			verify_function(incvisual, row['visualfunction'])
			if row['type'] == 'throw':
				add_line(powergen, row, newsaberpower_pattern, '#POWERS')
				add_line(scriptgen, row, forceattackscript_pattern, '#SCRIPTS')
			elif row['type'] == 'crush':
				add_line(powergen, row, newcrushpower_pattern, '#POWERS')
				add_line(scriptgen, row, forceaoeattackscript_pattern, '#SCRIPTS')
			elif row['type'] == 'attack':
				add_line(powergen, row, newpower_pattern, '#POWERS')
				add_line(scriptgen, row, forceattackscript_pattern, '#SCRIPTS')
			elif row['type'] == 'aoe':
				add_line(powergen, row, newpower_pattern, '#POWERS')
				add_line(scriptgen, row, forceaoeattackscript_pattern, '#SCRIPTS')
			elif row['type'] == 'buff':
				add_line(powergen, row, newpower_pattern, '#POWERS')
				add_line(scriptgen, row, forcebuffscript_pattern, '#SCRIPTS')
			elif row['type'] == 'teambuff':
				add_line(powergen, row, newpower_pattern, '#POWERS')
				add_line(scriptgen, row, forceteambuffscript_pattern, '#SCRIPTS')
			add_line(powerconst, row, spellconst_pattern, '//POWERS')
			add_line(tlk, row, tlk_pattern, '\nEOF')
			add_tlk(tlk, row['name'], number)
			number += 1
			add_tlk(tlk, row['description'], number)
			number += 1
	set_tlk_header(tlk)
	with open('powers.txt', 'w') as tlkout:
		file.write(tlk)
	tlk = "\nEOF"


# Hide Classes
with open('Data\\enemyclasses.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		add_line(hidegen, row, hideclass_pattern, '#HIDECLASSES')
		add_line(hideconst, row, hideconst_pattern, '//HIDES')

# Spawns
with open('Data\\spawns.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		verify_function(incspawn, row['functioncall'])
		add_line(scriptgen, row, spawnscript_pattern, '#SCRIPTS')

# Treasures
with open('Data\\treasures.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		verify_function(inctreasure, row['functioncall'])
		add_line(scriptgen, row, treasurescript_pattern, '#SCRIPTS')


write_file(feats, 'Out\\feats.ini')
write_file(baseitems, 'Out\\baseitems.ini')
write_file(poisons, 'Out\\poison.ini')
write_file(dcs, 'Out\\dc.ini')
write_file(shields, 'Out\\shields.ini')
write_file(traps, 'Out\\shields.ini')

# We don't need to output the includes

write_file(armorgen, 'Out\\armorgen.py')
write_file(featgen, 'Out\\featgen.py')
write_file(hidegen, 'Out\\hidegen.py')
write_file(costgen, 'Out\\costgen.py')
write_file(poisongen, 'Out\\poisongen.py')
write_file(modulegen, 'Out\\modulegen.py')
write_file(powergen, 'Out\\powergen.py')
write_file(powergen2, 'Out\\powergen2.py')
write_file(spellgen, 'Out\\spellgen.py')
write_file(shieldgen, 'Out\\shieldgen.py')
write_file(upgradegen, 'Out\\upgradegen.py')
write_file(scriptgen, 'Out\\scriptgen.py')
write_file(fieldgen, 'Out\\fieldgen.py')
write_file(trapgen, 'Out\\trapgen.py')

write_file(itemconst, 'Out\\box_inc_itemconst.nss')
write_file(featconst, 'Out\\box_inc_featconst.nss')
write_file(spellconst, 'Out\\box_inc_spellconst.nss')
write_file(powerconst, 'Out\\box_inc_powerconst.nss')
write_file(shieldconst, 'Out\\box_inc_shieldconst.nss')
write_file(hideconst, 'Out\\box_inc_hideconst.nss')
write_file(trapconst, 'Out\\box_inc_trapconst.nss')
write_file(turretconst, 'Out\\box_inc_turretconst.nss')















