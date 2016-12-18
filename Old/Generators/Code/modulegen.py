
class Enemy:
	def __init__(self, module, tag, spawn, str, con, dex, int, wis, chr, notag, fort, reflex, will):
		self.module = module
		self.tag = tag
		self.filename = tag + '.utc'
		self.alias = module + tag
		self.spawn = spawn
		self.str = str
		self.con = con
		self.dex = dex
		self.int = int
		self.wis = wis
		self.chr = chr
		self.fort = fort
		self.reflex = reflex
		self.will = will
		self.notag = notag

class Placeable:
	def __init__(self, module, tag, heartbeat, unlock, bash, notag):
		self.module = module
		self.tag = tag
		self.filename = tag + '.utp'
		self.alias = module + tag
		self.heartbeat = heartbeat
		self.unlock = unlock
		self.bash = bash
		self.notag = notag

class Merchant:
	def __init__(self, module, tag, script, buysell, markup, markdown):
		self.module = module
		self.tag = tag
		self.filename = tag + '.utm'
		self.script = script
		self.buysell = buysell
		self.markup = markup
		self.markdown = markdown
		
modules = []
# Generated lines go here
#MODULES


enemies = []
# Generated lines go here
#ENEMIES


placeables = []
# Generated lines go here
#PLACEABLES


merchants = []
# Generated lines go here
#MERCHANTS



header = 'error'
with open('moduleheader.ini', 'r') as file:
	header = file.read()


for module in modules:

	menemies = filter(lambda e: e.module == module, enemies)
	mplaceables = filter(lambda p: p.module == module, placeables)
	mmerchants = filter(lambda p: p.module == module, merchants)
	menemies2 = filter(lambda e: e.module == module, enemies)
	mplaceables2 = filter(lambda p: p.module == module, placeables)
	mmerchants2 = filter(lambda p: p.module == module, merchants)
	
	
	with open('tslpatchdata\\' + module + '.ini', 'w') as file:
		
		file.write(header)
		
		index = 0
		for enemy in menemies:
			file.write('File' + str(index) + '=' + enemy.filename + '\n')
			index = index + 1
			
		for placeable in mplaceables:
			file.write('File' + str(index) + '=' + placeable.filename + '\n')
			index = index + 1
		
		for merchant in mmerchants:
			file.write('File' + str(index) + '=' + merchant.filename + '\n')
			index = index + 1
		
		for enemy in menemies2:
			file.write('[' + enemy.filename + ']\n')
			file.write('ScriptSpawn=' + enemy.spawn + '\n')
			file.write('Str=' + str(enemy.str) + '\n')
			file.write('Con=' + str(enemy.con) + '\n')
			file.write('Dex=' + str(enemy.dex) + '\n')
			file.write('Int=' + str(enemy.int) + '\n')
			file.write('Wis=' + str(enemy.wis) + '\n')
			file.write('Cha=' + str(enemy.chr) + '\n')
			file.write('fortbonus=' + str(enemy.fort) + '\n')
			file.write('refbonus=' + str(enemy.reflex) + '\n')
			file.write('willbonus=' + str(enemy.will) + '\n')
			if not enemy.notag:
				file.write('Tag=' + enemy.tag + '\n')
			file.write('!Destination=Modules\\' + module + '.mod\n')
		
		for placeable in mplaceables2:
			file.write('[' + placeable.filename + ']\n')
			if placeable.heartbeat:
				file.write('OnHeartbeat=' + placeable.heartbeat + '\n')
			if placeable.unlock:
				file.write('OnUnlock=' + placeable.unlock + '\n')
			if placeable.bash:
				file.write('OnDamaged=' + placeable.bash + '\n')
			if not placeable.notag:
				file.write('Tag=' + placeable.tag + '\n')
			file.write('!Destination=Modules\\' + module + '.mod\n')
		
		for merchant in mmerchants2:
			file.write('[' + merchant.filename + ']\n')
			if merchant.script:
				file.write('OnOpenStore=' + merchant.script + '\n')
			if merchant.buysell:
				file.write('BuySellFlag=' + merchant.buysell + '\n')
			if merchant.markdown:
				file.write('MarkDown=' + merchant.markdown + '\n')
			if merchant.markup:
				file.write('MarkUp=' + merchant.markup + '\n')
			file.write('!Destination=Modules\\' + module + '.mod\n')
	

