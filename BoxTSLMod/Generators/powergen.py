

class Spell:
	def __init__(self, row, name, fp, prereq, level, consular_only, maxcr, category, range, icon, script, conjanim, castanim, casthand, priority, hostile, exclusion):
		self.row = row
		self.name = name
		self.fp = fp
		self.prereq = prereq
		self.level = level
		self.consular_only = consular_only
		self.maxcr = maxcr
		self.category = category
		self.range = range
		self.icon = icon
		self.script = script
		self.conjanim = conjanim
		self.castanim = castanim
		self.casthand = casthand
		self.priority = priority
		self.hostile = hostile
		self.exclusion = exclusion
		self.conjtime = 170
		self.casttime = 1330
		self.catchtime = 0
		self.catchanim = '****'
		self.requireitem = '0x0000'

class Character:
	def __init__(self, filename, powers, output):
		self.filename = filename
		self.powers = powers
		self.output = output

		

# Remove spells
remove_spells = list()
# Generated lines go here
#REMOVES


# Eradicate spells
eradicate_spells = list()
# Generated lines go here
#ERADICATES


# Modify spells
modify_spells = list()
# Generated lines go here
#MODIFIES


# New spells
new_spells = list()
# Generated lines go here
#POWERS



incout = 'error'
with open('box_inc_powerconst.nss', 'r') as file:
	incout = file.read()
	
	index = 1
	for spell in new_spells:
		out = out.replace('CODE_' + spell.name, '2DAMEMORY' + str(index))
		index = index + 1


def write_header(char):
	char.output += '[' + char.filename + ']\n'
	for i in range(0, len(char.powers)):
		char.output += 'AddField' + str(i) + '=' + char.filename + '_' + char.powers[i] + '\n'
	
def write_spell(char, index, powername):
	char.output += '[' + char.filename + '_' + powername + ']\n'
	char.output += 'FieldType=Struct\n'
	char.output += 'Path=ClassList\\0\KnownList0\n'
	char.output += 'Label=\n'
	char.output += 'TypeId=3\n'
	char.output += 'AddField0=' + char.filename + '_' + powername + '_Spell\n'
	char.output += 'AddField1=' + char.filename + '_' + powername + '_SpellMetaMagic\n'
	char.output += 'AddField2=' + char.filename + '_' + powername + '_SpellFlags\n'
	char.output += '[' + char.filename + '_' + powername + '_Spell]\n'
	char.output += 'FieldType=Word\n'
	char.output += 'Label=Spell\n'
	char.output += 'Value=2DAMEMORY' + str(index) + '\n'
	char.output += '[' + char.filename + '_' + powername + '_SpellMetaMagic]\n'
	char.output += 'FieldType=Byte\n'
	char.output += 'Label=SpellMetaMagic\n'
	char.output += 'Value=0\n'
	char.output += '[' + char.filename + '_' + powername + '_SpellFlags]\n'
	char.output += 'FieldType=Byte\n'
	char.output += 'Label=SpellFlags\n'
	char.output += 'Value=1\n'

characters = []
# CONCEAL and SUGGEST have to be added manually
characters.append(Character('p_kreia.utc', ['FORCE_SLEEP', 'FORCE_AFFLICT'], '')) # FORCE_CONCEAL, FORCE_SUGGEST
characters.append(Character('p_visas.utc', ['FORCE_SPEED'], '')) # FORCE_CONCEAL

for char in characters:
	write_header(char)


with open('temp.ini', 'w') as file:
	
	# names = list()
	# descs = list()
	# cnt = len(spells)
	# for i in range(1, len(spells)+1):
		# names.append(i + len(modify_spells))
		# descs.append(i + len(modify_spells) + len(new_spells))
	
	for i in range(0, len(remove_spells) + len(modify_spells) + len(eradicate_spells)):
		if i < len(remove_spells):
			file.write('ChangeRow' + str(i) + '=' + remove_spells[i].name.lower() + '\n')
		elif i < (len(remove_spells) + len(modify_spells)):
			file.write('ChangeRow' + str(i) + '=' + modify_spells[i - len(remove_spells)].name.lower() + '\n')
		else:
			file.write('ChangeRow' + str(i) + '=' + eradicate_spells[i - len(remove_spells) - len(modify_spells)].name.lower() + '\n')
	
	for i in range(0, len(new_spells)):
		file.write('AddRow' + str(i) + '=' + new_spells[i].name.lower() + '\n')
	
	
	for spell in remove_spells:
		file.write('[' + spell.name.lower() + ']\n')
		file.write('RowIndex=' + str(spell.row) + '\n')
		file.write('label=OLD_' + spell.name + '\n')
		file.write('guardian=-1\n')
		file.write('sentinel=-1\n')
		file.write('weapmstr=-1\n')
		file.write('watchman=-1\n')
		file.write('marauder=-1\n')
		file.write('assassin=-1\n')
		file.write('consular=-1\n')
		file.write('jedimaster=-1\n')
		file.write('sithlord=-1\n')
		file.write('inate=' + str(spell.level) + '\n')
		file.write('forcepoints=' + str(spell.fp) + '\n')
		file.write('impactscript=' + str(spell.script) + '\n')
		file.write('maxcr=' + str(spell.maxcr) + '\n')
		
	
	for spell in modify_spells:
		file.write('[' + spell.name.lower() + ']\n')
		file.write('RowIndex=' + str(spell.row) + '\n')
		file.write('label=BOX_' + spell.name + '\n')
		file.write('name=' + spell.name + '_N\n')
		file.write('spelldesc=' + spell.name + '_D\n')
		# file.write('name=135\n')
		# file.write('spelldesc=135\n')
		file.write('forcepoints=' + str(spell.fp) + '\n')
		file.write('goodevil=-\n')
		file.write('consular=' + str(spell.level) + '\n')
		file.write('jedimaster=' + str(spell.level) + '\n')
		file.write('sithlord=' + str(spell.level) + '\n')
		file.write('inate=' + str(spell.level) + '\n')
		
		# Nov 2015 - Removing the "Consular Only" spells, all spells are free
		# if (not(spell.consular_only)):
		file.write('guardian=' + str(spell.level) + '\n')
		file.write('sentinel=' + str(spell.level) + '\n')
		file.write('weapmstr=' + str(spell.level) + '\n')
		file.write('watchman=' + str(spell.level) + '\n')
		file.write('marauder=' + str(spell.level) + '\n')
		file.write('assassin=' + str(spell.level) + '\n')
		# else:
		# file.write('guardian=50\n')
		# file.write('sentinel=50\n')
		# file.write('weapmstr=50\n')
		# file.write('watchman=50\n')
		# file.write('marauder=50\n')
		# file.write('assassin=50\n')
		
		file.write('maxcr=' + str(spell.maxcr) + '\n')
		file.write('iconresref=' + str(spell.icon) + '\n')
		file.write('impactscript=' + str(spell.script) + '\n')
		file.write('pips=1\n')
		
		# Hack for laziness
		if spell.name == 'FORCE_SEVER':
			file.write('forcehostile=high()\n')
			file.write('forcefriendly=****\n')
			file.write('hostilesetting=1\n')
			file.write('casthandvisual=v_con_light\n')
		
		if spell.name == 'FORCE_CONSUME':
			file.write('conjtime=170\n')
			file.write('conjanim=dark\n')
			file.write('casttime=1330\n')
			file.write('castanim=dark\n')
			file.write('casthandvisual=v_con_dark\n')
		
	
	for spell in eradicate_spells:
		file.write('[' + spell.name.lower() + ']\n')
		file.write('RowIndex=' + str(spell.row) + '\n')
		file.write('label=ERADICATED_' + spell.name + '\n')
		file.write('label=ERADICATED_' + spell.name + '\n')
		file.write('usertype=-2\n')
		file.write('guardian=-1\n')
		file.write('sentinel=-1\n')
		file.write('weapmstr=-1\n')
		file.write('watchman=-1\n')
		file.write('marauder=-1\n')
		file.write('assassin=-1\n')
		file.write('consular=-1\n')
		file.write('jedimaster=-1\n')
		file.write('sithlord=-1\n')
		file.write('inate=-1\n')
		file.write('forcepoints=0\n')
		file.write('impactscript=****\n')
		file.write('maxcr=0\n')
	
	mem_index = 1
	mem2_index = len(new_spells)
	for spell in new_spells:
		file.write('[' + spell.name.lower() + ']\n')
		# file.write('RowIndex=' + str(spell.row) + '\n')
		file.write('label=BOX_' + spell.name + '\n')
		file.write('name=' + spell.name + '_N\n')
		file.write('spelldesc=' + spell.name + '_D\n')
		# file.write('name=135\n')
		# file.write('spelldesc=135\n')
		file.write('forcepoints=' + str(spell.fp) + '\n')
		file.write('goodevil=-\n')
		file.write('usertype=1\n')
		
		if spell.prereq:
			file.write('prerequisites=2DAMEMORY' + str(mem_index - 1) + '\n')
		else:
			file.write('prerequisites=****\n')
		
		file.write('consular=' + str(spell.level) + '\n')
		file.write('jedimaster=' + str(spell.level) + '\n')
		file.write('sithlord=' + str(spell.level) + '\n')
		file.write('inate=' + str(spell.level) + '\n')
		
		if (not(spell.consular_only)):
			file.write('guardian=' + str(spell.level) + '\n')
			file.write('sentinel=' + str(spell.level) + '\n')
			file.write('weapmstr=' + str(spell.level) + '\n')
			file.write('watchman=' + str(spell.level) + '\n')
			file.write('marauder=' + str(spell.level) + '\n')
			file.write('assassin=' + str(spell.level) + '\n')
		else:
			file.write('guardian=50\n')
			file.write('sentinel=50\n')
			file.write('weapmstr=50\n')
			file.write('watchman=50\n')
			file.write('marauder=50\n')
			file.write('assassin=50\n')
		
		file.write('maxcr=' + str(spell.maxcr) + '\n')
		file.write('category=' + str(spell.category) + '\n')
		file.write('range=' + str(spell.range) + '\n')
		file.write('iconresref=' + str(spell.icon) + '\n')
		file.write('impactscript=' + str(spell.script) + '\n')
		
		file.write('conjtime=' + str(spell.conjtime) + '\n')
		file.write('conjanim=' + str(spell.conjanim) + '\n')
		
		file.write('casttime=' + str(spell.casttime) + '\n')
		file.write('castanim=' + str(spell.castanim) + '\n')
		file.write('casthandvisual=' + str(spell.casthand) + '\n')
		
		file.write('catchtime=' + str(spell.catchtime) + '\n')
		file.write('catchanim=' + str(spell.catchanim) + '\n')
		
		file.write('proj=0\n')
		file.write('itemimmunity=0\n')
		
		
		if (spell.hostile):
			if spell.prereq:
				file.write('forcehostile=2DAMEMORY' + str(mem2_index - 1) + '\n')
			else:
				file.write('forcehostile=high()\n')
			file.write('forcefriendly=****\n')
			file.write('hostilesetting=1\n')
			file.write('2DAMEMORY' + str(mem2_index) + '=forcehostile\n')
		else:
			if spell.prereq:
				file.write('forcefriendly=2DAMEMORY' + str(mem2_index - 1) + '\n')
			else:
				file.write('forcefriendly=high()\n')
			file.write('forcehostile=****\n')
			file.write('hostilesetting=0\n')
			file.write('2DAMEMORY' + str(mem2_index) + '=forcefriendly\n')
		
		file.write('forcepriority=' + str(spell.priority) + '\n')
		file.write('exclusion=' + str(spell.exclusion) + '\n')
		file.write('forbiditemmask=0x0000\n')
		file.write('requireitemmask=' + str(spell.requireitem) + '\n')
		file.write('pips=1\n')
		
		file.write('2DAMEMORY' + str(mem_index) + '=RowIndex\n')
		
		for char in characters:
			for power in char.powers:
				if spell.name == power:
					write_spell(char, mem_index, spell.name)
		
		mem_index += 1
		mem2_index += 1
	
	for char in characters:
		file.write(char.output)
#