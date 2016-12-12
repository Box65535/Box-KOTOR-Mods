
poisoncodes = []
# Generated lines go here
#POISONS

itemcodes = {}
# Generated lines go here
#ITEMS


header = 'error'
with open('gffheader.ini', 'r') as file:
	header = file.read()

midder = 'error'
with open('poisonmidder.ini', 'r') as file:
	header = file.read()

poison = 'error'
with open('poison.ini', 'r') as file:
	poison = file.read()
	for i in range(0, len(poisoncodes)):
		poison = poison.replace(poisoncodes[i], '2DAMEMORY' + str(i+1))

itemheader = '\n'
index = 0
for key in itemcodes:
	itemheader = itemheader + 'File' + str(index) + '=' key + '.uti\n'
	index = index + 1

items = '\n'
for key in itemcodes:
	items = items + '[' + key + ']\n'
	items = items + 'PropertiesList\\0\Param1Value=' + itemcodes[key] + '\n'

for i in range(0, len(poisoncodes)):
	items = items.replace(poisoncodes[i], '2DAMEMORY' + str(i+1))


out = 'error'
with open('box_inc_poisonconst.nss') as file:
	out = file.read()
	for i in range(0, len(poisoncodes)):
		out = out.replace('CODE_' + poisoncodes[i], '2DAMEMORY' + str(i+1))


with open('tslpatchdata\\poison.ini', 'w') as file:
	file.write(header)
	file.write(itemheader)
	file.write(midder)
	file.write(poison)
	file.write(items)

with open('tslpatchdata\\box_inc_poisonconst.nss', 'w') as file:
	file.write(out)

