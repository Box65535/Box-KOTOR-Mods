
# This is where we generate the generators

class Object(object):
	pass



def verify_file(path):
	return True

def verify_blob(file, header):
	return True

def verify_function(file, name):
	return True

def verify_type(object):
	return True

def verify_property(file, )

def add_line(file, pattern, marker):
	pass

def copy_template(path, new_path):
	pass


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
removepower_pattern = """remove_spells.append(Spell({0.spellindex}, '{0.spellcode}_UNUSED', 
	{0.powercost}, None, {0.levelreq}, None, {0.spellcr}, None, None, None, '{0.script}',
	None, None, None, None, None, None))"""
eradicatepower_pattern = """eradicate_spells.append(Spell({0.spellindex}, '{0.spellcode}_UNUSED',
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
minescript_pattern = """scripts.append(Script.new_mine('{0.script}', {0.radius}, {0.minelevel},
	'{0.functioncall}', '{0.visualfunction}'))"""
ammoscript_pattern = """scripts.append(Script.new_ammo('{0.script}', '{0.stacksize}', '{0.ammotag}'))"""
ammoscript_pattern = """scripts.append(Script.new_buff('{0.script}', '{0.functioncall}'))"""
shieldscript_pattern = """scripts.append(Script.new_shield('{0.script}', '{0.shieldconst}'))"""
spawnscript_pattern = """scripts.append(Script.new_spawn('{0.script}', '{0.functioncall}', '{0.include}',
	'{0.childscript}'))"""
treasurescript_pattern = """scripts.append(Script.new_treasure('{0.script}', '{0.functioncall}',
	'{0.include}'))"""

# fieldgen.py
field_pattern = """items.append(Item('{0.tag}', '{0.name}', \"\"\"{0.description}\"\"\",
	'{0.model}', None))"""
weaponfield_pattern = """weapons.append(Item('{0.tag}', '{0.name}', \"\"\"{0.description}\"\"\",
	'{0.model}', '{0.upgradelevel}'))"""
upgradefield_pattern = """items.append(Item('{0.tag}', '{0.name}', \"\"\"{0.description}\"\"\",
	'{0.model}', '{0.upgradelevel}'))"""



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

