
class Item:
	def __init__(self, tag, name, description, model, upgradelevel, baseitem):
		self.tag = tag
		self.name = name
		self.description = description
		self.model = model
		self.baseitem = baseitem

scale = 1

items = []
# Generated lines go here
#ITEMS



weapons = []
# Generated lines go here
#WEAPONS



header = 'error'
with open('gffheader.ini', 'r') as file:
	header = file.read()

with open('tslpatchdata\\fields.ini', 'w') as file:
	
	file.write(header)
	
	for i in range(0, len(items)):
		file.write('File' + str(i) + '=' + items[i].tag + '.uti\n')
	for i in range(0, len(weapons)):
		file.write('File' + str(i+len(items)) + '=' + weapons[i].tag + '.uti\n')
	
	file.write('\n')
	file.write('\n')
	file.write('\n')
	
	for item in items:
		file.write('[' + item.tag + '.uti]\n')
		file.write('LocalizeName(lang0)=' + str(item.name) + '\n')
		file.write('DescIdentified(lang1)=' + str(item.description) + '\n')
		file.write('ModelVariation=' + str(item.model) + '\n')
		if item.baseitem:
			file.write('BaseItem=' + str(item.baseitem) + '\n')
		if item.upgradelevel:
			file.write('UpgradeLevel=' + str(item.upgradelevel) + '\n')
	
	for weapon in weapons:
		file.write('[' + weapon.tag + '.uti]\n')
		file.write('LocalizeName(lang0)=' + str(weapon.name) + '\n')
		file.write('DescIdentified(lang1)=' + str(weapon.description) + '\n')
		file.write('ModelVariation=' + str(weapon.model) + '\n')
		if item.baseitem:
			file.write('BaseItem=' + str(item.baseitem) + '\n')
		file.write('UpgradeLevel=' + str(weapon.upgradelevel) + '\n')
		file.write('AddField0=gff_' + weapon.tag + '_PropertiesList_1_0\n')
		file.write('[gff_' + weapon.tag + '_PropertiesList_1_0]\n')
		file.write('FieldType=Struct\n')
		file.write('Path=PropertiesList\n')
		file.write('Label=\n')
		file.write('TypeId=0\n')
		file.write('AddField0=gff_' + weapon.tag + '_PropertyName_0\n')
		file.write('AddField1=gff_' + weapon.tag + '_Subtype_0\n')
		file.write('AddField2=gff_' + weapon.tag + '_CostTable_0\n')
		file.write('AddField3=gff_' + weapon.tag + '_CostValue_0\n')
		file.write('AddField4=gff_' + weapon.tag + '_Param1_0\n')
		file.write('AddField5=gff_' + weapon.tag + '_Param1Value_0\n')
		file.write('AddField6=gff_' + weapon.tag + '_ChanceAppear_0\n')
		file.write('[gff_' + weapon.tag + '_PropertyName_0]\n')
		file.write('FieldType=Word\n')
		file.write('Label=PropertyName\n')
		file.write('Value=5\n')
		file.write('[gff_' + weapon.tag + '_Subtype_0]\n')
		file.write('FieldType=Word\n')
		file.write('Label=Subtype\n')
		file.write('Value=0\n')
		file.write('[gff_' + weapon.tag + '_CostTable_0]\n')
		file.write('FieldType=Byte\n')
		file.write('Label=CostTable\n')
		file.write('Value=2\n')
		file.write('[gff_' + weapon.tag + '_CostValue_0]\n')
		file.write('FieldType=Word\n')
		file.write('Label=CostValue\n')
		file.write('Value=2\n')
		file.write('[gff_' + weapon.tag + '_Param1_0]\n')
		file.write('FieldType=Byte\n')
		file.write('Label=Param1\n')
		file.write('Value=255\n')
		file.write('[gff_' + weapon.tag + '_Param1Value_0]\n')
		file.write('FieldType=Byte\n')
		file.write('Label=Param1Value\n')
		file.write('Value=0\n')
		file.write('[gff_' + weapon.tag + '_ChanceAppear_0]\n')
		file.write('FieldType=Byte\n')
		file.write('Label=ChanceAppear\n')
		file.write('Value=100\n')		
		file.write('[gff_' + weapon.tag + '_PropertiesList_1_0]\n')
		file.write('FieldType=Struct\n')
		file.write('Path=PropertiesList\n')
		file.write('Label=\n')
		file.write('TypeId=0\n')
		file.write('AddField0=gff_' + weapon.tag + '_PropertyName_1\n')
		file.write('AddField1=gff_' + weapon.tag + '_Subtype_1\n')
		file.write('AddField2=gff_' + weapon.tag + '_CostTable_1\n')
		file.write('AddField3=gff_' + weapon.tag + '_CostValue_1\n')
		file.write('AddField4=gff_' + weapon.tag + '_Param1_1\n')
		file.write('AddField5=gff_' + weapon.tag + '_Param1Value_1\n')
		file.write('AddField6=gff_' + weapon.tag + '_ChanceAppear_1\n')
		file.write('[gff_' + weapon.tag + '_PropertyName_1]\n')
		file.write('FieldType=Word\n')
		file.write('Label=PropertyName\n')
		file.write('Value=8\n')
		file.write('[gff_' + weapon.tag + '_Subtype_1]\n')
		file.write('FieldType=Word\n')
		file.write('Label=Subtype\n')
		file.write('Value=0\n')
		file.write('[gff_' + weapon.tag + '_CostTable_1]\n')
		file.write('FieldType=Byte\n')
		file.write('Label=CostTable\n')
		file.write('Value=20\n')
		file.write('[gff_' + weapon.tag + '_CostValue_1]\n')
		file.write('FieldType=Word\n')
		file.write('Label=CostValue\n')
		file.write('Value=2\n')
		file.write('[gff_' + weapon.tag + '_Param1_1]\n')
		file.write('FieldType=Byte\n')
		file.write('Label=Param1\n')
		file.write('Value=255\n')
		file.write('[gff_' + weapon.tag + '_Param1Value_1]\n')
		file.write('FieldType=Byte\n')
		file.write('Label=Param1Value\n')
		file.write('Value=0\n')
		file.write('[gff_' + weapon.tag + '_ChanceAppear_1]\n')
		file.write('FieldType=Byte\n')
		file.write('Label=ChanceAppear\n')
		file.write('Value=100\n')
