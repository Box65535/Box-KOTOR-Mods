

shieldnames = list()
# Generated lines go here
#SHIELDS

replaces = {}
# Generated lines go here
#REPLACES




shields = 'error'
with open('shields.ini', 'r') as file:
	shields = file.read()
	
	for key in replaces:
		shields = shields.replace(key, replaces[key])
	
	index = 1
	for shield in shieldnames:
		shields = shields.replace('2DAMEMORY_' + shield, '2DAMEMORY' + str(index))
		index = index + 1

with open('tslpatchdata\\shields.ini', 'w') as file:
	file.write(shields)


script = 'error'
with open('box_inc_shieldconst.nss', 'r') as file:
	script = file.read()
	
	index = 1
	for shield in shieldnames:
		script = script.replace('CODE_' + shield, '2DAMEMORY' + str(index))
		index = index + 1

with open('tslpatchdata\\box_inc_shields.nss', 'w') as file:
	file.write(script)


