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

# 6, 9, 12, 15, 18, 21, 24, 27, 30

scripts.append(Script.new_forcebuff('box_forcespeed', '6', 'Box_SpeedPower', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forcebuff('box_forcevalor', '6', 'Box_ValorPower', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))
scripts.append(Script.new_forcebuff('box_forcefury', '6', 'Box_FuryPower', 'Box_NoVisual', 'POWER_TYPE_DARK'))
scripts.append(Script.new_forcebuff('box_forcebody', '12', 'Box_BodyPower', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))
scripts.append(Script.new_forcebuff('box_forceagility', '18', 'Box_AgilityPower', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forcebuff('box_forceenlight', '24', 'Box_EnlightenPower', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))

scripts.append(Script.new_forceteambuff('box_battlemed', '18', 'Box_MeditationPower', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forceteambuff('box_mastermed', '27', 'Box_MasterMeditationPower', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))

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
scripts.append(Script.new_forceaoeattack('box_paralysiswave', 'Paralysis Wave', 6.0, 'SHAPE_SPHERE', '27', 'Box_ParalysisPower', 'GetSpellTargetLocation()', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))
scripts.append(Script.new_forceaoeattack('box_deathfield', 'Death Field', 10.0, 'SHAPE_SPHERE', '27', 'Box_DrainPower', 'GetLocation(OBJECT_SELF)', 'Box_NoVisual', 'POWER_TYPE_DARK'))
scripts.append(Script.new_forceaoeattack('box_massconfusion', 'Mass Confusion', 10.0, 'SHAPE_SPHERE', '30', 'Box_ConfusionPower', 'GetLocation(OBJECT_SELF)', 'Box_NoVisual', 'POWER_TYPE_UNIVERSAL'))
scripts.append(Script.new_forceaoeattack('box_walloflight', 'Wall of Light', 10.0, 'SHAPE_SPHERE', '30', 'Box_LightPower', 'GetLocation(OBJECT_SELF)', 'Box_NoVisual', 'POWER_TYPE_LIGHT'))
scripts.append(Script.new_forceaoeattack('box_forcestorm', 'Force Storm', 10.0, 'SHAPE_SPHERE', '30', 'Box_LightningPower', 'GetLocation(OBJECT_SELF)', 'Box_NoVisual', 'POWER_TYPE_DARK'))

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
scripts.append(Script.new_grenade('box_plasmark', 4.0, 'Box_PlasmaRocket', 'Box_PlasmaRocketExplode'))
scripts.append(Script.new_grenade('box_radiantrk', 4.0, 'Box_RadiationRocket', 'Box_RadiationRocketExplode'))
scripts.append(Script.new_grenade('box_thermaldetla', 4.0, 'Box_ThermalDetonatorLauncher', 'Box_ThermalDetonatorExplode'))
scripts.append(Script.new_grenade('box_fusionrk', 4.0, 'Box_FusionRocket', 'Box_FusionRocketExplode'))

scripts.append(Script.new_beam('box_busterrk', 'Box_BusterRocket', 'Box_BusterRocketBeam'))
scripts.append(Script.new_beam('box_busterrk2','Box_BusterRocket2', 'Box_BusterRocketBeam'))
scripts.append(Script.new_beam('box_perburner1', 'Box_PeragusBurner1', 'Box_FlamethrowerBeam'))
scripts.append(Script.new_beam('box_perburner2', 'Box_PeragusBurner2', 'Box_FlamethrowerBeam'))
scripts.append(Script.new_beam('box_flamethrower', 'Box_Flamethrower', 'Box_FlamethrowerBeam'))
scripts.append(Script.new_beam('box_flamethrower2', 'Box_Flamethrower2', 'Box_FlamethrowerBeam'))
scripts.append(Script.new_beam('box_plasmaflame', 'Box_PlasmaFlamethrower', 'Box_FlamethrowerBeam'))
scripts.append(Script.new_beam('box_perfiresu', 'Box_FireSuppression', 'Box_CarboniteBeam'))
scripts.append(Script.new_beam('box_carbonite1', 'Box_Carbonite1', 'Box_CarboniteBeam'))
scripts.append(Script.new_beam('box_carbonite2', 'Box_Carbonite2', 'Box_CarboniteBeam'))
scripts.append(Script.new_beam('box_poisondart', 'Box_PoisonDart', 'Box_NoBeam'))
scripts.append(Script.new_beam('box_sleepdart', 'Box_SleepDart', 'Box_NoBeam'))
scripts.append(Script.new_beam('box_paralysisdart', 'Box_ParalysisDart', 'Box_NoBeam'))
scripts.append(Script.new_beam('box_kyberdart', 'Box_KyberDart', 'Box_NoBeam'))
scripts.append(Script.new_beam('box_grapplinghook', 'Box_GrapplingHook', 'Box_NoBeam'))
scripts.append(Script.new_beam('box_ionblast', 'Box_IonBlaster', 'Box_NoBeam'))
scripts.append(Script.new_beam('box_plasmablast', 'Box_PlasmaBlaster', 'Box_NoBeam'))
scripts.append(Script.new_beam('box_disruptorblast', 'Box_DisruptorBlaster', 'Box_NoBeam'))

scripts.append(Script.new_mine('box_fragmine1', 1, 'Box_FragMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_fragmine2', 2, 'Box_FragMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_fragmine3', 3, 'Box_FragMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_fragmine4', 4, 'Box_FragMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_fragmine5', 5, 'Box_FragMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_flashmine1', 1, 'Box_FlashMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_flashmine2', 2, 'Box_FlashMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_flashmine3', 3, 'Box_FlashMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_flashmine4', 4, 'Box_FlashMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_flashmine5', 5, 'Box_FlashMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_gasmine1', 1, 'Box_GasMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_gasmine2', 2, 'Box_GasMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_gasmine3', 3, 'Box_GasMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_gasmine4', 4, 'Box_GasMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_gasmine5', 5, 'Box_GasMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_sonicmine1', 1, 'Box_SonicMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_sonicmine2', 2, 'Box_SonicMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_sonicmine3', 3, 'Box_SonicMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_sonicmine4', 4, 'Box_SonicMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_sonicmine5', 5, 'Box_SonicMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_plasmamine1', 1, 'Box_PlasmaMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_plasmamine2', 2, 'Box_PlasmaMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_plasmamine3', 3, 'Box_PlasmaMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_plasmamine4', 4, 'Box_PlasmaMine', 'Box_NoVisual'))
scripts.append(Script.new_mine('box_plasmamine5', 5, 'Box_PlasmaMine', 'Box_NoVisual'))

scripts.append(Script.new_ammo('box_fraggrenammo', 6, 'al_frag'))
scripts.append(Script.new_ammo('box_flashgrenammo', 6, 'al_flash'))
scripts.append(Script.new_ammo('box_gasgrenammo', 6, 'al_gas'))
scripts.append(Script.new_ammo('box_sleepgrenammo', 6, 'al_sleep'))
scripts.append(Script.new_ammo('box_sonicgrenammo', 6, 'al_sonic1'))
scripts.append(Script.new_ammo('box_sonicdetammo', 6, 'al_sonic2'))
scripts.append(Script.new_ammo('box_plasmagrenammo', 6, 'al_plasma'))
scripts.append(Script.new_ammo('box_iongrenammo', 6, 'al_ion'))
scripts.append(Script.new_ammo('box_explosiverkammo', 4, 'ar_explo'))
scripts.append(Script.new_ammo('box_incendiaryrkammo', 4, 'ar_burn'))
scripts.append(Script.new_ammo('box_busterrk1ammo', 4, 'ar_buster1'))
scripts.append(Script.new_ammo('box_busterrk2ammo', 4, 'ar_buster2'))
scripts.append(Script.new_ammo('box_plasmarkammo', 4, 'ar_plasma'))
scripts.append(Script.new_ammo('box_radiantrkammo', 4, 'ar_radian'))
scripts.append(Script.new_ammo('box_thermaldetammo', 6, 'ar_thmdet'))
scripts.append(Script.new_ammo('box_fusionrkammo', 4, 'ar_fusion'))
scripts.append(Script.new_ammo('box_poisondartammo', 10, 'aw_psndt'))
scripts.append(Script.new_ammo('box_sleepdartammo', 10, 'aw_slpdt'))
scripts.append(Script.new_ammo('box_paralysisdartammo', 10, 'aw_paradt'))
scripts.append(Script.new_ammo('box_kyberdartammo', 10, 'aw_kybdt'))
scripts.append(Script.new_ammo('box_flamethrowerammo', 8, 'aw_flame1'))
scripts.append(Script.new_ammo('box_flamethrower2ammo', 8, 'aw_flame2'))
scripts.append(Script.new_ammo('box_plasmaflameammo', 8, 'aw_flame3'))
scripts.append(Script.new_ammo('box_carbonite1ammo', 4, 'aw_carbon1'))
scripts.append(Script.new_ammo('box_carbonite2ammo', 4, 'aw_carbon2'))
scripts.append(Script.new_ammo('box_ionblastammo', 4, 'aw_ionbl'))
scripts.append(Script.new_ammo('box_plasmablastammo', 4, 'aw_plasbl'))
scripts.append(Script.new_ammo('box_disruptorblastammo', 4, 'aw_disrbl'))

# TODO Add the other spawn scripts for mining droids
scripts.append(Script.new_spawn('bx_mindrd1', 'Box_MiningDroid', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_mindrd1_sh', 'Box_MiningDroidShielded', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_mindrd1_lt', 'Box_MiningDroidLoot', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_mindrd1_sl', 'Box_MiningDroidShieldedLoot', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_mindrd1_du', 'Box_MiningDroidDual', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_mindrd1_ds', 'Box_MiningDroidDualShielded', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_exvdrd', 'Box_ExcavatorDroid', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_exvdrd_bn', 'Box_ExcavatorDroidBurners', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_exvdrd_fs', 'Box_FireSuppressionDroid', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_mindrd2', 'Box_MiningDroidMkII', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_mindrd2_fr', 'Box_MiningDroidMkIIFire', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_mindrd2_cd', 'Box_MiningDroidMkIICold', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_mindrd2_ex', 'Box_ExcavatorDroidMkII', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_fsturr', 'Box_FireSuppressionTurret', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_hk50_pr', 'Box_HK50Peragus', 'box_inc_spawn_per', 'k_hen_spawn01_hk'))
scripts.append(Script.new_spawn('bx_flomin_hk', 'Box_FloatingMine', 'box_inc_spawn_per', 'k_fm_spawn_cust'))
scripts.append(Script.new_spawn('bx_flomin_pr', 'Box_FloatingMine', 'box_inc_spawn_per', 'k_fmine_spawn'))
scripts.append(Script.new_spawn('bx_mntdrd_pr', 'Box_MaintenanceDroid', 'box_inc_spawn_per', 'k_def_spawn_heal'))
scripts.append(Script.new_spawn('bx_sthass1_pr', 'Box_SithAssassin', 'box_inc_spawn_per', 'k_def_spawn01'))
scripts.append(Script.new_spawn('bx_sthass1_pr', 'Box_SithAssassin', 'box_inc_spawn_per', 'k_sithas_spawn01'))
scripts.append(Script.new_spawn('bx_sthass1_h1', 'Box_SithAssassin', 'box_inc_spawn_per', 'k_sithspwn_151'))
scripts.append(Script.new_spawn('bx_sthass1_h2', 'Box_SithAssassin', 'box_inc_spawn_per', 'k_sithspwn_152'))


scripts.append(Script.new_beam())



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
		if script.includemodule:
			template = template.replace('#INCLUDE_MODULE', script.includemodule)
		if script.childscript:
			template = template.replace('#CHILD_SCRIPT', script.childscript)
		if script.stacksize:
			template = template.replace('#STACK_SIZE', str(script.stacksize))
		if script.itemtag:
			template = template.replace('#ITEM_TAG', script.itemtag)
		if script.poweralignment:
			template = template.replace('#POWER_ALIGNMENT', script.poweralignment)
		with open('Source\\' + script.filename + '.nss', 'w') as outfile:
			outfile.write(template)









