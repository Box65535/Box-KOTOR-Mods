
class Item:
	def __init__(self, filename, baseitem):
		self.filename = filename
		self.baseitem = baseitem

class Character:
	def __init__(self, filename, feats):
		self.filename = filename
		self.feats = feats

featcodes = list()
# Generated lines go here
#FEATCODES

featnames = list()
# Generated lines go here
#FEATNAMES


itemcodes = list()
# Generated lines go here
#ITEMCODES


items = list()
# Generated lines go here
#ITEMS


itemreqs = list()
# Generated lines go here
#REQS

itembonuses = list()
# Generated lines go here
#BONUSES


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


# This creates the box_inc_featconst.nss

incout = 'error'
with open('box_inc_featconst.nss', 'r') as file:
	incout = file.read()
	
	index = 1
	for feat in featcodes:
		incout = incout.replace('CODE_' + feat, '2DAMEMORY' + str(index))
		index = index + 1
	
	for item in itemcodes:
		baseitemsout = baseitemsout.replace('CODE_' + item, '2DAMEMORY' + str(index))
		index = index + 1
	

with open('tslpatchdata\\box_inc_featconst.nss', 'w') as file:
	file.write(incout)
	
	

# This creates the changes.ini
	

featout = 'error'
with open('feats.ini', 'r') as file:
	featout = file.read()
	
	index = 0
	for i in range(0, len(featnames)):
		featout = featout.replace(featnames[i], 'StrRef' + str(index))
		featout = featout.replace(featdescs[i], 'StrRef' + str(index+1))
		index = index + 2
	
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
	file.write('Replace0=box_inc_featconst.nss\n')
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
	
	

