
import os

filenames = os.listdir('.\\Overwrites')

header = ''
with open('overwriteheader.ini', 'r') as file:
	header = file.read()

with open('tslpatchdata\\overwrites.ini', 'w') as file:
	file.write(header)
	
	index = 0
	for name in filenames:
		file.write('Replace' + str(index) + '=' + name + '\n')
		index = index + 1