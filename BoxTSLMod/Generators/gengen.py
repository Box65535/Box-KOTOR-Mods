
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
itemcode_pattern = """itemcodes.append('{0.baseitemcode}')"""
baseitem_pattern = """items.append(Item('{0.tag}', '{0.baseitemcode}'))""" 

# modulegen.py
enemy_pattern = """enemies.append(Enemy('{0.module}', '{0.tag}', '{0.script}',
	{0.str}, {0.con}, {0.dex}, {0.int}, {0.wis}, {0.chr}, None,
	{0.fort}, {0.reflex}, {0.will}))"""
placeable_pattern = """placeables.append(Placeable('{0.module}', '{0.tag}', '{0.script}',
	{0.unlock}, {0.bash}, None))"""

# poisongen.py
poisonitem_pattern = """itemcodes['{0.tag}.uti'] = '{0.poisoncode}'"""

# spellgen.py
spellitem_pattern = """items.append(Item('{0.tag}', '{0.spellcode}'))"""

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

# modelgen.py




