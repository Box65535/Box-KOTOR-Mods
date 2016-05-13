
class Item:
	def __init__(self, filename, baseitem):
		self.filename = filename
		self.baseitem = baseitem

class Character:
	def __init__(self, filename, feats):
		self.filename = filename
		self.feats = feats

featcodes = list()
featcodes.append('BOX_SABERFOCUS')
featcodes.append('BOX_SABERSPEC')
featcodes.append('BOX_MELEEFOCUS')
featcodes.append('BOX_MELEESPEC')
featcodes.append('BOX_FORCE1')
featcodes.append('BOX_FORCE2')
featcodes.append('BOX_FORCE3')
featcodes.append('BOX_FORCE4')
featcodes.append('BOX_FORCE5')
featcodes.append('BOX_BLASTERS1')
featcodes.append('BOX_BLASTERS2')
featcodes.append('BOX_BLASTERS3')
featcodes.append('BOX_BLASTERS4')
featcodes.append('BOX_BLASTERS5')
featcodes.append('BOX_MELEE1')
featcodes.append('BOX_MELEE2')
featcodes.append('BOX_MELEE3')
featcodes.append('BOX_SABERS')
featcodes.append('BOX_MECHWEAP1')
featcodes.append('BOX_MECHWEAP2')
featcodes.append('BOX_MECHWEAP3')
featcodes.append('BOX_ENERGWEAP1')
featcodes.append('BOX_ENERGWEAP2')
featcodes.append('BOX_ENERGWEAP3')
featcodes.append('BOX_WOOKWEAP')
featcodes.append('BOX_ARMOR1')
featcodes.append('BOX_ARMOR2')
featcodes.append('BOX_ARMOR3')
featcodes.append('BOX_ARMOR4')
featcodes.append('BOX_ARMOR5')
featcodes.append('BOX_DROIDARMOR1')
featcodes.append('BOX_DROIDARMOR2')
featcodes.append('BOX_DROIDARMOR3')
featcodes.append('BOX_SHIELDS1')
featcodes.append('BOX_SHIELDS2')
featcodes.append('BOX_STIMS1')
featcodes.append('BOX_STIMS2')
featcodes.append('BOX_IMPLANTS1')
featcodes.append('BOX_IMPLANTS2')
featcodes.append('BOX_IMPLANTS3')
featcodes.append('BOX_STLHGEN')
featcodes.append('BOX_TURRET1')
featcodes.append('BOX_TURRET2')
featcodes.append('BOX_TURRET3')
featcodes.append('BOX_ETANK1')
featcodes.append('BOX_ETANK2')


featnames = list()
# Weapons
featnames.append('BOX_BLASTERS1_N')
featnames.append('BOX_BLASTERS2_N')
featnames.append('BOX_BLASTERS3_N')
featnames.append('BOX_BLASTERS4_N')
featnames.append('BOX_BLASTERS5_N')
featnames.append('BOX_MELEE1_N')
featnames.append('BOX_MELEE2_N')
featnames.append('BOX_MELEE3_N')
featnames.append('BOX_SABERS_N')
featnames.append('BOX_MECHWEAP1_N')
featnames.append('BOX_MECHWEAP2_N')
featnames.append('BOX_MECHWEAP3_N')
featnames.append('BOX_ENERGWEAP1_N')
featnames.append('BOX_ENERGWEAP2_N')
featnames.append('BOX_ENERGWEAP3_N')
featnames.append('BOX_WOOKWEAP_N')
# Armor
featnames.append('BOX_ARMOR1_N')
featnames.append('BOX_ARMOR2_N')
featnames.append('BOX_ARMOR3_N')
featnames.append('BOX_ARMOR4_N')
featnames.append('BOX_ARMOR5_N')
featnames.append('BOX_DROIDARMOR1_N')
featnames.append('BOX_DROIDARMOR2_N')
featnames.append('BOX_DROIDARMOR3_N')
# Items
featnames.append('BOX_SHIELDS1_N')
featnames.append('BOX_SHIELDS2_N')
featnames.append('BOX_STIMS1_N')
featnames.append('BOX_STIMS2_N')
featnames.append('BOX_IMPLANTS1_N')
featnames.append('BOX_IMPLANTS2_N')
featnames.append('BOX_IMPLANTS3_N')
featnames.append('BOX_STLHGEN_N')
featnames.append('BOX_TURRET1_N')
featnames.append('BOX_TURRET2_N')
featnames.append('BOX_TURRET3_N')
# Specialities
featnames.append('BOX_BLASTERSPEC1_N')
featnames.append('BOX_BLASTERSPEC2_N')
featnames.append('BOX_BLASTERSPEC3_N')
featnames.append('BOX_BLASTERSPEC4_N')
featnames.append('BOX_BLASTERSPEC5_N')
featnames.append('BOX_MELEESPEC1_N')
featnames.append('BOX_MELEESPEC2_N')
featnames.append('BOX_MELEESPEC3_N')
featnames.append('BOX_MELEESPEC4_N')
featnames.append('BOX_MELEESPEC5_N')
featnames.append('BOX_SABERSPEC1_N')
featnames.append('BOX_SABERSPEC2_N')
featnames.append('BOX_SABERSPEC3_N')
featnames.append('BOX_SABERSPEC4_N')
featnames.append('BOX_SABERSPEC5_N')
featnames.append('BOX_UNARMEDSPEC1_N')
featnames.append('BOX_UNARMEDSPEC2_N')
featnames.append('BOX_UNARMEDSPEC3_N')
featnames.append('BOX_UNARMEDSPEC4_N')
featnames.append('BOX_UNARMEDSPEC5_N')
featnames.append('BOX_FORCESPEC1_N')
featnames.append('BOX_FORCESPEC2_N')
featnames.append('BOX_FORCESPEC3_N')
featnames.append('BOX_FORCESPEC4_N')
featnames.append('BOX_FORCESPEC5_N')
featnames.append('BOX_ETANK1_N')
featnames.append('BOX_ETANK2_N')
# Abilities
featnames.append('BOX_TWOWEAP1_N')
featnames.append('BOX_TWOWEAP2_N')
featnames.append('BOX_TWOWEAP3_N')
featnames.append('BOX_CONDITION1_N')
featnames.append('BOX_CONDITION2_N')
featnames.append('BOX_CONDITION3_N')
featnames.append('BOX_SNEAKATK1_N')
featnames.append('BOX_SNEAKATK2_N')
featnames.append('BOX_SNEAKATK3_N')
featnames.append('BOX_SNEAKATK4_N')
featnames.append('BOX_SNEAKATK5_N')
featnames.append('BOX_DUALSTR1_N')
featnames.append('BOX_DUALSTR2_N')
featnames.append('BOX_DUALSTR3_N')
featnames.append('BOX_TOUGH1_N')
featnames.append('BOX_TOUGH2_N')
featnames.append('BOX_TOUGH3_N')
featnames.append('BOX_MELEEFINE_N')
featnames.append('BOX_SABERFINE_N')
featnames.append('BOX_DUELING_N')
featnames.append('BOX_CLOSECOM_N')
# Combat
featnames.append('BOX_POWATTACK1_N')
featnames.append('BOX_POWATTACK2_N')
featnames.append('BOX_POWATTACK3_N')
featnames.append('BOX_FLURRY1_N')
featnames.append('BOX_FLURRY2_N')
featnames.append('BOX_FLURRY3_N')
featnames.append('BOX_CRITSTRIKE1_N')
featnames.append('BOX_CRITSTRIKE2_N')
featnames.append('BOX_CRITSTRIKE3_N')
featnames.append('BOX_POWBLAST1_N')
featnames.append('BOX_POWBLAST2_N')
featnames.append('BOX_POWBLAST3_N')
featnames.append('BOX_RAPIDSHOT1_N')
featnames.append('BOX_RAPIDSHOT2_N')
featnames.append('BOX_RAPIDSHOT3_N')
featnames.append('BOX_SNIPSHOT1_N')
featnames.append('BOX_SNIPSHOT2_N')
featnames.append('BOX_SNIPSHOT3_N')
# Jedi
featnames.append('BOX_FORCESENSE_N')
featnames.append('BOX_DEFLECT1_N')
featnames.append('BOX_DEFLECT2_N')
featnames.append('BOX_DEFLECT3_N')
featnames.append('BOX_FORCEJUMP1_N')
featnames.append('BOX_FORCEJUMP2_N')
featnames.append('BOX_FORCEJUMP3_N')
featnames.append('BOX_FORCEIMMUN1_N')
featnames.append('BOX_FORCEIMMUN2_N')
featnames.append('BOX_FORCEIMMUN3_N')
featnames.append('BOX_FORCESTLH_N')
# Skill
featnames.append('BOX_CLSAWARE_N')
featnames.append('BOX_CLSCRAFT_N')
featnames.append('BOX_CLSDEMO_N')
featnames.append('BOX_CLSREPAIR_N')
featnames.append('BOX_CLSSECUR_N')
featnames.append('BOX_CLSSTLH_N')
featnames.append('BOX_CLSMEDIC_N')
featnames.append('BOX_CLSPERSUAD_N')
# Character
featnames.append('BOX_WARVET_N')
featnames.append('BOX_EMPATHY1_N')
featnames.append('BOX_EMPATHY2_N')
featnames.append('BOX_EMPATHY3_N')
featnames.append('BOX_BLASINTGR_N')
featnames.append('BOX_KINETICCOM_N')
featnames.append('BOX_SPIRIT_N')
featnames.append('BOX_SHIELDBRK_N')
featnames.append('BOX_REPULSSTRK_N')
featnames.append('BOX_ECHANISTRK_N')
featnames.append('BOX_HEALER_N')
featnames.append('BOX_MANDCOUR_N')
featnames.append('BOX_IMPLSWITCH_N')
featnames.append('BOX_ASSASSPROT_N')
featnames.append('BOX_POINTGUARD_N')
featnames.append('BOX_WOOKTOUGH_N')
featnames.append('BOX_WOOKRAGE_N')
featnames.append('BOX_PERSCLOAK_N')
featnames.append('BOX_MINEIMMUN_N')
featnames.append('BOX_DROIDSCRAMB_N')



itemcodes = list()
# Generated lines go here
#ITEMCODES


items = list()
# Generated lines go here
#ITEMS



featdescs = list(featnames)
for i in range(0, len(featdescs)):
	featdescs[i] = featdescs[i].replace('_N', '_D')



# TODO: Characters and the feats they have
characters = []
# Feats can be strings or numbers
characters.append(Character('p_t3m4', ['BOX_BLASTERS1', 'BOX_ENERGWEAP1']))
characters.append(Character('p_atton', ['BOX_ARMOR1', 'BOX_ARMOR2', 'BOX_BLASTERS1', 'BOX_BLASTERS2', 'BOX_MELEE1', 'BOX_STLHGEN']))
characters.append(Character('p_kreia', ['BOX_BLASTERS1', 'BOX_MELEE1', 'BOX_SABERS', 'BOX_FORCE1', 'BOX_FORCE2']))
characters.append(Character('p_baodur', ['BOX_ARMOR1', 'BOX_ARMOR2', 'BOX_BLASTERS1', 'BOX_BLASTERS2', 'BOX_MELEE1',
	'BOX_SHIELDS1', 'BOX_SHIELDS2', 'BOX_TURRET1', 'BOX_TURRET2', 'BOX_TURRET3']))
characters.append(Character('p_handmaiden', ['BOX_BLASTERS1', 'BOX_MELEE1', 'BOX_MELEE2']))
characters.append(Character('p_disciple', ['BOX_ARMOR1', 'BOX_ARMOR2', 'BOX_ARMOR3', 'BOX_BLASTERS1', 'BOX_BLASTERS2', 'BOX_BLASTERS3',
	'BOX_MELEE1', 'BOX_MECHWEAP1', 'BOX_MECHWEAP1', 'BOX_SHIELDS1', 'BOX_STIMS1', 'BOX_IMPLANTS1']))
characters.append(Character('p_visas', ['BOX_BLASTERS1', 'BOX_MELEE1', 'BOX_SABERS', 'BOX_FORCE1']))
characters.append(Character('p_mira', ['BOX_ARMOR1', 'BOX_ARMOR2', 'BOX_BLASTERS1', 'BOX_BLASTERS2', 'BOX_MELEE1',
	'BOX_MECHWEAP1', 'BOX_MECHWEAP2', 'BOX_TURRET1']))
characters.append(Character('p_hanharr', ['BOX_BLASTERS1', 'BOX_BLASTERS2', 'BOX_MELEE1', 'BOX_WOOKWEAP']))
characters.append(Character('p_g0t0', ['BOX_DROIDARMOR1', 'BOX_BLASTERS1', 'BOX_ENERGWEAP1', 'BOX_ENERGWEAP2', 'BOX_TURRET1']))
characters.append(Character('p_mand', ['BOX_ARMOR1', 'BOX_ARMOR2', 'BOX_ARMOR3', 'BOX_ARMOR4', 'BOX_BLASTERS1', 'BOX_BLASTERS2',
	'BOX_BLASTERS3', 'BOX_BLASTERS4', 'BOX_MELEE1', 'BOX_MELEE2', 'BOX_IMPLANTS1', 'BOX_IMPLANTS2', 'BOX_IMPLANTS3', 'BOX_STLHGEN']))
characters.append(Character('p_hk47', ['BOX_DROIDARMOR1', 'BOX_BLASTERS1', 'BOX_BLASTERS2', 'BOX_BLASTERS3']))


charactersout = ''
for character in characters:
	charactersout = charactersout + '[' + character.filename + '.utc]\n'
	for i in range(0, len(character.feats)):
		charactersout = charactersout + 'AddField' + str(i) + '=gff_' + character.filename + '_FeatList_' + str(i) + '\n'
	for i in range(0, len(character.feats)):
		charactersout = charactersout + '[gff_' + character.filename + '_FeatList_' + str(i) + ']\n'
		charactersout = charactersout + 'FieldType=Struct\n'
		charactersout = charactersout + 'Path=FeatList\n'
		charactersout = charactersout + 'Label=\n'
		charactersout = charactersout + 'TypeId=1\n'
		charactersout = charactersout + 'AddField0=gff_' + character.filename + '_Feat_' + str(i) + '\n'
		charactersout = charactersout + '[gff_' + character.filename + '_Feat_' + str(i) + ']\n'
		charactersout = charactersout + 'FieldType=Word\n'
		charactersout = charactersout + 'Label=Feat\n'
		charactersout = charactersout + 'Value=' + str(character.feats[i]) + '\n'

index = 1
for feat in featcodes:
	charactersout = charactersout.replace(feat, '2DAMEMORY' + str(index))
	index = index + 1


# This creates the box_inc_force.nss

incout = 'error'
with open('box_inc_force.nss', 'r') as file:
	incout = file.read()
	
	index = 1
	for feat in featcodes:
		incout = incout.replace(feat, '2DAMEMORY' + str(index))
		index = index + 1

with open('tslpatchdata\\box_inc_force.nss', 'w') as file:
	file.write(incout)
	
	

# This creates the changes.ini
	

featout = 'error'
with open('feats.ini', 'r') as file:
	featout = file.read()
	
	index = 0
	for feat in featnames:
		featout = featout.replace(feat, 'StrRef' + str(index))
		index = index + 1
	
	for feat in featdescs:
		featout = featout.replace(feat, 'StrRef' + str(index))
		index = index + 1
	
	index = 1
	for feat in featcodes:
		featout = featout.replace(feat, '2DAMEMORY' + str(index))
		index = index + 1


baseitemsout = 'error'
with open('baseitems.ini', 'r') as file:
	baseitemsout = file.read()
	
	index = 1
	for feat in featcodes:
		baseitemsout = baseitemsout.replace(feat, '2DAMEMORY' + str(index))
		index = index + 1
	
	for item in itemcodes:
		baseitemsout = baseitemsout.replace(item, '2DAMEMORY' + str(index))
		index = index + 1

		
itemsout = ''
for item in items:
	itemsout = itemsout + '[' + item.filename + '.uti]\nBaseItem=' + item.baseitem + '\n'

index = 1
for feat in featcodes:
	itemsout = itemsout.replace(feat, '2DAMEMORY' + str(index))
	index = index + 1

for item in itemcodes:
	itemsout = itemsout.replace(item, '2DAMEMORY' + str(index))
	index = index + 1

	
with open('tslpatchdata\\featitem.ini', 'w') as file:
	
	file.write('; This file was generated by genfile.py\n')
	file.write('\n')
	file.write('[Settings]\n')
	file.write('FileExists=1\n')
	file.write('ConfirmMessage=N/A\n')
	file.write('LogLevel=4\n')
	file.write('InstallerMode=1\n')
	file.write('BackupFiles=0\n')
	file.write('PlaintextLog=1\n')
	file.write('LookupGameFolder=1\n')
	file.write('LookupGameNumber=2\n')
	file.write('SaveProcessedScripts=1\n')
	file.write('\n')
	file.write('[TLKList]\n')
	
	index = 0
	for feat in featnames:
		file.write('StrRef' + str(index) + '=' + str(index) + '\n')
		index = index + 1
	
	for feat in featdescs:
		file.write('StrRef' + str(index) + '=' + str(index) + '\n')
		index = index + 1
	
	
	file.write('\n')
	file.write('[InstallList]\n')
	file.write('\n')
	file.write('[2DAList]\n')
	file.write('Table0=feat.2da\n')
	file.write('Table1=baseitems.2da\n')
	file.write('\n')
	file.write('[GFFList]\n')
	
	index = 0
	for item in items:
		file.write('File' + str(index) + '=' + item.filename + '.uti\n')
		index = index + 1
	
	for character in characters:
		file.write('File' + str(index) + '=' + character.filename + '.utc\n')
		index = index + 1
	
	
	file.write('\n')
	file.write('[CompileList]\n')
	file.write('Replace0=box_inc_force.nss\n')
	file.write('\n')
	file.write('[SSFList]\n')
	file.write('\n')
	
	file.write(featout)
	file.write(baseitemsout)
	
	file.write('\n')
	file.write('\n')
	file.write('\n')
	file.write(itemsout)
	file.write(charactersout)
	
	

