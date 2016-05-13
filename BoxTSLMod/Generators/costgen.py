
class Item:
	def __init__(self, name, cost):
		self.name = name
		self.cost = cost

scale = 1

costs = []
# Generated lines go here
#COST



for cost in costs:
	cost.cost *= scale

header = 'error'
with open('costheader.ini', 'r') as file:
	header = file.read()

with open('tslpatchdata\\costs.ini', 'w') as file:
	
	file.write(header)
	
	for i in range(0, len(costs)):
		file.write('File' + str(i) + '=' + costs[i].name + '.uti\n')
	
	file.write('\n')
	file.write('\n')
	file.write('\n')
	
	for cost in costs:
		file.write('[' + cost.name + '.uti]\n')
		file.write('AddCost=' + str(cost.cost) + '\n')
		file.write('Cost=' + str(cost.cost) + '\n')
		file.write('Tag=' + str(cost.name) + '\n')
		file.write('TemplateResRef=' + str(cost.name) + '\n')