
# This is where we generate the generators

import shutil
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
	shutil.copyfile(path, new_path)

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

def add_tlk(file, text, number):
	data = {}
	data['text'] = text
	data['number'] = number
	add_line(file, data, tlk_pattern, '\nEOF')	


def read_file(path):
	file = 'error'
	with open(path) as f:
		file = f.read()
	if f == 'error':
		print(path)
		raise AssertionError
	return file

def write_file(data, path):
	with open(path, 'w') as f:
		f.write(data)

def load_descriptions(path):
	descs = {}
	file = read_file(path)
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

def load_recommendations(path):
	recs = {}
	recs['nil'] = {}
	file = read_file(path)
	reclines = file.split('\n')
	key = 'nil'
	count = 0
	for line in reclines:
		if 'KEY: ' in line:
			count = 0
			key = line.replace('KEY: ', '')
			recs[key] = {}
		elif  'EOV' is line:
			key = 'nil'
			count = 0
		elif '' is line:
			pass
		else:
			count = count + 1
			recs[key][line] = str(count)
			
	return recs

# armorgen.py
armor_pattern = """armor_list.append(Armor('{tag}',
	{bludgeoningdt}, {piercingdt}, {slashingdt}, {unstoppabledt},
	{universaldt}, {colddt}, {lightsidedt}, {electricaldt},
	{firedt}, {darksidedt}, {sonicdt}, {iondt}, {energydt}))"""

# costgen.py
cost_pattern = """costs.append(Item('{tag}', {cost}))"""

# featgen.py
featcode_pattern = """featcodes.append('{featcode}')"""
featname_pattern = """featnames.append('{featcode}_N')"""
itemcode_pattern = """itemcodes.append('{baseitemcode}')"""
baseitem_pattern = """items.append(Item('{tag}', '{baseitemcode}'))""" 
featreq_pattern = """itemreqs['{tag}'] = '{featreq}'"""
featbonus_pattern = """itemreqs['{tag}'] = ['{featbonus1}']"""
featbonus2_pattern = """itemreqs['{tag}'] = ['{featbonus1}', '{featbonus2}']"""

# hidegen.py
hideclass_pattern = """hideclasses.append(HideClass({name}, {attack}, {defense}
	{fort}, {reflex}, {will}, {regen}, {deflect}, {immunities}, {feats},
	{skills}, {resistances}, {savebonuses}"""

# modulegen.py
module_pattern = """modules.append('{name}')"""
enemy_pattern = """enemies.append(Enemy('{module}', '{tag}', '{script}',
	{str}, {con}, {dex}, {int}, {wis}, {chr}, None,
	{fort}, {reflex}, {will}))"""
placeable_pattern = """placeables.append(Placeable('{module}', '{tag}', '{script}',
	{unlock}, {bash}, None))"""
merchant_pattern = """merchants.append(Merchant('{module}', '{tag}', '{script}',
	'{buysell}', '{markup}', '{markdown}'))"""

# poisongen.py
poisoncode_pattern = """poisoncodes.append('{poisoncode}')"""
poisonitem_pattern = """itemcodes['{tag}.uti'] = '{poisoncode}'"""

# powergen.py
removepower_pattern = """remove_spells.append(Spell({spellindex}, '{spellcode}', 
	{powercost}, None, {levelreq}, None, {spellcr}, None, None, None, '{script}',
	None, None, None, None, None, None))"""
eradicatepower_pattern = """eradicate_spells.append(Spell({spellindex}, '{spellcode}',
	None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,
	None,  None,  None, None))"""
modifypower_pattern = """modify_spells.append(Spell({spellindex}, '{spellcode}', {powercost}, None,
	{levelreq}, False, {spellcr}, None, None, '{icon}', '{script}',
	None, None, None, None, None, None))"""
newpower_pattern = """new_spells.append(Spell(None, '{spellcode}', {powercost}, {prereq}, {levelreq},
	False, {spellcr}, '{spellcategory}', '{spellrange}', '{icon}', '{script}',
	'{conjanim}', '{castanim}', '{casthand}', {priority}, {hostile}, '{spellexclusion}'))"""
newsaberpower_pattern = """ls = Spell(None, '{spellcode}', {powercost}, {prereq}, {levelreq},
	False, 3, '0x1101', 'M', '{icon}', '{script}', 'throw', 'throw', '****', {priority}, True, '0x00')
ls.conjtime = 560
ls.casttime = 1940
ls.catchtime = 500
ls.catchanim = 'CATCH'
ls.requireitem = '0x0040'
new_spells.append(ls)"""
newcrushpower_pattern = """crush = Spell(None, '{spellcode}', {powercost}, {prereq}, {levelreq},
	False, 9, '****', 'S', '{icon}', '{script}', 'hand', 'crush', 'v_con_dark', {priority}, True, '0x02')
crush.conjtime = 0
crush.casttime = 2000
new_spells.append(crush)"""

# powergen2.py
powername_pattern = """spellnames.append('{spellcode}')"""

# spellgen.py
modifyspell_pattern = """modify_spells.append(Script({spellindex}, '{script}'))"""
projectilespell_pattern = """new_spells.append(Spell(None, '{spellcode}', {spellcr}, '0x8000',
	'L', '{script}', '{launchsound}', True, '{projectile}', '{projpath}', '****', True, '0x00'))"""
beamspell_pattern = """new_spells.append(Spell(None, '{spellcode}', {spellcr}, '0x8000',
	'M', '{script}', '{launchsound}', False, None, None, None, True, '{spellexclusion}'))"""
selfspell_pattern = """new_spells.append(Spell(None, '{spellcode}', {spellcr}, '0x1808',
	'T', '{script}', '{launchsound}', False, None, None, None, False, '0x00'))"""
medpacspell_pattern = """new_spells.append(Spell(None, '{spellcode}', {spellcr}, '0x1408',
	'T', '{script}', '{launchsound}', False, None, None, None, False, '0x00'))"""
repairspell_pattern = """new_spells.append(Spell(None, '{spellcode}', {spellcr}, '0x1404',
	'T', '{script}', '{launchsound}', False, None, None, None, False, '0x00'))"""
spellitem_pattern = """items.append(Item('{tag}', '{spellcode}'))"""

# shieldgen.py
shieldcode_pattern = """shieldnames.append('{shieldcode}')"""

# upgradegen.py
upgrade_pattern = """upgrades.append(Upgrade('{tag}', {upgradetype}, {skill},
	{skillreq}, {levelreq}, {craftgroup}))"""
crystal_pattern = """crystals.append(Upgrade('{tag}', 0, None, None, None, None))"""
craftitem_pattern = """items.append(Upgrade('{tag}', None, {skill}, {skillreq},
	{levelreq}, item_group))"""
craftjedi_pattern = """jediitems.append(Upgrade('{tag}', None, {skill}, {skillreq},
	{levelreq}, item_group))"""
medstation_pattern = """meds.append(Upgrade('{tag}', None, {skill},
	{skillreq}, {levelreq}, {craftgroup}))"""

# scriptgen.py
forcebuffscript_pattern = """scripts.append(Script.new_forcebuff('{script}', {castdc}, '{functioncall}',
	'{visualfunction}', '{alignment}'))"""
forceteambuffscript_pattern = """scripts.append(Script.new_forceteambuff('{script}', {castdc},
	'{functioncall}', '{visualfunction}', '{alignment}'))"""
forceattackscript_pattern = """scripts.append(Script.new_forceattack('{script}', '{name}', '{castdc}',
	'{functioncall}', '{visualfunction}', '{alignment}'))"""
forceaoeattackscript_pattern = """scripts.append(Script.new_forceaoeattack('{script}', '{name}',
	{radius}, '{spellshape}', {castdc}, '{functioncall}', '{locationfunction}',
	'{visualfunction}', '{alignment}'))"""
grenadescript_pattern = """scripts.append(Script.new_grenade('{script}', {radius}, '{functioncall}',
	'{visualfunction}'))"""
beamscript_pattern = """scripts.append(Script.new_beam('{script}', '{functioncall}', '{visualfunction}'))"""
multibeamscript_pattern = """scripts.append(Script.new_multibeam('{script}', '{functioncall}',
	'{locationfunction}', '{visualfunction}'))"""
wavescript_pattern = """scripts.append(Script.new_wave('{script}', '{functioncall}', '{visualfunction}'))"""
minescript_pattern = """scripts.append(Script.new_mine('{script}', {radius}, {minelevel},
	'{functioncall}', '{visualfunction}'))"""
ammoscript_pattern = """scripts.append(Script.new_ammo('{script}', '{stacksize}', '{ammotag}'))"""
buffscript_pattern = """scripts.append(Script.new_buff('{script}', '{functioncall}'))"""
shieldscript_pattern = """scripts.append(Script.new_shield('{script}', '{shieldconst}'))"""
spawnscript_pattern = """scripts.append(Script.new_spawn('{script}', '{functioncall}', '{include}',
	'{childscript}'))"""
treasurescript_pattern = """scripts.append(Script.new_treasure('{script}', '{functioncall}',
	'{include}'))"""
merchantscript_pattern = """scripts.append(Script.new_merchant('{script}', '{functioncall}'))"""

# fieldgen.py
field_pattern = """items.append(Item('{tag}', '{name}', \"\"\"{description}\"\"\",
	'{model}', None, None))"""
fieldbase_pattern = """items.append(Item('{tag}', '{name}', \"\"\"{description}\"\"\",
	'{model}', None, '{baseitem}'))"""
weaponfield_pattern = """weapons.append(Item('{tag}', '{name}', \"\"\"{description}\"\"\",
	'{model}', '{upgradelevel}', None))"""
weaponfieldbase_pattern = """weapons.append(Item('{tag}', '{name}', \"\"\"{description}\"\"\",
	'{model}', '{upgradelevel}', '{baseitem}'))"""
upgradefield_pattern = """items.append(Item('{tag}', '{name}', \"\"\"{description}\"\"\",
	'{model}', '{upgradelevel}', '101'))"""

# trapgen.py
trapcode_pattern = """trapcodes.append('{trapcode}')"""
trapitem_pattern = """itemcodes['{tag}.uti'] = '{trapcode}'"""


# box_inc_ai.nss
rangedai_pattern = """baseItem == {baseitemconst} ||"""

# box_inc_merchants.nss
merchantitem_pattern = """CreateItemOnObject({tag}, oUser, {quantity});"""

# box_inc_featconst.nss
featconst_pattern = """int {featconst} = #CODE_{featcode}#;"""
itemconst_pattern = """int {baseitemconst} = #CODE_{baseitemcode}#;"""

# box_inc_spellconst.nss
# box_inc_powerconst.nss
spellconst_pattern = """int {spellconst} = #CODE_{spellcode}#;"""

# box_inc_shieldconst.nss
shieldconst_pattern = """int {shieldconst} = #CODE_{shieldcode}#;"""

# box_inc_poisonconst.nss
poisonconst_pattern = """int {poisonconst} = #CODE_{poisoncode}#;"""

# box_inc_itemconst.nss
tagconst_pattern = """string {tagconst} = "{tag}";"""

# box_inc_itemconst.nss
hideconst_pattern = """string {hideconst} = "{name}";"""

# box_inc_trapconst.nss
trapconst_pattern = """int {trapconst} = #CODE_{trapcode}#;"""

# box_inc_turretconst.nss
turretconst_pattern = """string {turretconst} = "{turrettag}";"""
turrettrapconst_pattern = """string {trapconst} = "{tag}";"""

# box_inc_treasure.nss
treasurefunction_pattern = """void {functioncall}(object oContainer) \{
	Box_RemoveAllItems(oContainer);
	//{functioncall}
\}

"""
treasureitem_pattern = """CreateItemOnObject({itemconst}, oContainer);"""

# box_inc_turrets.nss
checktrap_pattern = """if (trap == {trapconst})
	return TRUE;
"""
checkturret_pattern = """if (tag == {turretconst})
	return TRUE;
"""
gettrap_pattern = """if (tag == {turretconst})
	return {trapconst};
"""
getturret_pattern = """if (trap == {trapconst})
	return {turretconst};
"""


# baseitems.ini
baseitemheader_pattern = """AddRow0{baseitemconst}=baseitem_{baseitemconst}"""
baseitemini_pattern = """[baseitem_{baseitemconst}]
name=0
label={baseitemconst}
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

# feats.ini
changefeatheader_pattern = """ChangeRow0{featconst}=feat_{featconst}"""
changefeatini_pattern = """[feat_{featconst}]
RowIndex={rowindex}
label={featconst}
name={name}
description={description}
icon={icon}
mincharlevel={mincharlevel}
minattackbonus={minattackbonus}
minstr={minstr}
mindex={mindex}
minint={minint}
minwis={minwis}
minspelllvl={minspelllvl}
prereqfeat1={prereqfeat1}
prereqfeat1={prereqfeat2}
gainmultiple={gainmultiple}
effectsstack={effectsstack}
allclassescanuse={allclassescanuse}
constant={featconst}
allclassescanuse={allclassescanuse}
category={category}
maxcr={maxcr}
spellid={spellid}
successor={successor}
crvalue={crvalue}
usesperday={usesperday}
masterfeat={masterfeat}
targetself={targetself}
orreqfeat0={orreqfeat0}
orreqfeat1={orreqfeat1}
orreqfeat2={orreqfeat2}
orreqfeat3={orreqfeat3}
orreqfeat4={orreqfeat4}
reqskill={reqskill}
constant={featconst}
toolscategories={toolscategories}
hostilefeat={hostilefeat}
jcn_pc_granted={jcn_pc_granted}
jsn_pc_granted={jsn_pc_granted}
jgd_pc_granted={jgd_pc_granted}
scd_list={scd_list}
scd_granted={scd_granted}
scd_recom={scd_recom}
sol_list={sol_list}
sol_granted={sol_granted}
sol_recom={sol_recom}
sct_list={sct_list}
sct_granted={sct_granted}
sct_recom={sct_recom}
jcn_list={jcn_list}
jcn_granted={jcn_granted}
jcn_recom={jcn_recom}
jsn_list={jsn_list}
jsn_granted={jsn_granted}
jsn_recom={jsn_recom}
jgd_list={jgd_list}
jgd_granted={jgd_granted}
jgd_recom={jgd_recom}
sas_list={sas_list}
sas_granted={sas_granted}
sas_recom={sas_recom}
sld_list={sld_list}
sld_granted={sld_granted}
sld_recom={sld_recom}
sma_list={sma_list}
sma_granted={sma_granted}
sma_recom={sma_recom}
jwm_list={jwm_list}
jwm_granted={jwm_granted}
jwm_recom={jwm_recom}
jma_list={jma_list}
jma_granted={jma_granted}
jma_recom={jma_recom}
jwa_list={jwa_list}
jwa_granted={jwa_granted}
jwa_recom={jwa_recom}
tec_list={tec_list}
tec_granted={tec_granted}
tec_recom={tec_recom}
drx_list={drx_list}
drx_granted={drx_granted}
drx_recom={drx_recom}
drc_list={drc_list}
drc_granted={drc_granted}
drc_recom={drc_recom}
handmaiden={handmaiden}
baodur={baodur}
hanharr={hanharr}
hk47={hk47}
g0t0={g0t0}
atton={atton}
kreia={kreia}
exclusion={exclusion}
pips={pips}
ExclusiveColumn=label
{featcode}=RowIndex
"""
addfeatheader_pattern = """AddRow0{featconst}=feat_{featconst}"""
addfeatini_pattern = """[feat_{featconst}]
RowIndex={rowindex}
label={featconst}
name={name}
description={description}
icon={icon}
mincharlevel={mincharlevel}
minattackbonus={minattackbonus}
minstr={minstr}
mindex={mindex}
minint={minint}
minwis={minwis}
minspelllvl={minspelllvl}
prereqfeat1={prereqfeat1}
prereqfeat1={prereqfeat2}
gainmultiple={gainmultiple}
effectsstack={effectsstack}
allclassescanuse={allclassescanuse}
constant={featconst}
allclassescanuse={allclassescanuse}
category={category}
maxcr={maxcr}
spellid={spellid}
successor={successor}
crvalue={crvalue}
usesperday={usesperday}
masterfeat={masterfeat}
targetself={targetself}
orreqfeat0={orreqfeat0}
orreqfeat1={orreqfeat1}
orreqfeat2={orreqfeat2}
orreqfeat3={orreqfeat3}
orreqfeat4={orreqfeat4}
reqskill={reqskill}
constant={featconst}
toolscategories={toolscategories}
hostilefeat={hostilefeat}
jcn_pc_granted={jcn_pc_granted}
jsn_pc_granted={jsn_pc_granted}
jgd_pc_granted={jgd_pc_granted}
scd_list={scd_list}
scd_granted={scd_granted}
scd_recom={scd_recom}
sol_list={sol_list}
sol_granted={sol_granted}
sol_recom={sol_recom}
sct_list={sct_list}
sct_granted={sct_granted}
sct_recom={sct_recom}
jcn_list={jcn_list}
jcn_granted={jcn_granted}
jcn_recom={jcn_recom}
jsn_list={jsn_list}
jsn_granted={jsn_granted}
jsn_recom={jsn_recom}
jgd_list={jgd_list}
jgd_granted={jgd_granted}
jgd_recom={jgd_recom}
sas_list={sas_list}
sas_granted={sas_granted}
sas_recom={sas_recom}
sld_list={sld_list}
sld_granted={sld_granted}
sld_recom={sld_recom}
sma_list={sma_list}
sma_granted={sma_granted}
sma_recom={sma_recom}
jwm_list={jwm_list}
jwm_granted={jwm_granted}
jwm_recom={jwm_recom}
jma_list={jma_list}
jma_granted={jma_granted}
jma_recom={jma_recom}
jwa_list={jwa_list}
jwa_granted={jwa_granted}
jwa_recom={jwa_recom}
tec_list={tec_list}
tec_granted={tec_granted}
tec_recom={tec_recom}
drx_list={drx_list}
drx_granted={drx_granted}
drx_recom={drx_recom}
drc_list={drc_list}
drc_granted={drc_granted}
drc_recom={drc_recom}
handmaiden={handmaiden}
baodur={baodur}
hanharr={hanharr}
hk47={hk47}
g0t0={g0t0}
atton={atton}
kreia={kreia}
exclusion={exclusion}
pips={pips}
ExclusiveColumn=label
{featcode}=RowIndex
"""

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
tlk_pattern = """String {number}:
  Flags:
    Sound: No
    SoundLength: 0.0
    Text Present: Yes
  Audio:                 
  Text: {text}
----------
"""






feats = read_file('Input\\feats.ini')
baseitems = read_file('Input\\baseitems.ini')
poisons = read_file('Input\\poison.ini')
dcs = read_file('Input\\dc.ini')
shields = read_file('Input\\shields.ini')
traps = read_file('Input\\traps.ini')

incai = read_file('Input\\box_inc_ai.nss')
incgrenade = read_file('Input\\box_inc_grenades.nss')
incenergy = read_file('Input\\box_inc_energy.nss')
incpowers = read_file('Input\\box_inc_powers.nss')
incstims = read_file('Input\\box_inc_stims.nss')
incvisual = read_file('Input\\box_inc_visual.nss')
inchealing = read_file('Input\\box_inc_healing.nss')
incfuelweap = read_file('Input\\box_inc_fuelweap.nss')
incmines = read_file('Input\\box_inc_mines.nss')
incmerchant = read_file('Input\\box_inc_merchants.nss')
incturret = read_file('Input\\box_inc_turrets.nss')
incturretspells = read_file('Input\\box_inc_turretspells.nss')
incenemyspells = read_file('Input\\box_inc_enemyspells.nss')
incenemyspells2 = read_file('Input\\box_inc_enemyspells2.nss')

incspawn = read_file('Input\\box_inc_spawn_per.nss') + read_file('Input\\box_inc_spawn_tel.nss')
inctreasure = read_file('Input\\box_inc_treasure.nss')

armorgen = read_file('Input\\armorgen.py')
featgen = read_file('Input\\featgen.py')
hidegen = read_file('Input\\hidegen.py')
costgen = read_file('Input\\costgen.py')
poisongen = read_file('Input\\poisongen.py')
modulegen = read_file('Input\\modulegen.py')
powergen = read_file('Input\\powergen.py')
powergen2 = read_file('Input\\powergen2.py')
spellgen = read_file('Input\\spellgen.py')
shieldgen = read_file('Input\\shieldgen.py')
upgradegen = read_file('Input\\upgradegen.py')
scriptgen = read_file('Input\\scriptgen.py')
fieldgen = read_file('Input\\fieldgen.py')
trapgen = read_file('Input\\trapgen.py')

itemconst = read_file('Input\\box_inc_itemconst.nss')
featconst = read_file('Input\\box_inc_featconst.nss')
spellconst = read_file('Input\\box_inc_spellconst.nss')
powerconst = read_file('Input\\box_inc_powerconst.nss')
shieldconst = read_file('Input\\box_inc_shieldconst.nss')
hideconst = read_file('Input\\box_inc_hideconst.nss')
trapconst = read_file('Input\\box_inc_trapconst.nss')
turretconst = read_file('Input\\box_inc_turretconst.nss')
tagconst = read_file('Input\\box_inc_tagconst.nss')

tlk = "\nEOF"
descriptions = load_descriptions("Input\\descriptions.txt")
recommendations = load_recommendations("Input\\recommendations.txt")


# Poisons
with open('Input\\poisons.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		add_line(poisons, row, poisonheader_pattern, ';HEADERS')
		add_line(poisons, row, poisonini_pattern, ';POISONS')


# Feats
with open('Input\\feats.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	number = 1
	for row in reader:
		if row['featcode']:
			for key in recommendations:
				if row['featcode'] in recommendations[key]:
					row[key] = recommendations[key][row['featcode']]
				else:
					row[key] = '****'
		if row['type'] == 'skip':
			pass
		elif row['type'] == 'nil':
			add_line(feats, row, changefeatheader_pattern, ';CHANGEHEADERS')
			add_line(feats, row, changefeatini_pattern, ';CHANGES')
		else:
			if row['featcode'] in descriptions:
				row['description'] = descriptions[row['featcode']]
			add_tlk(tlk, row['name'], number)
			number += 1
			add_tlk(tlk, row['description'], number)
			number += 1
			add_line(featgen, row, featcode_pattern, '#FEATCODES')
			add_line(featgen, row, featname_pattern, '#FEATNAMES')
			add_line(featconst, row, featconst_pattern, '//FEATS')
			row['name'] = row['featcode'] + '_N'
			row['name'] = row['featcode'] + '_D'
		if row['type'] == 'change':
			add_line(feats, row, changefeatheader_pattern, ';CHANGEHEADERS')
			add_line(feats, row, changefeatini_pattern, ';CHANGES')
		elif row['type'] == 'add':
			add_line(feats, row, addfeatheader_pattern, ';ADDHEADERS')
			add_line(feats, row, addfeatini_pattern, ';ADDS')
	set_tlk_header(tlk)
	with open('Output\\feats.txt', 'w') as tlkout:
		tlkout.write(tlk)
	tlk = "\nEOF"

# Base Items
with open('Input\\baseitems.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		add_line(featgen, row, itemcode_pattern, '#ITEMCODES')
		add_line(itemconst, row, itemconst_pattern, '//ITEMS')
		add_line(baseitems, row, baseitemheader_pattern, ';HEADERS')
		add_line(baseitems, row, baseitemini_pattern, ';ITEMS')
		if row['weapontype'] == '4':
			add_line(incai, row, rangedai_pattern, '//RANGED')


# Weapons
with open('Input\\weapons.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Input\\' + row['tag'] + '.uti', 'Output\\' + row['tag'] + '.uti')
		add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, weaponfield_pattern, '#WEAPONS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(fieldgen, row, weaponfield_pattern, '#WEAPONS')
		if row['poisoncode']:
			add_line(poisongen, row, poisonitem_pattern, '#ITEMS')
		if row['dc']:
			add_line(dcs, row, dcheader_pattern, ';HEADERS')
			add_line(dcs, row, dcini_pattern, ';DCS')
		
# Armor
with open('Input\\armor.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Input\\' + row['tag'] + '.uti', 'Output\\' + row['tag'] + '.uti')
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, upgradefield_pattern, '#ITEMS')
		add_line(armorgen, row, armor_pattern, '#ARMOR')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')

# Upgrades
with open('Input\\upgrades.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		row['upgradetype'] = row['type'] + '_group'
		copy_template('Input\\' + row['tag'] + '.uti', 'Output\\' + row['tag'] + '.uti')
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(fieldgen, row, upgradefield_pattern, '#ITEMS')
		if row['type'] == 'crystal':
			add_line(upgradegen, row, crystal_pattern, '#CRYSTALS')
		else:
			add_line(upgradegen, row, upgrade_pattern, '#UPGRADES')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		if row['poisoncode']:
			add_line(poisongen, row, poisonitem_pattern, '#ITEMS')
		if row['dc']:
			add_line(dcs, row, dcheader_pattern, ';HEADERS')
			add_line(dcs, row, dcini_pattern, ';DCS')

# Equipment
with open('Input\\equipment.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Input\\' + row['tag'] + '.uti', 'Output\\' + row['tag'] + '.uti')
		if 'baseitemcode' in row:
			add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')

# Launchers
with open('Input\\launchers.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Input\\launcher.uti', 'Output\\' + row['tag'] + '.uti')
		if row['type'] == '2':
			add_line(costgen, row, featbonus2_pattern, '#BONUSES')
		else:
			add_line(costgen, row, featbonus_pattern, '#BONUSES')	
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')

# Shields
with open('Input\\shields.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Input\\shield.uti', 'Output\\' + row['tag'] + '.uti')
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		add_line(spellgen, row, selfspell_pattern, '#SPELLS')
		add_line(spellgen, row, spellitem_pattern, '#ITEMS')
		add_line(shieldgen, row, shieldcode_pattern, '#ITEMS')
		add_line(scriptgen, row, shieldscript_pattern, '#SCRIPTS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(shieldconst, row, shieldconst_pattern, '//SHIELDS')
		add_line(spellconst, row, spellconst_pattern, '//SPELLS')
		add_line(shields, row, shieldheader_pattern, ';HEADERS')
		add_line(shields, row, shieldini_pattern, ';SHIELDS')

# Stimulants
with open('Input\\stimulants.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Input\\stim.uti', 'Output\\' + row['tag'] + '.uti')
		verify_function(row['functioncall'], incstims)
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		add_line(spellgen, row, selfspell_pattern, '#SPELLS')
		add_line(spellgen, row, spellitem_pattern, '#ITEMS')
		add_line(scriptgen, row, buffscript_pattern, '#SCRIPTS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(spellconst, row, spellconst_pattern, '//SPELLS')



# Grenades
with open('Input\\grenades.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Input\\grenade.uti', 'Output\\' + row['tag'] + '.uti')
		if 'baseitemcode' in row:
			add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		verify_function(row['functioncall'], incgrenade)
		verify_function(row['visualfunction'], incvisual)
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(spellgen, row, projectilespell_pattern, '#SPELLS')
		add_line(spellgen, row, spellitem_pattern, '#ITEMS')
		add_line(scriptgen, row, grenadescript_pattern, '#SCRIPTS')
		add_line(upgradegen, row, medstation_pattern, '#MEDS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(spellconst, row, spellconst_pattern, '//SPELLS')

# Fuel
with open('Input\\fuel.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		row['featreq'] = row['featcode']
		copy_template('Input\\fuel.uti', 'Output\\' + row['tag'] + '.uti')
		if 'baseitemcode' in row:
			add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(featgen, row, featreq_pattern, '#REQS')
		verify_function(row['functioncall'], incgrenade + incfuelweap)
		verify_function(row['visualfunction'], incvisual)
		if row['type'] == 'grenade':
			add_line(spellgen, row, projectilespell_pattern, '#SPELLS')
			add_line(scriptgen, row, grenadescript_pattern, '#SCRIPTS')
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
with open('Input\\ammoboxes.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		copy_template('Input\\ammobox.uti', 'Output\\' + row['tag'] + '.uti')
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
with open('Input\\energy.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		if row['heavy']:
			copy_template('Input\\heavyenergy.uti', 'Output\\' + row['tag'] + '.uti')
		else:
			copy_template('Input\\energy.uti', 'Output\\' + row['tag'] + '.uti')
		verify_function(row['functioncall'], incenergy)
		verify_function(row['visualfunction'], incvisual)
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
		elif row['type'] == 'multibeam':
			add_line(spellgen, row, beamspell_pattern, '#SPELLS')
			add_line(scriptgen, row, multibeamscript_pattern, '#SCRIPTS')
		elif row['type'] == 'grenade':
			add_line(spellgen, row, projectilespell_pattern, '#SPELLS')
			add_line(scriptgen, row, grenadescript_pattern, '#SCRIPTS')
		add_line(spellgen, row, spellitem_pattern, '#ITEMS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(spellconst, row, spellconst_pattern, '//SPELLS')

# Healing
with open('Input\\healing.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['description'] = descriptions[row['tag']]
		verify_function(row['functioncall'], inchealing)
		verify_function(row['visualfunction'], incvisual)
		if row['type'] == 'medpac':
			copy_template('Input\\medpac.uti', 'Output\\' + row['tag'] + '.uti')
			add_line(spellgen, row, medpacspell_pattern, '#SPELLS')
			add_line(upgradegen, row, medstation_pattern, '#MEDS')
		else:
			copy_template('Input\\repairkit.uti', 'Output\\' + row['tag'] + '.uti')
			# We'll use ammo boxes for these now
			# add_line(spellgen, row, repairspell_pattern, '#SPELLS')
			# add_line(upgradegen, row, craftitem_pattern, '#ITEMS')
		add_line(costgen, row, cost_pattern, '#COSTS')
		if 'baseitemcode' in row:
			add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		add_line(spellgen, row, spellitem_pattern, '#ITEMS')
		add_line(scriptgen, row, buffscript_pattern, '#SCRIPTS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(spellconst, row, spellconst_pattern, '//SPELLS')


# Mines
with open('Input\\mines.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		copy_template('Input\\trap.uti', 'Output\\' + row['tag'] + '.uti')
		verify_function(row['functioncall'], incmines)
		if row['type'] == 'new':
			row['description'] = descriptions[row['tag']]
			if 'baseitemcode' in row:
				add_line(featgen, row, baseitem_pattern, '#ITEMS')
			add_line(fieldgen, row, field_pattern, '#ITEMS')
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
with open('Input\\turrets.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		copy_template('Input\\trap.uti', 'Output\\' + row['tag'] + '.uti')
		row['description'] = descriptions[row['tag']]
		if 'baseitemcode' in row:
			add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(trapgen, row, trapitem_pattern, '#ITEMS')
		add_line(traps, row, newtrapheader_pattern, ';HEADERS')
		add_line(traps, row, newtrapini_pattern, ';TRAPS')
		add_line(trapgen, row, trapcode_pattern, '#TRAPS')
		add_line(costgen, row, cost_pattern, '#COSTS')
		add_line(upgradegen, row, craftitem_pattern, '#ITEMS')
		add_line(trapconst, row, trapconst_pattern, '//TRAPS')
		add_line(turretconst, row, turretconst_pattern, '//TURRETS')
		add_line(turretconst, row, turrettrapconst_pattern, '//TRAPS')
		add_line(incturret, row, checktrap_pattern, '//CHECK_TRAPS')
		add_line(incturret, row, checkturret_pattern, '//CHECK_TURRETS')
		add_line(incturret, row, gettrap_pattern, '//GET_TRAPS')
		add_line(incturret, row, getturret_pattern, '//GET_TURRETS')
		# Put turret spells in the enemy spells table			


# Craftables
with open('Input\\craftables.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		if row['type'] == 'workbench':
			add_line(upgradegen, row, craftitem_pattern, '#ITEMS')
		else:
			add_line(upgradegen, row, medstation_pattern, '#MEDS')

		
# Enemy Weapons
with open('Input\\enemyweapons.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		if row['type'] == 'template':
			copy_template('Input\\enemyweapon.uti', 'Output\\' + row['tag'] + '.uti')
		else:
			copy_template('Input\\' + row['tag'] + '.uti', 'Output\\' + row['tag'] + '.uti')
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
			add_line(poisongen, row, poisonitem_pattern, '#ITEMS')
		if row['dc']:
			add_line(dcs, row, dcheader_pattern, ';HEADERS')
			add_line(dcs, row, dcini_pattern, ';DCS')			
		if row['weapontype'] == '4':
			add_line(incai, row, rangedai_pattern, '//RANGED')


# Enemy Spells
with open('Input\\enemyspells.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		if row['use'] == 'single':
			copy_template('Input\\enemysinglespell.uti', 'Output\\' + row['tag'] + '.uti')
		elif row['use'] == 'double':
			copy_template('Input\\enemydoublespell.uti', 'Output\\' + row['tag'] + '.uti')
		else:
			copy_template('Input\\enemyspell.uti', 'Output\\' + row['tag'] + '.uti')
		row['name'] = 'Enemy Equipment'
		row['description'] = 'Enemy Equipment'
		row['cost'] = '0'
		row['model'] = '0'
		if 'baseitemcode' in row:
			add_line(featgen, row, baseitem_pattern, '#ITEMS')
		add_line(fieldgen, row, field_pattern, '#ITEMS')
		verify_function(row['functioncall'], incgrenade + incfuelweap + incenergy + incturretspells + incenemyspells + incenemyspells2)
		verify_function(row['visualfunction'], incvisual)
		if row['type'] == 'grenade':
			add_line(spellgen, row, projectilespell_pattern, '#SPELLS')
			add_line(scriptgen, row, grenadescript_pattern, '#SCRIPTS')
		elif row['type'] == 'blast':
			add_line(spellgen, row, projectilespell_pattern, '#SPELLS')
			add_line(scriptgen, row, beamscript_pattern, '#SCRIPTS')
		elif row['type'] == 'beam':
			add_line(spellgen, row, beamspell_pattern, '#SPELLS')
			add_line(scriptgen, row, beamscript_pattern, '#SCRIPTS')
		elif row['type'] == 'multibeam':
			add_line(spellgen, row, beamspell_pattern, '#SPELLS')
			add_line(scriptgen, row, multibeamscript_pattern, '#SCRIPTS')
		elif row['type'] == 'wave':
			add_line(spellgen, row, beamspell_pattern, '#SPELLS')
			add_line(scriptgen, row, wavescript_pattern, '#SCRIPTS')
		elif row['type'] == 'shield':
			add_line(spellgen, row, selfspell_pattern, '#SPELLS')
			add_line(shieldgen, row, shieldcode_pattern, '#ITEMS')
			add_line(scriptgen, row, shieldscript_pattern, '#SCRIPTS')
			add_line(shieldconst, row, shieldconst_pattern, '//SHIELDS')
			add_line(shields, row, shieldheader_pattern, ';HEADERS')
			add_line(shields, row, shieldini_pattern, ';SHIELDS')
		elif row['type'] == 'buff':
			add_line(spellgen, row, spellitem_pattern, '#ITEMS')
			add_line(scriptgen, row, buffscript_pattern, '#SCRIPTS')
		add_line(spellgen, row, spellitem_pattern, '#ITEMS')
		add_line(tagconst, row, tagconst_pattern, '//ITEMS')
		add_line(spellconst, row, spellconst_pattern, '//SPELLS')


# Powers
with open('Input\\powers.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	number = 1
	for row in reader:
		if row['type'] == 'remove' or row['type'] == 'eradicate':
			row['description'] = 'Removed'
		else:
			row['description'] = descriptions[row['spellcode']]
		if row['type'] == 'remove':
			add_line(powergen, row, removepower_pattern, '#REMOVES')
		elif row['type'] == 'eradicate':
			add_line(powergen, row, eradicatepower_pattern, '#ERADICATES')
		elif row['type'] == 'persuade':
			add_line(powergen, row, modifypower_pattern, '#MODIFIES')
		elif row['type'] == 'modify':
			verify_function(row['functioncall'], incpowers)
			verify_function(row['visualfunction'], incvisual)
			add_line(powergen, row, modifypower_pattern, '#MODIFIES')
			add_line(powergen, row, modifypower_pattern, '#NAMES')
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
			verify_function(row['functioncall'], incpowers)
			verify_function(row['visualfunction'], incvisual)
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
			add_tlk(tlk, row['name'], number)
			number += 1
			add_tlk(tlk, row['description'], number)
			number += 1
	set_tlk_header(tlk)
	with open('Output\\powers.txt', 'w') as tlkout:
		tlkout.write(tlk)
	tlk = "\nEOF"

		
# Modules
with open('Input\\modules.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		add_line(modulegen, row, module_pattern, '#MODULES')

# Hide Classes
with open('Input\\hides.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		add_line(hidegen, row, hideclass_pattern, '#HIDECLASSES')
		add_line(hideconst, row, hideconst_pattern, '//HIDES')

enemies = {}

# Spawns
with open('Input\\spawns.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		verify_function(row['functioncall'], incspawn)
		add_line(scriptgen, row, spawnscript_pattern, '#SCRIPTS')
		enemies[row['script']] = row

# Enemies
with open('Input\\enemies.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		enemy = enemies[row['script']]
		row['str'] = enemy['str']
		row['dex'] = enemy['dex']
		row['con'] = enemy['con']
		row['int'] = enemy['int']
		row['wis'] = enemy['wis']
		row['chr'] = enemy['chr']
		row['fort'] = enemy['fort']
		row['reflex'] = enemy['reflex']
		row['will'] = enemy['will']
		add_line(modulegen, row, enemy_pattern, '#ENEMIES')
		

# Treasures
with open('Input\\treasures.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		row['include'] = 'box_inc_treasure'
		if row['itemconst']:
			add_line(inctreasure, row, treasureitem_pattern, '//' + row['functioncall'])
		elif row['type'] == 'static':
			add_line(scriptgen, row, treasurescript_pattern, '#SCRIPTS')
		elif row['script']:
			add_line(scriptgen, row, treasurescript_pattern, '#SCRIPTS')
			add_line(inctreasure, row, treasurefunction_pattern, '//FUNCTIONS')


# Placeables
with open('Input\\placeables.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		add_line(modulegen, row, placeable_pattern, '#PLACEABLES')


# Merchants
with open('Input\\merchants.csv', 'r') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		if row['type'] == 'merchant':
			add_line(modulegen, row, merchant_pattern, '#MERCHANTS')
			add_line(scriptgen, row, merchantscript_pattern, '#SCRIPTS')
		elif row['type'] == 'item':
			add_line(incmerchant, row, merchantitem_pattern, '//'+row['marker'])



write_file(feats, 'Output\\feats.ini')
write_file(baseitems, 'Output\\baseitems.ini')
write_file(poisons, 'Output\\poison.ini')
write_file(dcs, 'Output\\dc.ini')
write_file(shields, 'Output\\shields.ini')
write_file(traps, 'Output\\shields.ini')

# We don't need to output the includes

write_file(armorgen, 'Output\\armorgen.py')
write_file(featgen, 'Output\\featgen.py')
write_file(hidegen, 'Output\\hidegen.py')
write_file(costgen, 'Output\\costgen.py')
write_file(poisongen, 'Output\\poisongen.py')
write_file(modulegen, 'Output\\modulegen.py')
write_file(powergen, 'Output\\powergen.py')
write_file(powergen2, 'Output\\powergen2.py')
write_file(spellgen, 'Output\\spellgen.py')
write_file(shieldgen, 'Output\\shieldgen.py')
write_file(upgradegen, 'Output\\upgradegen.py')
write_file(scriptgen, 'Output\\scriptgen.py')
write_file(fieldgen, 'Output\\fieldgen.py')
write_file(trapgen, 'Output\\trapgen.py')

write_file(itemconst, 'Output\\box_inc_itemconst.nss')
write_file(featconst, 'Output\\box_inc_featconst.nss')
write_file(spellconst, 'Output\\box_inc_spellconst.nss')
write_file(powerconst, 'Output\\box_inc_powerconst.nss')
write_file(shieldconst, 'Output\\box_inc_shieldconst.nss')
write_file(hideconst, 'Output\\box_inc_hideconst.nss')
write_file(trapconst, 'Output\\box_inc_trapconst.nss')
write_file(turretconst, 'Output\\box_inc_turretconst.nss')

write_file(incturret, 'Output\\box_inc_turrets.nss')
write_file(incmerchant, 'Output\\box_inc_merchants.nss')
write_file(incai, 'Output\\box_inc_ai.nss')















