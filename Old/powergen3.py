

spellnames = list()
spellnames.append('FORCE_SPEED_N')
spellnames.append('FORCE_SWEEP_N')
spellnames.append('FORCE_QUAKE_N')
spellnames.append('FORCE_IONIZE_N')
spellnames.append('ION_STORM_N')
spellnames.append('THROW_LIGHTSABER_N')
spellnames.append('FORCE_LEVITATE_N')
spellnames.append('LEVITATE_FIELD_N')
spellnames.append('FORCE_PUSH_N')
spellnames.append('FORCE_WAVE_N')
spellnames.append('FORCE_BLIND_N')
spellnames.append('FORCE_AGILITY_N')
spellnames.append('BATTLE_MEDITATION_N')
spellnames.append('MASTER_MEDITATION_N')
spellnames.append('FORCE_CONFUSION_N')
spellnames.append('MASS_CONFUSION_N')
spellnames.append('FORCE_VALOR_N')
spellnames.append('FORCE_SLEEP_N')
spellnames.append('SLEEP_WAVE_N')
spellnames.append('FORCE_BODY_N')
spellnames.append('FORCE_ENLIGHTENMENT_N')
spellnames.append('FORCE_SURPRESS_N')
spellnames.append('FORCE_PARALYSIS_N')
spellnames.append('PARALYSIS_WAVE_N')
spellnames.append('FORCE_LIGHT_N')
spellnames.append('WALL_OF_LIGHT_N')
spellnames.append('FORCE_FURY_N')
spellnames.append('FORCE_AFFLICT_N')
spellnames.append('FORCE_FEAR_N')
spellnames.append('FORCE_INSANITY_N')
spellnames.append('FORCE_CHOKE_N')
spellnames.append('FORCE_CRUSH_N')
spellnames.append('FORCE_DRAIN_N')
spellnames.append('DEATH_FIELD_N')
spellnames.append('FORCE_LIGHTNING_N')
spellnames.append('FORCE_STORM_N')
spellnames.append('FORCE_SUGGEST_N')
spellnames.append('FORCE_COMPEL_N')
spellnames.append('FORCE_CONCEAL_N')
spellnames.append('BEAST_TRICK_N')
spellnames.append('BREATH_CONTROL_N')
spellnames.append('FORCE_SEVER_N')
spellnames.append('FORCE_CONSUME_N')

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
	
	
	
	
	
	
	
	