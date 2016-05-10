import shutil

class Script:
	def __init__(self, source, filename, description, spellname, radius, spellshape, castdc
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
		self.locationfunction locationfunction
		self.visualfunction = visualfunction
		self.includemodule = includemodule
		self.childscript = childscript
		self.stacksize = stacksize
		self.itemtag = itemtag
		self.poweralignment = poweralignment
	
	@classmethod
	def new_forcebuff(cls, filename, description, castdc, functioncall, visualfunction, poweralignment):
		return cls('forcebuff', filename, description, None, None, None, castdc,
			None, functioncall, None, visualfunction, None,
			None, None, None, poweralignment)
	
	@classmethod
	def new_forceteambuff(cls, filename, description, castdc, functioncall, visualfunction, poweralignment):
		return cls('forceteambuff', filename, description, None, None, None, castdc,
			None, functioncall, None, visualfunction, None,
			None, None, None, poweralignment)
	
	@classmethod
	def new_forceattack(cls, filename, description, spellname, castdc, functioncall, visualfunction, poweralignment):
		return cls('forceattack', filename, description, spellname, None, None, castdc,
			None, functioncall, None, visualfunction, None,
			None, None, None, poweralignment)
	
	@classmethod
	def new_forceaoeattack(cls, filename, description, spellname, radius, spellshape,
			castdc, functioncall, locationfunction, visualfunction, poweralignment):
		return cls('forceaoeattack', filename, description, spellname, radius, spellshape, castdc,
			None, functioncall, locationfunction, visualfunction, None,
			None, None, None, poweralignment)
	
	@classmethod
	def new_grenade(cls, filename, description, radius, functioncall, visualfunction):
		return cls('grenade', filename, description, None, radius, None, None,
			None, functioncall, None, visualfunction, None,
			None, None, None, None)
	
	@classmethod
	def new_beam(cls, filename, description, functioncall, visualfunction):
		return cls('beam', filename, description, None, None, None, None,
			None, functioncall, None, visualfunction, None,
			None, None, None, None)
	
	@classmethod
	def new_wave(cls, filename, description, functioncall, visualfunction):
		return cls('wave', filename, description, None, None, None, None,
			None, functioncall, None, visualfunction, None,
			None, None, None, None)
	
	@classmethod
	def new_mine(cls, filename, description, mineLevel, functioncall, visualfunction):
		return cls('mine', filename, description, None, None, None, None,
			mineLevel, functioncall, None, visualfunction, None,
			None, None, None, None)
	
	@classmethod
	def new_ammo(cls, filename, description, stacksize, itemtag):
		return cls('ammo', filename, description, None, None, None, None,
			None, None, None, None, None,
			None, stacksize, itemtag, None)
	
	@classmethod
	def new_spawn(cls, filename, description, functioncall, includemodule, childscript):
		return cls('spawn', filename, description, None, None, None, None,
			None, None, None, None, includemodule,
			childscript, None, None, None)
	
	@classmethod
	def new_treasure(cls, filename, description, functioncall, includemodule):
		return cls('treasure', filename, description, None, None, None, None,
			None, functioncall, None, None, includemodule,
			None, None, None, None)
	

scripts = []
scripts.append(Script.new_forceattack('box_forcechoke', 'Auto-generated Script', 'Force Choke', '12'
		'Box_ForceChoke', 'Box_NoVisual', ''))

for script in scripts:
	template = 'error'
	with open('Templates\\' + script.source + '.nss', 'r') as file:
		template = file.read()
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
		with open('Source\\' + script.filename + '.nss') as outfile:
			file.write(template)









