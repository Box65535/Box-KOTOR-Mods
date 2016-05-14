import shutil

class Script:
	def __init__(self, source, filename, description, spellname, radius, spellshape, castdc,
			minelevel, functioncall, locationfunction, visualfunction, moduleinclude,
			childscript, stacksize, itemtag, poweralignment, shield):
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
		self.moduleinclude = moduleinclude
		self.childscript = childscript
		self.stacksize = stacksize
		self.itemtag = itemtag
		self.poweralignment = poweralignment
	
	@classmethod
	def new_forcebuff(cls, filename, castdc, functioncall, visualfunction, poweralignment):
		return cls('forcebuff', filename, 'Auto-generated Script', None, None, None, castdc,
			None, functioncall, None, visualfunction, None,
			None, None, None, poweralignment, None)
	
	@classmethod
	def new_forceteambuff(cls, filename, castdc, functioncall, visualfunction, poweralignment):
		return cls('forceteambuff', filename, 'Auto-generated Script', None, None, None, castdc,
			None, functioncall, None, visualfunction, None,
			None, None, None, poweralignment, None)
	
	@classmethod
	def new_forceattack(cls, filename, spellname, castdc, functioncall, visualfunction, poweralignment):
		return cls('forceattack', filename, 'Auto-generated Script', spellname, None, None, castdc,
			None, functioncall, None, visualfunction, None,
			None, None, None, poweralignment, None)
	
	@classmethod
	def new_forceaoeattack(cls, filename, spellname, radius, spellshape,
			castdc, functioncall, locationfunction, visualfunction, poweralignment):
		return cls('forceaoeattack', filename, 'Auto-generated Script', spellname, radius, spellshape, castdc,
			None, functioncall, locationfunction, visualfunction, None,
			None, None, None, poweralignment, None)
	
	@classmethod
	def new_grenade(cls, filename, radius, functioncall, visualfunction):
		return cls('grenade', filename, 'Auto-generated Script', None, radius, None, None,
			None, functioncall, None, visualfunction, None,
			None, None, None, None, None)
	
	@classmethod
	def new_beam(cls, filename, functioncall, visualfunction):
		return cls('beam', filename, 'Auto-generated Script', None, None, None, None,
			None, functioncall, None, visualfunction, None,
			None, None, None, None, None)
	
	@classmethod
	def new_wave(cls, filename, functioncall, visualfunction):
		return cls('wave', filename, 'Auto-generated Script', None, None, None, None,
			None, functioncall, None, visualfunction, None,
			None, None, None, None, None)
	
	@classmethod
	def new_mine(cls, filename, radius, minelevel, functioncall, visualfunction):
		return cls('mine', filename, 'Auto-generated Script', None, radius, None, None,
			minelevel, functioncall, None, visualfunction, None,
			None, None, None, None, None)
	
	@classmethod
	def new_ammo(cls, filename, stacksize, itemtag):
		return cls('ammo', filename, 'Auto-generated Script', None, None, None, None,
			None, None, None, None, None,
			None, stacksize, itemtag, None, None)
	
	@classmethod
	def new_spawn(cls, filename, functioncall, moduleinclude, childscript):
		return cls('spawn', filename, 'Auto-generated Script', None, None, None, None,
			None, functioncall, None, None, moduleinclude,
			childscript, None, None, None, None)
	
	@classmethod
	def new_treasure(cls, filename, functioncall, moduleinclude):
		return cls('treasure', filename, 'Auto-generated Script', None, None, None, None,
			None, functioncall, None, None, moduleinclude,
			None, None, None, None, None)
	
	@classmethod
	def new_shield(cls, filename, shield):
		return cls('shield', filename, 'Auto-generated Script', None, None, None, None,
			None, None, None, None, None,
			None, None, None, None, shield)

scripts = []

# Generated lines go here
#SCRIPTS


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
			template = template.replace('#RADIUS', str(script.radius))
		if script.spellshape:
			template = template.replace('#SPELL_SHAPE', script.spellshape)
		if script.castdc:
			template = template.replace('#CAST_DC', str(script.castdc))
		if script.minelevel:
			template = template.replace('#MINE_LEVEL', str(script.minelevel))
		if script.functioncall:
			template = template.replace('#FUNCTION_CALL', script.functioncall)
		if script.locationfunction:
			template = template.replace('#LOCATION_FUNCTION', script.locationfunction)
		if script.visualfunction:
			template = template.replace('#VISUAL_FUNCTION', script.visualfunction)
		if script.moduleinclude:
			template = template.replace('#MODULE_INCLUDE', script.moduleinclude)
		if script.childscript:
			template = template.replace('#CHILD_SCRIPT', script.childscript)
		if script.stacksize:
			template = template.replace('#STACK_SIZE', str(script.stacksize))
		if script.itemtag:
			template = template.replace('#ITEM_TAG', script.itemtag)
		if script.poweralignment:
			template = template.replace('#POWER_ALIGNMENT', script.poweralignment)
		if script.shield:
			template = template.replace('#SHIELD', script.shield)
		with open('Source\\' + script.filename + '.nss', 'w') as outfile:
			outfile.write(template)









