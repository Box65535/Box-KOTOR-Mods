import shutil

class Script:
	def __init__(self, source, filename, description, spellname, radius, spellshape, castdc,
			minelevel, functioncall, locationfunction, visualfunction, includemodule,
			childscript, stacksize, itemtag, poweralignment):
		self.source = source
		self.filename = filename
		self.description = description
		self.spellname = spellname
		self.radius = radius
		self.spellshape = spellshape
		self.castdc = castdc
		self.minelevel = minelevel
		self.functioncall = functioncall
		self.locationfunction = locationfunction
		self.visualfunction = visualfunction
		self.includemodule = includemodule
		self.childscript = childscript
		self.stacksize = stacksize
		self.itemtag = itemtag
		self.poweralignment = poweralignment
	
	@classmethod
	def new_forcebuff(cls, filename, castdc, functioncall, visualfunction, poweralignment):
		return cls('forcebuff', filename, 'Auto-generated Script', None, None, None, castdc,
			None, functioncall, None, visualfunction, None,
			None, None, None, poweralignment)
	
	@classmethod
	def new_forceteambuff(cls, filename, castdc, functioncall, visualfunction, poweralignment):
		return cls('forceteambuff', filename, 'Auto-generated Script', None, None, None, castdc,
			None, functioncall, None, visualfunction, None,
			None, None, None, poweralignment)
	
	@classmethod
	def new_forceattack(cls, filename, spellname, castdc, functioncall, visualfunction, poweralignment):
		return cls('forceattack', filename, 'Auto-generated Script', spellname, None, None, castdc,
			None, functioncall, None, visualfunction, None,
			None, None, None, poweralignment)
	
	@classmethod
	def new_forceaoeattack(cls, filename, spellname, radius, spellshape,
			castdc, functioncall, locationfunction, visualfunction, poweralignment):
		return cls('forceaoeattack', filename, 'Auto-generated Script', spellname, radius, spellshape, castdc,
			None, functioncall, locationfunction, visualfunction, None,
			None, None, None, poweralignment)
	
	@classmethod
	def new_grenade(cls, filename, radius, functioncall, visualfunction):
		return cls('grenade', filename, 'Auto-generated Script', None, radius, None, None,
			None, functioncall, None, visualfunction, None,
			None, None, None, None)
	
	@classmethod
	def new_beam(cls, filename, functioncall, visualfunction):
		return cls('beam', filename, 'Auto-generated Script', None, None, None, None,
			None, functioncall, None, visualfunction, None,
			None, None, None, None)
	
	@classmethod
	def new_wave(cls, filename, functioncall, visualfunction):
		return cls('wave', filename, 'Auto-generated Script', None, None, None, None,
			None, functioncall, None, visualfunction, None,
			None, None, None, None)
	
	@classmethod
	def new_mine(cls, filename, minelevel, functioncall, visualfunction):
		return cls('mine', filename, 'Auto-generated Script', None, None, None, None,
			minelevel, functioncall, None, visualfunction, None,
			None, None, None, None)
	
	@classmethod
	def new_ammo(cls, filename, stacksize, itemtag):
		return cls('ammo', filename, 'Auto-generated Script', None, None, None, None,
			None, None, None, None, None,
			None, stacksize, itemtag, None)
	
	@classmethod
	def new_spawn(cls, filename, functioncall, includemodule, childscript):
		return cls('spawn', filename, 'Auto-generated Script', None, None, None, None,
			None, None, None, None, includemodule,
			childscript, None, None, None)
	
	@classmethod
	def new_treasure(cls, filename, functioncall, includemodule):
		return cls('treasure', filename, 'Auto-generated Script', None, None, None, None,
			None, functioncall, None, None, includemodule,
			None, None, None, None)
	


scripts = []

# 6, 9, 12, 15, 18, 21, 24, 26, 28

scripts.append(Script.new_forcebuff('box_forcespeed', '6', 'Box_SpeedPower', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forcebuff('box_forcevalor', '6', 'Box_ValorPower', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))
scripts.append(Script.new_forcebuff('box_forcefury', '6', 'Box_FuryPower', 'Box_NoVisual', 'POWER_TYPE_DARK'))
scripts.append(Script.new_forcebuff('box_forcebody', '12', 'Box_BodyPower', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))
scripts.append(Script.new_forcebuff('box_forceagility', '18', 'Box_AgilityPower', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forcebuff('box_forceenlight', '24', 'Box_EnlightenPower', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))

scripts.append(Script.new_forceteambuff('box_battlemed', '18', 'Box_MeditationPower', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forceteambuff('box_mastermed', '26', 'Box_MasterMeditationPower', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))

scripts.append(Script.new_forceattack('box_forcesweep', 'Force Sweep', '9', 'Box_SweepPower', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forceattack('box_forceionize', 'Force Ionize', '9', 'Box_IonizePower', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forceattack('box_forcesleep', 'Force Sleep', '9', 'Box_SleepPower', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))
scripts.append(Script.new_forceattack('box_forceafflict', 'Force Afflict', '9', 'Box_AfflictPower', 'Box_NoVisual', 'POWER_TYPE_DARK'))
scripts.append(Script.new_forceattack('box_throwsaber', 'Throw Lightsaber', '12', 'Box_ThrowLightsaberPower', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forceattack('box_forcelevitate', 'Force Levitate', '12', 'Box_LevitatePower', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))
scripts.append(Script.new_forceattack('box_forcefear', 'Force Fear', '12', 'Box_FearPower', 'Box_NoVisual', 'POWER_TYPE_DARK'))
scripts.append(Script.new_forceattack('box_forcepush', 'Force Push', '15', 'Box_PushPower', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forceattack('box_forceblind', 'Force Blind', '15', 'Box_BlindPower', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forceattack('box_forcesuppress', 'Force Suppress', '15', 'Box_SuppressPower', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))
scripts.append(Script.new_forceattack('box_forcechoke', 'Force Choke', '15', 'Box_ChokePower', 'Box_NoVisual', 'POWER_TYPE_DARK'))
scripts.append(Script.new_forceattack('box_forceparalysis', 'Force Paralysis', '18', 'Box_ParalysisPower', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))
scripts.append(Script.new_forceattack('box_forcedrain', 'Force Drain', '18', 'Box_DrainPower', 'Box_NoVisual', 'POWER_TYPE_DARK'))
scripts.append(Script.new_forceattack('box_forceconfusion', 'Force Confusion', '21', 'Box_ConfusionPower', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forceattack('box_forcelight', 'Force Light', '21', 'Box_LightPower', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))
scripts.append(Script.new_forceattack('box_forcelightning', 'Force Lightning', '21', 'Box_LightningPower', 'Box_NoVisual', 'POWER_TYPE_DARK'))

scripts.append(Script.new_forceaoeattack('box_forcequake', 'Force Quake', 10.0, 'SHAPE_SPHERE', '18', 'Box_SweepPower', 'GetLocation(OBJECT_SELF)', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forceaoeattack('box_ionstorm', 'Ion Storm', 6.0, 'SHAPE_SPHERE', '18', 'Box_IonizePower', 'GetSpellTargetLocation()', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forceaoeattack('box_sleepwave', 'Sleep Wave', 6.0, 'SHAPE_SPHERE', '18', 'Box_SleepPower', 'GetSpellTargetLocation()', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))
scripts.append(Script.new_forceaoeattack('box_masslevitate', 'Mass Levitation', 10.0, 'SHAPE_SPHERE', '21', 'Box_LevitationPower', 'GetLocation(OBJECT_SELF)', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forceaoeattack('box_forceinsanity', 'Force Insanity', 6.0, 'SHAPE_SPHERE', '21', 'Box_FearPower', 'GetSpellTargetLocation()', 'Box_NoVisual', 'POWER_TYPE_DARK'))
scripts.append(Script.new_forceaoeattack('box_forcewave', 'Force Wave', 10.0, 'SHAPE_SPHERE', '24', 'Box_PushPower', 'GetLocation(OBJECT_SELF)', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forceaoeattack('box_forcecrush', 'Force Crush', 10.0, 'SHAPE_SPHERE', '24', 'Box_CrushPower', 'GetLocation(OBJECT_SELF)', 'Box_NoVisual', 'POWER_TYPE_DARK'))
scripts.append(Script.new_forceaoeattack('box_paralysiswave', 'Paralysis Wave', 6.0, 'SHAPE_SPHERE', '26', 'Box_ParalysisPower', 'GetSpellTargetLocation()', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))
scripts.append(Script.new_forceaoeattack('box_deathfield', 'Death Field', 10.0, 'SHAPE_SPHERE', '26', 'Box_DrainPower', 'GetLocation(OBJECT_SELF)', 'Box_NoVisual', 'POWER_TYPE_DARK'))
scripts.append(Script.new_forceaoeattack('box_massconfusion', 'Mass Confusion', 10.0, 'SHAPE_SPHERE', '28', 'Box_ConfusionPower', 'GetLocation(OBJECT_SELF)', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forceaoeattack('box_walloflight', 'Wall of Light', 10.0, 'SHAPE_SPHERE', '28', 'Box_LightPower', 'GetLocation(OBJECT_SELF)', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))
scripts.append(Script.new_forceaoeattack('box_forcestorm', 'Force Storm', 10.0, 'SHAPE_SPHERE', '28', 'Box_LightningPower', 'GetLocation(OBJECT_SELF)', 'Box_NoVisual', 'POWER_TYPE_DARK'))

scripts.append(Script.new_grenade('box_personicgren', 4.0, 'Box_PeragusSonicGrenade', 'Box_SonicGrenadeExplode'))
scripts.append(Script.new_grenade('box_fraggren', 4.0, 'Box_FragGrenade', 'Box_FragGrenadeExplode'))
scripts.append(Script.new_grenade('box_stungren', 4.0, 'Box_FlashGrenade', 'Box_FlashGrenadeExplode'))
scripts.append(Script.new_grenade('box_iongren', 4.0, 'Box_IonGrenade', 'Box_IonGrenadeExplode'))
scripts.append(Script.new_grenade('box_sonicgren', 4.0, 'Box_SonicGrenade', 'Box_SonicGrenadeExplode'))
scripts.append(Script.new_grenade('box_coldgren', 4.0, 'Box_ColdGrenade', 'Box_ColdGrenadeExplode'))
scripts.append(Script.new_grenade('box_plasmagren', 4.0, 'Box_PlasmaGrenade', 'Box_PlasmaGrenadeExplode'))
scripts.append(Script.new_grenade('box_thermaldet', 4.0, 'Box_ThermalDetonator', 'Box_ThermalDetonatorExplode'))
scripts.append(Script.new_grenade('box_fraggrenla', 4.0, 'Box_FragGrenadeLauncher', 'Box_PlasmaGrenadeExplode'))
scripts.append(Script.new_grenade('box_stungrenla', 4.0, 'Box_FlashGrenadeLauncher', 'Box_FlashGrenadeExplode'))
scripts.append(Script.new_grenade('box_gasgrenla', 4.0, 'Box_GasGrenadeLauncher', 'Box_GasGrenadeExplode'))
scripts.append(Script.new_grenade('box_sleepgrenla', 4.0, 'Box_SleepGrenadeLauncher', 'Box_GasGrenadeExplode'))
scripts.append(Script.new_grenade('box_sonicgrenla', 4.0, 'Box_SonicGrenadeLauncher', 'Box_SonicGrenadeExplode'))
scripts.append(Script.new_grenade('box_sonicgrenla2', 4.0, 'Box_SonicGrenadeLauncher2', 'Box_SonicGrenadeExplode'))
scripts.append(Script.new_grenade('box_plasmagrenla', 4.0, 'Box_PlasmaGrenadeLauncher', 'Box_PlasmaGrenadeExplode'))
scripts.append(Script.new_grenade('box_iongrenla', 4.0, 'Box_IonGrenadeLauncher', 'Box_IonGrenadeExplode'))
scripts.append(Script.new_grenade('box_explosiverk', 4.0, 'Box_ExplosiveRocket', 'Box_RocketExplode'))
scripts.append(Script.new_grenade('box_incendiaryrk', 4.0, 'Box_IncendiaryRocket', 'Box_FireRocketExplode'))
scripts.append(Script.new_grenade('box_busterrk', 4.0, 'Box_BusterRocket', 'Box_BusterRocketExplode'))
scripts.append(Script.new_grenade('box_busterrk2', 4.0, 'Box_BusterRocket2', 'Box_BusterRocketExplode'))
scripts.append(Script.new_grenade('box_plasmark', 4.0, 'Box_PlasmaRocket', 'Box_PlasmaRocketExplode'))
scripts.append(Script.new_grenade('box_radiantrk', 4.0, 'Box_RadiationRocket', 'Box_RadiationRocketExplode'))
scripts.append(Script.new_grenade('box_thermaldetla', 4.0, 'Box_ThermalDetonatorLauncher', 'Box_ThermalDetonatorExplode'))
scripts.append(Script.new_grenade('box_fusionrk', 4.0, 'Box_FusionRocket', 'Box_FusionRocketExplode'))



for script in scripts:
	template = 'error'
	with open('Templates\\' + script.source + '.nss', 'r') as file:
		template = str(file.read())
		if script.filename:
			template = template.replace('#FILENAME', script.filename)
		if script.description:
			template = template.replace('#DESCRIPTION', script.description)
		if script.spellname:
			template = template.replace('#SPELL_NAME', script.spellname)
		if script.radius:
			template = template.replace('#RADIUS', script.radius)
		if script.spellshape:
			template = template.replace('#SPELL_SHAPE', script.spellshape)
		if script.castdc:
			template = template.replace('#CAST_DC', script.castdc)
		if script.minelevel:
			template = template.replace('#MINE_LEVEL', script.minelevel)
		if script.functioncall:
			template = template.replace('#FUNCTION_CALL', script.functioncall)
		if script.locationfunction:
			template = template.replace('#LOCATION_FUNCTION', script.locationfunction)
		if script.visualfunction:
			template = template.replace('#VISUAL_FUNCTION', script.visualfunction)
		if script.includemodule:
			template = template.replace('#INCLUDE_MODULE', script.includemodule)
		if script.childscript:
			template = template.replace('#CHILD_SCRIPT', script.childscript)
		if script.stacksize:
			template = template.replace('#STACK_SIZE', script.stacksize)
		if script.itemtag:
			template = template.replace('#ITEM_TAG', script.itemtag)
		if script.poweralignment:
			template = template.replace('#POWER_ALIGNMENT', script.poweralignment)
		with open('Source\\' + script.filename + '.nss', 'w') as outfile:
			outfile.write(template)









