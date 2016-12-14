
poisoncodes = []
poisoncodes.append('BOXP_RODIAN_BLADE')
poisoncodes.append('BOXP_TWILEK_BLADE')
poisoncodes.append('BOXP_POISON_EDGE_1')
poisoncodes.append('BOXP_POISON_EDGE_2')
poisoncodes.append('BOXP_POISON_EDGE_3')
poisoncodes.append('BOXP_POISON_EDGE_4')
poisoncodes.append('BOXP_POISON_DART')
poisoncodes.append('BOXP_GAS_GRENADE')
poisoncodes.append('BOXP_RADIATION_ROCKET')
poisoncodes.append('BOXP_POISON_MINE_1')
poisoncodes.append('BOXP_POISON_MINE_2')
poisoncodes.append('BOXP_POISON_MINE_3')
poisoncodes.append('BOXP_POISON_MINE_4')
poisoncodes.append('BOXP_POISON_MINE_5')
poisoncodes.append('BOXP_SITH_SWORD_1')

itemcodes = {}
itemcodes['wm_rodian.uti'] = 'BOXP_RODIAN_BLADE'
itemcodes['wm_twilek1.uti'] = 'BOXP_TWILEK_BLADE'
itemcodes['um_psn1.uti'] = 'BOXP_POISON_EDGE_1'
itemcodes['um_psn2.uti'] = 'BOXP_POISON_EDGE_2'
itemcodes['um_psn3.uti'] = 'BOXP_POISON_EDGE_3'
itemcodes['um_psn4.uti'] = 'BOXP_POISON_EDGE_4'
itemcodes['ew_sithps1.uti'] = 'BOXP_SITH_SWORD_1'


header = 'error'
with open('poisonheader.ini', 'r') as file:
	header = file.read()

poison = 'error'
with open('poison.ini', 'r') as file:
	poison = file.read()
	for i in range(0, len(poisoncodes)):
		poison = poison.replace(poisoncodes[i], '2DAMEMORY' + str(i+1))

items = '\n'
for key in itemcodes:
	items = items + '[' + key + ']\n'
	items = items + 'PropertiesList\\0\Param1Value=' + itemcodes[key] + '\n'

for i in range(0, len(poisoncodes)):
	items = items.replace(poisoncodes[i], '2DAMEMORY' + str(i+1))


# weapons = 'error'
# with open('box_inc_weapon.nss') as file:
	# weapons = file.read()
	# for i in range(0, len(poisoncodes)):
		# weapons = weapons.replace(poisoncodes[i], '2DAMEMORY' + str(i+1))
		
mines = 'error'
with open('box_inc_poisonconst.nss') as file:
	mines = file.read()
	for i in range(0, len(poisoncodes)):
		mines = mines.replace(poisoncodes[i], '2DAMEMORY' + str(i+1))


with open('tslpatchdata\\poison.ini', 'w') as file:
	file.write(header)
	file.write(poison)
	file.write(items)

# with open('tslpatchdata\\box_inc_weapon.nss', 'w') as file:
	# file.write(weapons)

with open('tslpatchdata\\box_inc_poison.nss', 'w') as file:
	file.write(mines)

