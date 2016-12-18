
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

modules = []
modules.append('101PER')
modules.append('102PER')
modules.append('103PER')
modules.append('104PER')
modules.append('105PER')
modules.append('106PER')
modules.append('107PER')

enemies = []
# 101PER
enemies.append(Enemy('101PER', 'g_assassindrd002', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('101PER', 'g_assassindrd003', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('101PER', 'g_assassindrd004', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('101PER', 'g_assassindrd005', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('101PER', 'g_floatingmin002', 'box_spawn_per', 10, 10, 10, 10, 10, 10, None, 0, 0, 0))
enemies.append(Enemy('101PER', 'n_sithsoldier001', 'box_spawn_per', 12, 12, 12, 10, 12, 10, None, 0, 0, 0))
enemies.append(Enemy('101PER', 'p_hk048', 'box_spawn_per', 14, 14, 14, 14, 10, 10, None, 0, 0, 0))
# 102PER
enemies.append(Enemy('102PER', 'g_assassindrd002', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('102PER', 'g_assassindrd003', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('102PER', 'g_assassindrd004', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('102PER', 'g_assassindrd005', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('102PER', 'g_assassindrd006', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('102PER', 'g_assassindrd007', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('102PER', 'g_assassindrd008', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('102PER', 'g_assassindrd009', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('102PER', 'g_assassindrd010', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
# 103PER
enemies.append(Enemy('103PER', 'g_assassindrd002', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('103PER', 'g_assassindrd003', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('103PER', 'g_assassindrd004', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('103PER', 'g_assassindrd005', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('103PER', 'g_assassindrd006', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('103PER', 'g_assassindrd009', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('103PER', 'g_droid_mine_003', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('103PER', 'g_droid_mine_004', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('103PER', 'g_droid_mine_005', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('103PER', 'g_droid_mine_006', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('103PER', 'g_floatingmin001', 'box_spawn_per', 10, 10, 10, 10, 10, 10, None, 0, 0, 0))
# 104PER
# 105PER
enemies.append(Enemy('105PER', 'g_assassindrd002', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('105PER', 'g_assassindrd003', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('105PER', 'g_assassindrd004', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('105PER', 'g_assassindrd005', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('105PER', 'g_assassindrd006', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('105PER', 'g_assassindrd007', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('105PER', 'g_assassindrd009', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('105PER', 'g_droid_mine_003', 'box_spawn_per', 12, 12, 12, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('105PER', 'g_turretbl010', 'box_spawn_per', 10, 14, 10, 6, 6, 6, None, 0, 0, 0))
# 106PER
enemies.append(Enemy('106PER', 'g_assassindrd002', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('106PER', 'g_assassindrd003', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('106PER', 'g_assassindrd004', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('106PER', 'g_assassindrd005', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('106PER', 'g_assassindrd006', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('106PER', 'g_assassindrd007', 'box_spawn_per', 10, 10, 10, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('106PER', 'g_droid_mine_024', 'box_spawn_per', 12, 12, 12, 8, 8, 8, None, 0, 0, 0))
enemies.append(Enemy('106PER', 'g_droid_mine_025', 'box_spawn_per', 12, 12, 12, 8, 8, 8, None, 0, 0, 0))
# 107PER
# 151HAR
enemies.append(Enemy('151HAR', 'n_sithsoldier001', 'box_spn_sass', 12, 12, 12, 10, 12, 10, None, 0, 0, 0))
# 152HAR
enemies.append(Enemy('152HAR', 'n_sithsoldier001', 'box_spn_sass', 12, 12, 12, 10, 12, 10, None, 0, 0, 0))
# 153HAR
enemies.append(Enemy('153HAR', 'n_sithsoldier001', 'box_spn_sass', 12, 12, 12, 10, 12, 10, None, 0, 0, 0))
# 154HAR
enemies.append(Enemy('154HAR', 'n_sithsoldier001', 'box_spn_sass', 12, 12, 12, 10, 12, 10, None, 0, 0, 0))
# 201TEL
# Need to figure out which characters are actually enemies



placeables = []
# 101PER
placeables.append(Placeable('101PER', 'g_trescivil003', 'box_treas_per', None, None, None))
placeables.append(Placeable('101PER', 'g_trescivil004', '', 'box_treas_per', None, None))
placeables.append(Placeable('101PER', 'g_tresgencorp004', 'box_treas_per', None, None, None))
placeables.append(Placeable('101PER', 'g_tresgencorp005', 'box_treas_per', None, None, None))
placeables.append(Placeable('101PER', 'g_tresgencorp006', 'box_treas_per', None, None, None))
placeables.append(Placeable('101PER', 'g_tresgencorp007', 'box_treas_per', None, None, None))
placeables.append(Placeable('101PER', 'g_tresgencorp008', 'box_treas_per', None, None, None))
placeables.append(Placeable('101PER', 'g_tresmilhig006', 'box_treas_per', None, None, None))
placeables.append(Placeable('101PER', 'g_tresmillow006', 'box_treas_per', None, None, None))
placeables.append(Placeable('101PER', 'g_tresmillow007', 'box_treas_per', None, None, None))
placeables.append(Placeable('101PER', 'g_tresmillow008', 'box_treas_per', None, None, None))
placeables.append(Placeable('101PER', 'g_tresmillow009', 'box_treas_per', None, None, None))
placeables.append(Placeable('101PER', 'g_tresmillow010', 'box_treas_per', None, None, None))
placeables.append(Placeable('101PER', 'g_tresmillow011', 'box_treas_per', None, None, None))
placeables.append(Placeable('101PER', 'lockerlg001', 'box_treas_per', None, None, None))
placeables.append(Placeable('101PER', 'lockerlg002', '', 'box_treas_per', None, None))
placeables.append(Placeable('101PER', 'lockerlg003', 'box_treas_per', None, None, None))
# 102PER
placeables.append(Placeable('102PER', 'g_tresdrd004', 'box_treas_per', None, None, None))
placeables.append(Placeable('102PER', 'g_tresdrd005', 'box_treas_per', None, None, None))
placeables.append(Placeable('102PER', 'g_tresdrd006', 'box_treas_per', None, None, None))
placeables.append(Placeable('102PER', 'g_tresdrd007', 'box_treas_per', None, None, None))
placeables.append(Placeable('102PER', 'g_tresgencorp004', 'box_treas_per', None, None, None))
placeables.append(Placeable('102PER', 'g_tresgencorp005', 'box_treas_per', None, None, None))
placeables.append(Placeable('102PER', 'g_tresgencorp006', 'box_treas_per', None, None, None))
placeables.append(Placeable('102PER', 'g_tresgencorp007', 'box_treas_per', None, None, None))
placeables.append(Placeable('102PER', 'g_tresgencorp008', 'box_treas_per', None, None, None))
placeables.append(Placeable('102PER', 'g_tresgencorp009', 'box_treas_per', None, None, None))
placeables.append(Placeable('102PER', 'g_tresgencorp010', 'box_treas_per', None, None, None))
placeables.append(Placeable('102PER', 'g_tresmilhig006', 'box_treas_per', None, None, None))
placeables.append(Placeable('102PER', 'g_tresmillow007', 'box_treas_per', None, None, None))
placeables.append(Placeable('102PER', 'g_tresmillow008', '', 'box_treas_per', None, None))
placeables.append(Placeable('102PER', 'g_tresmillow009', 'box_treas_per', None, None, None))
# 103PER
placeables.append(Placeable('103PER', 'g_tresdrd005', 'box_treas_per', None, None, None))
placeables.append(Placeable('103PER', 'g_tresdrd006', 'box_treas_per', None, None, None))
placeables.append(Placeable('103PER', 'g_tresdrd007', 'box_treas_per', None, None, None))
placeables.append(Placeable('103PER', 'g_tresdrd008', 'box_treas_per', None, None, None))
placeables.append(Placeable('103PER', 'g_tresgencorp004', 'box_treas_per', None, None, None))
placeables.append(Placeable('103PER', 'g_tresgencorp005', 'box_treas_per', None, None, None))
placeables.append(Placeable('103PER', 'g_tresgencorp006', 'box_treas_per', None, None, None))
placeables.append(Placeable('103PER', 'g_tresmilhig006', 'box_treas_per', None, None, None))
placeables.append(Placeable('103PER', 'g_tresmilhig007', 'box_treas_per', None, None, None))
placeables.append(Placeable('103PER', 'g_tresmilhig008', 'box_treas_per', None, None, None))
placeables.append(Placeable('103PER', 'g_tresmillow006', 'box_treas_per', None, None, None))
placeables.append(Placeable('103PER', 'g_tresmillow007', 'box_treas_per', None, None, None))
placeables.append(Placeable('103PER', 'lockerlg001', 'box_treas_per', None, None, None))
# 105PER
placeables.append(Placeable('105PER', 'g_trescivil003', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_trescivil004', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_trescivil005', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresdrd004', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresgencorp004', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresgencorp005', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresgencorp006', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresgencorp007', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresgencorp008', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresgencorp009', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresgencorp010', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresgencorp011', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresgencorp012', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresgencorp013', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresmilhig006', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresmilhig007', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresmilhig008', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresmilhig009', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresmillow006', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresmillow007', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresmillow008', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresmillow009', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresmillow010', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresmillow011', '', 'box_treas_per', None, None))
placeables.append(Placeable('105PER', 'g_tresmillow012', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresmillow013', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresmilmid006', 'box_treas_per', None, None, None))
placeables.append(Placeable('105PER', 'g_tresmilmid007', 'box_treas_per', None, None, None))
# 106PER
placeables.append(Placeable('106PER', 'g_tresdrd004', 'box_treas_per', None, None, None))
placeables.append(Placeable('106PER', 'g_tresdrd005', 'box_treas_per', None, None, None))
placeables.append(Placeable('106PER', 'g_tresmilhig006', 'box_treas_per', None, None, None))
placeables.append(Placeable('106PER', 'g_tresmilhig007', 'box_treas_per', None, None, None))
placeables.append(Placeable('106PER', 'g_tresmilhig008', 'box_treas_per', None, None, None))
placeables.append(Placeable('106PER', 'g_tresmillow006', 'box_treas_per', None, None, None))
placeables.append(Placeable('106PER', 'g_tresmillow007', 'box_treas_per', None, None, None))
placeables.append(Placeable('106PER', 'g_tresmillow008', 'box_treas_per', None, None, None))
placeables.append(Placeable('106PER', 'g_tresmillow009', 'box_treas_per', None, None, None))
placeables.append(Placeable('106PER', 'g_tresmillow010', '', 'box_treas_per', None, None))
placeables.append(Placeable('106PER', 'g_tresmillow011', 'box_treas_per', None, None, None))
placeables.append(Placeable('106PER', 'g_tresmillow012', 'box_treas_per', None, None, None))
placeables.append(Placeable('106PER', 'g_tresmillow013', 'box_treas_per', None, None, None))
placeables.append(Placeable('106PER', 'g_tresmillow014', 'box_treas_per', None, None, None))
placeables.append(Placeable('106PER', 'g_tresmillow015', 'box_treas_per', None, None, None))
placeables.append(Placeable('106PER', 'g_tresmillow016', '', 'box_treas_per', None, None))
placeables.append(Placeable('106PER', 'g_tresmillow017', 'box_treas_per', None, None, None))


header = 'error'
with open('moduleheader.ini', 'r') as file:
	header = file.read()


for module in modules:

	menemies = filter(lambda e: e.module == module, enemies)
	mplaceables = filter(lambda p: p.module == module, placeables)
	menemies2 = filter(lambda e: e.module == module, enemies)
	mplaceables2 = filter(lambda p: p.module == module, placeables)
	
	
	with open('tslpatchdata\\' + module + '.ini', 'w') as file:
		
		file.write(header)
		
		index = 0
		for enemy in menemies:
			file.write('File' + str(index) + '=' + enemy.filename + '\n')
			index = index + 1
			
		for placeable in mplaceables:
			file.write('File' + str(index) + '=' + placeable.filename + '\n')
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
	
	

