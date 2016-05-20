

class Armor:
	def __init__(self, name, bludgeoning, piercing, slashing, unstoppable, universal, cold, lightside, electrical, fire, darkside, sonic, ion, energy):
		self.name = name
		self.bludgeoning = bludgeoning
		self.piercing = piercing
		self.slashing = slashing
		self.unstoppable = unstoppable
		self.universal = universal
		self.cold = cold
		self.lightside = lightside
		self.electrical = electrical
		self.fire = fire
		self.darkside = darkside
		self.sonic = sonic
		self.ion = ion
		self.energy = energy
	
	@classmethod
	def new_armor(cls, name, physical, energy, cold, sonic):
		return cls(name, physical, physical, physical, 0, 0, cold, 0, energy, energy, 0, sonic, energy, energy)


def write_header(file, armor_list):
	file.write('; This file was generated by createarmor.py\n')
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
	file.write('SaveProcessedScripts=0\n')
	file.write('\n')
	file.write('[TLKList]\n')
	file.write('\n')
	file.write('[InstallList]\n')
	file.write('\n')
	file.write('[2DAList]\n')
	file.write('Table0=iprp_resistcost.2da\n')
	file.write('\n')
	file.write('[GFFList]\n')
	for i in range(1, len(armor_list)):
		file.write('File')
		file.write(str(i))
		file.write('=')
		file.write(armor_list[i-1].name)
		file.write('.uti\n')
	file.write('\n')
	file.write('[CompileList]\n')
	file.write('\n')
	file.write('[SSFList]\n')
	file.write('\n')

def write_iprpresistcost(file):
	file.write('[iprp_resistcost.2da]\n')
	file.write('AddRow0=iprp_resistcost_row_dt_1_0\n')
	file.write('AddRow1=iprp_resistcost_row_dt_2_0\n')
	file.write('AddRow2=iprp_resistcost_row_dt_3_0\n')
	file.write('AddRow3=iprp_resistcost_row_dt_4_0\n')
	file.write('AddRow4=iprp_resistcost_row_dt_5_0\n')
	file.write('AddRow5=iprp_resistcost_row_dt_6_0\n')
	file.write('AddRow6=iprp_resistcost_row_dt_7_0\n')
	file.write('AddRow7=iprp_resistcost_row_dt_8_0\n')
	file.write('AddRow8=iprp_resistcost_row_dt_9_0\n')
	file.write('AddRow9=iprp_resistcost_row_dt_10_0\n')
	file.write('[iprp_resistcost_row_dt_1_0]\n')
	file.write('label=DT 1\n')
	file.write('amount=1\n')
	file.write('cost=0.15\n')
	file.write('2DAMEMORY1=RowIndex\n')
	file.write('[iprp_resistcost_row_dt_2_0]\n')
	file.write('label=DT 2\n')
	file.write('amount=2\n')
	file.write('cost=0.3\n')
	file.write('2DAMEMORY2=RowIndex\n')
	file.write('[iprp_resistcost_row_dt_3_0]\n')
	file.write('label=DT 3\n')
	file.write('amount=3\n')
	file.write('cost=0.45\n')
	file.write('2DAMEMORY3=RowIndex\n')
	file.write('[iprp_resistcost_row_dt_4_0]\n')
	file.write('label=DT 4\n')
	file.write('amount=4\n')
	file.write('cost=0.6\n')
	file.write('2DAMEMORY4=RowIndex\n')
	file.write('[iprp_resistcost_row_dt_5_0]\n')
	file.write('label=DT 5\n')
	file.write('amount=5\n')
	file.write('cost=0.75\n')
	file.write('2DAMEMORY5=RowIndex\n')
	file.write('[iprp_resistcost_row_dt_6_0]\n')
	file.write('label=DT 6\n')
	file.write('amount=6\n')
	file.write('cost=0.9\n')
	file.write('2DAMEMORY6=RowIndex\n')
	file.write('[iprp_resistcost_row_dt_7_0]\n')
	file.write('label=DT 7\n')
	file.write('amount=7\n')
	file.write('cost=1.05\n')
	file.write('2DAMEMORY7=RowIndex\n')
	file.write('[iprp_resistcost_row_dt_8_0]\n')
	file.write('label=DT 8\n')
	file.write('amount=8\n')
	file.write('cost=1.2\n')
	file.write('2DAMEMORY8=RowIndex\n')
	file.write('[iprp_resistcost_row_dt_9_0]\n')
	file.write('label=DT 9\n')
	file.write('amount=9\n')
	file.write('cost=1.35\n')
	file.write('2DAMEMORY9=RowIndex\n')
	file.write('[iprp_resistcost_row_dt_10_0]\n')
	file.write('label=DT 10\n')
	file.write('amount=10\n')
	file.write('cost=1.5\n')
	file.write('2DAMEMORY10=RowIndex\n')
	file.write('\n')

def write_property(file, name, index, subtype, resistance):
	file.write('[gff_' + name + '_PropertiesList_' + str(index+1) + '_0]\n')
	file.write('FieldType=Struct\n')
	file.write('Path=PropertiesList\n')
	file.write('Label=\n')
	file.write('TypeId=0\n')
	file.write('AddField0=gff_' + name + '_PropertyName_' + str(index) + '\n')
	file.write('AddField1=gff_' + name + '_Subtype_' + str(index) + '\n')
	file.write('AddField2=gff_' + name + '_CostTable_' + str(index) + '\n')
	file.write('AddField3=gff_' + name + '_CostValue_' + str(index) + '\n')
	file.write('AddField4=gff_' + name + '_Param1_' + str(index) + '\n')
	file.write('AddField5=gff_' + name + '_Param1Value_' + str(index) + '\n')
	file.write('AddField6=gff_' + name + '_ChanceAppear_' + str(index) + '\n')
	file.write('[gff_' + name + '_PropertyName_' + str(index) + ']\n')
	file.write('FieldType=Word\n')
	file.write('Label=PropertyName\n')
	file.write('Value=17\n')
	file.write('[gff_' + name + '_Subtype_' + str(index) + ']\n')
	file.write('FieldType=Word\n')
	file.write('Label=Subtype\n')
	file.write('Value=' + str(subtype) + '\n')
	file.write('[gff_' + name + '_CostTable_' + str(index) + ']\n')
	file.write('FieldType=Byte\n')
	file.write('Label=CostTable\n')
	file.write('Value=7\n')
	file.write('[gff_' + name + '_CostValue_' + str(index) + ']\n')
	file.write('FieldType=Word\n')
	file.write('Label=CostValue\n')
	file.write('Value=2DAMEMORY' + str(resistance) + '\n')
	file.write('[gff_' + name + '_Param1_' + str(index) + ']\n')
	file.write('FieldType=Byte\n')
	file.write('Label=Param1\n')
	file.write('Value=255\n')
	file.write('[gff_' + name + '_Param1Value_' + str(index) + ']\n')
	file.write('FieldType=Byte\n')
	file.write('Label=Param1Value\n')
	file.write('Value=0\n')
	file.write('[gff_' + name + '_ChanceAppear_' + str(index) + ']\n')
	file.write('FieldType=Byte\n')
	file.write('Label=ChanceAppear\n')
	file.write('Value=100\n')

def write_armor(file, armor):
	
	file.write('[' + armor.name + '.uti]\n')
	
	propertycount = 0
	if armor.bludgeoning > 0:
		propertycount = propertycount + 1
	if armor.piercing > 0:
		propertycount = propertycount + 1
	if armor.slashing > 0:
		propertycount = propertycount + 1
	if armor.unstoppable > 0:
		propertycount = propertycount + 1
	if armor.universal > 0:
		propertycount = propertycount + 1
	if armor.cold > 0:
		propertycount = propertycount + 1
	if armor.lightside > 0:
		propertycount = propertycount + 1
	if armor.electrical > 0:
		propertycount = propertycount + 1
	if armor.fire > 0:
		propertycount = propertycount + 1
	if armor.darkside > 0:
		propertycount = propertycount + 1
	if armor.sonic > 0:
		propertycount = propertycount + 1
	if armor.ion > 0:
		propertycount = propertycount + 1
	if armor.energy > 0:
		propertycount = propertycount + 1
	
	for i in range(0, propertycount):
		file.write('AddField' + str(i) + '=gff_' + armor.name + '_PropertiesList_' + str(i+1) + '_0\n')
	
	index = 0
	if armor.bludgeoning > 0:
		write_property(file, armor.name, index, 0, armor.bludgeoning)
		index = index + 1
	if armor.piercing > 0:
		write_property(file, armor.name, index, 1, armor.piercing)
		index = index + 1
	if armor.slashing > 0:
		write_property(file, armor.name, index, 2, armor.slashing)
		index = index + 1
	if armor.unstoppable > 0:
		write_property(file, armor.name, index, 3, armor.unstoppable)
		index = index + 1
	if armor.universal > 0:
		write_property(file, armor.name, index, 4, armor.universal)
		index = index + 1
	if armor.cold > 0:
		write_property(file, armor.name, index, 5, armor.cold)
		index = index + 1
	if armor.lightside > 0:
		write_property(file, armor.name, index, 6, armor.lightside)
		index = index + 1
	if armor.electrical > 0:
		write_property(file, armor.name, index, 7, armor.electrical)
		index = index + 1
	if armor.fire > 0:
		write_property(file, armor.name, index, 8, armor.fire)
		index = index + 1
	if armor.darkside > 0:
		write_property(file, armor.name, index, 9, armor.darkside)
		index = index + 1
	if armor.sonic > 0:
		write_property(file, armor.name, index, 10, armor.sonic)
		index = index + 1
	if armor.ion > 0:
		write_property(file, armor.name, index, 11, armor.ion)
		index = index + 1
	if armor.energy > 0:
		write_property(file, armor.name, index, 12, armor.energy)
		index = index + 1



armor_list = list()
# Generated lines go here
#ARMOR



with open('tslpatchdata\\armor.ini', 'w') as file:
	write_header(file, armor_list)
	write_iprpresistcost(file)
	for armor in armor_list:
		write_armor(file, armor)