

spellnames = list()
# Generated lines go here
#NAMES

spelldescs = list(spellnames)
for i in range(0, len(spelldescs)):
	spelldescs[i] = spelldescs[i].replace('_N', '_D')


header = ''
with open('powerheader.ini', 'r') as file:
	header = file.read()

midder = ''
with open('powermidder.ini', 'r') as file:
	midder = file.read()

powers = ''
with open('temp.ini', 'r') as file:
	powers = file.read()
	
	index = 0
	for spell in spellnames:
		powers = powers.replace(spell, 'StrRef' + str(index))
		index = index + 1
	
	for spell in spelldescs:
		powers = powers.replace(spell, 'StrRef' + str(index))
		index = index + 1


with open('tslpatchdata\\powers.ini', 'w') as file:
	
	file.write(header)
	
	index = 0
	for spell in spellnames:
		file.write('StrRef' + str(index) + '=' + str(index) + '\n')
		index = index + 1
	
	for spell in spelldescs:
		file.write('StrRef' + str(index) + '=' + str(index) + '\n')
		index = index + 1
	
	file.write(midder)
	file.write(powers)
	
	
	
	
	
	
	
	