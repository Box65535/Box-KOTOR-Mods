
trapcodes = []
# Generated lines go here
#TRAPS

itemcodes = {}
# Generated lines go here
#ITEMS


traps = 'error'
with open('traps.ini', 'r') as file:
	traps = file.read()
	for i in range(0, len(trapcodes)):
		traps = traps.replace(trapcodes[i], '2DAMEMORY' + str(i+1))
		
items = '\n'
for key in itemcodes:
	items = items + '[' + key + ']\n'
	items = items + 'PropertiesList\\0\Subtype=' + itemcodes[key] + '\n'

for i in range(0, len(trapcodes)):
	items = items.replace(trapcodes[i], '2DAMEMORY' + str(i+1))


out = 'error'
with open('box_inc_trapconst.nss') as file:
	out = file.read()
	for i in range(0, len(trapcodes)):
		out = out.replace('CODE_' + trapcodes[i], '2DAMEMORY' + str(i+1))


with open('tslpatchdata\\traps.ini', 'w') as file:
	file.write(traps)
	file.write(items)

with open('tslpatchdata\\box_inc_trapconst.nss', 'w') as file:
	file.write(out)

