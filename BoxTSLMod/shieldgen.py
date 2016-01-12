

shieldnames = list()
shieldnames.append('ENERGY_SHIELD_D')
shieldnames.append('ENVIRONMENT_SHIELD_D')
shieldnames.append('ADVANCED_SHIELD_D')
shieldnames.append('RADIANT_SHIELD_D')
shieldnames.append('UNIVERSAL_SHIELD_D')
shieldnames.append('ENERGY_SHIELD_H')
shieldnames.append('ENVIRONMENT_SHIELD_H')
shieldnames.append('ADVANCED_SHIELD_H')
shieldnames.append('RADIANT_SHIELD_H')
shieldnames.append('UNIVERSAL_SHIELD_H')
shieldnames.append('MELEE_SHIELD_H')
shieldnames.append('BAODUR_SHIELD_H')
shieldnames.append('PERAGUS_SHIELD_H')
shieldnames.append('PERAGUS_SHIELD_E')

shields = 'error'
with open('shields.ini', 'r') as file:
	shields = file.read()
	
	index = 1
	for shield in shieldnames:
		shields = shields.replace('2DAMEMORY_' + shield, '2DAMEMORY' + str(index))
		index = index + 1

with open('tslpatchdata\\shields.ini', 'w') as file:
	file.write(shields)


script = 'error'
with open('box_inc_shields.nss', 'r') as file:
	script = file.read()
	
	index = 1
	for shield in shieldnames:
		script = script.replace('2DAMEMORY_' + shield, '2DAMEMORY' + str(index))
		index = index + 1

with open('tslpatchdata\\box_inc_shields.nss', 'w') as file:
	file.write(script)


