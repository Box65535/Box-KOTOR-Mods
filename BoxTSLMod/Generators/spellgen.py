
class Spell:
	def __init__(self, row, name, maxcr, category, range, script, sound, proj, projmodel, projtype, projorientation, hostile, exclusion):
		self.row = row
		self.name = name
		self.maxcr = maxcr
		self.category = category
		self.range = range
		self.script = script
		self.sound = sound
		self.proj = proj
		self.projmodel = projmodel
		self.projtype = projtype
		self.projorientation = projorientation
		self.hostile = hostile
		self.exclusion = exclusion

class Script:
	def __init__(self, row, script):
		self.row = row
		self.script = script

class Item:
	def __init__(self, name, spell):
		self.name = name
		self.spell = spell
	

modify_spells = list()
# Generated lines go here
#MODIFIES


new_spells = list()
# Generated lines go here
#PROJECTILES

# Generated lines go here
#BEAMS

# Generated lines go here
#BUFFS

# Generated lines go here
#MEDPACS

# Generated lines go here
#REPAIRS


items = list()
# Generated lines go here
#ITEMS
items.append(Item('', ''))


header = ''
with open('spellheader.ini', 'r') as file:
	header = file.read()

midder = ''
with open('spellmidder.ini', 'r') as file:
	midder = file.read()

incout = 'error'
with open('box_inc_spellconst.nss', 'r') as file:
	incout = file.read()
	
	index = 1
	for spell in new_spells:
		out = out.replace('CODE_' + spell.name, '2DAMEMORY' + str(index))
		index = index + 1
	

with open('tslpatchdata\\box_inc_spellconst.nss', 'w') as file:
	file.write(incout)
	

with open('temp.ini', 'w') as file:
	
	file.write(header)
	
	for i in range(0, len(items)):
		file.write('File' + str(i) + '=' + items[i].name + '.uti\n')
	
	file.write(midder)
	
	for i in range(0, len(modify_spells)):
		file.write('ChangeRow' + str(i) + '=modify_row_' + str(modify_spells[i].row) + '\n')
	
	for i in range(0, len(neq_spells)):
		file.write('AddRow' + str(i) + '=' + neq_spells[i].name.lower() + '\n')
	
	for spell in modify_spells:
		file.write('[modify_row_' + str(modify_spells[i].row) + ']\n')
		file.write('RowIndex=' + str(spell.row) + '\n')
		file.write('impactscript=' + str(spell.script) + '\n')
	
	mem_index = 1
	for spell in neq_spells:
		file.write('[' + spell.name.lower() + ']\n')
		file.write('label=BOX_ITEM_' + spell.name + '\n')
		file.write('usertype=4\n')
		
		file.write('maxcr=' + str(spell.maxcr) + '\n')
		file.write('category=' + str(spell.category) + '\n')
		file.write('range=' + str(spell.range) + '\n')
		file.write('impactscript=' + str(spell.script) + '\n')
		
		file.write('conjtime=170\n')
		file.write('conjanim=hand\n')
		file.write('casttime=1330\n')
		file.write('castanim=self\n')
		file.write('castsound=' + str(spell.sound) + '\n')
		
		if spell.proj:
			file.write('proj=1\n')
			file.write('projmodel=' + str(spell.projmodel) + '\n')
			file.write('projtype=' + str(spell.projtype) + '\n')
			file.write('projspwnpoint=throw\n')
			file.write('projorientation=' + str(spell.projorientation) + '\n')
		else:
			file.write('proj=0\n')
		
		file.write('itemimmunity=0\n')
		
		if (spell.hostile):
			file.write('forcehostile=high()\n')
			file.write('forcefriendly=****\n')
			file.write('hostilesetting=1\n')
			file.write('itemtargeting=3\n')
		else:
			file.write('forcefriendly=high()\n')
			file.write('forcehostile=****\n')
			file.write('hostilesetting=0\n')
			file.write('itemtargeting=1\n')
		
		file.write('exclusion=' + str(spell.exclusion) + '\n')
		file.write('forbiditemmask=0x0000\n')
		file.write('requireitemmask=0x0000\n')
		file.write('pips=1\n')
		file.write('2DAMEMORY_' + spell.name + '=RowIndex\n')
		mem_index = mem_index + 1
	
	file.write('\n')
	
	for item in items:
		file.write('[' + item.name + '.uti]\n')
		file.write('PropertiesList\\0\Subtype=2DAMEMORY_' + item.spell + '\n')





# Moved from spellgen2.py

out = ''
with open('temp.ini', 'r') as file:
	out = file.read()


index = 1
for spell in new_spells:
	out = out.replace('2DAMEMORY_' + spell.name, '2DAMEMORY' + str(index))
	index = index + 1


with open('tslpatchdata\\spells.ini', 'w') as file:
	file.write(out)



