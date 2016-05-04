
class Spell:
	def __init__(self, row, name, maxcr, category, range, script, sound, proj, projmodel, projtype, projorientation, hostile, exclusion):
		self.row = row
		self.name = name
		self.maxcr = maxcr
		self.category = category
		self.range = range
		self.script = script
		self.sound = sound
		self.proj = proj
		self.projmodel = projmodel
		self.projtype = projtype
		self.projorientation = projorientation
		self.hostile = hostile
		self.exclusion = exclusion

class Script:
	def __init__(self, row, script):
		self.row = row
		self.script = script

class Item:
	def __init__(self, name, spell):
		self.name = name
		self.spell = spell
	

modify_spells = list()

modify_spells.append(Script(64, 'box_enemyheal1'))
modify_spells.append(Script(65, 'box_enemyheal2'))
modify_spells.append(Script(66, 'box_enemyheal3'))
modify_spells.append(Script(67, 'box_enemyantidote'))

modify_spells.append(Script(69, 'box_stradren'))
modify_spells.append(Script(70, 'box_dexadren'))
modify_spells.append(Script(71, 'box_conadren'))
modify_spells.append(Script(72, 'box_strstim'))
modify_spells.append(Script(73, 'box_dexstim'))
modify_spells.append(Script(74, 'box_constim'))
modify_spells.append(Script(75, 'box_conadren'))
modify_spells.append(Script(76, 'box_constim'))
modify_spells.append(Script(77, 'box_constim'))

modify_spells.append(Script(87, 'box_fraggrenade'))
modify_spells.append(Script(88, 'box_stungrenade'))
modify_spells.append(Script(89, 'box_thermaldet'))
modify_spells.append(Script(90, 'box_gasgrenade'))
modify_spells.append(Script(91, 'box_soniccharge'))
modify_spells.append(Script(92, 'box_stungrenade'))
modify_spells.append(Script(93, 'box_plasmagrenade'))
modify_spells.append(Script(94, 'box_plasmagrenade'))
modify_spells.append(Script(95, 'box_fraggrenade'))

modify_spells.append(Script(99, 'box_energyshield'))
modify_spells.append(Script(100, 'box_sithshield'))
modify_spells.append(Script(101, 'box_environshield'))
modify_spells.append(Script(102, 'box_echanishield'))
modify_spells.append(Script(103, 'box_mandshield'))
modify_spells.append(Script(104, 'box_mandshield'))
modify_spells.append(Script(105, 'box_echanishield'))
modify_spells.append(Script(106, 'box_zabrakshield'))
modify_spells.append(Script(107, 'box_zabrakshield'))

modify_spells.append(Script(110, 'box_droidshield'))
modify_spells.append(Script(111, 'box_advancedshield'))
modify_spells.append(Script(112, 'box_advancedshield'))
modify_spells.append(Script(113, 'box_drdenvshield'))
modify_spells.append(Script(114, 'box_radiantshield'))
modify_spells.append(Script(115, 'box_universalshield'))

modify_spells.append(Script(116, 'box_stunray'))
modify_spells.append(Script(117, 'box_stunray2'))
modify_spells.append(Script(118, 'box_plasmacannon1'))
modify_spells.append(Script(119, 'box_plasmacannon'))
modify_spells.append(Script(120, 'box_flamethrower'))
modify_spells.append(Script(121, 'box_flamethrower2'))
modify_spells.append(Script(122, 'box_carbonite1'))
modify_spells.append(Script(123, 'box_carbonite'))
modify_spells.append(Script(124, 'box_gravitygen1'))
modify_spells.append(Script(125, 'box_gravitygen2'))

modify_spells.append(Script(83, 'box_monsterslam'))
modify_spells.append(Script(130, 'box_firebreath'))
modify_spells.append(Script(131, 'box_sonichowl'))

modify_spells.append(Script(132, 'box_miningshield'))

modify_spells.append(Script(84, 'box_enemyheal1'))
modify_spells.append(Script(127, 'box_enemyheal2'))
modify_spells.append(Script(128, 'box_enemyheal3'))
modify_spells.append(Script(129, 'box_enemyheal2'))

modify_spells.append(Script(185, 'box_explorocket'))
modify_spells.append(Script(186, 'box_minorsonic'))
modify_spells.append(Script(187, 'box_minorsonic'))
modify_spells.append(Script(188, 'box_minorflame'))
modify_spells.append(Script(189, 'box_minorflame'))
modify_spells.append(Script(190, 'box_explorocket'))
modify_spells.append(Script(191, 'box_radrocket'))
modify_spells.append(Script(192, 'box_radrocket'))
modify_spells.append(Script(193, 'box_radrocket'))
modify_spells.append(Script(194, 'box_explorocket'))
modify_spells.append(Script(195, 'box_poisondart'))
modify_spells.append(Script(196, 'box_poisondart'))
modify_spells.append(Script(197, 'box_poisondart'))
modify_spells.append(Script(198, 'box_poisondart'))
modify_spells.append(Script(199, 'box_poisondart'))

modify_spells.append(Script(244, 'box_minorcarbon'))
modify_spells.append(Script(245, 'box_minorcarbon'))
modify_spells.append(Script(246, 'box_fraggrenade'))
modify_spells.append(Script(247, 'box_stungrenade'))
modify_spells.append(Script(248, 'box_thermaldet'))
modify_spells.append(Script(250, 'box_gasgrenade'))
modify_spells.append(Script(251, 'box_soniccharge'))
modify_spells.append(Script(252, 'box_stungrenade'))
modify_spells.append(Script(253, 'box_plasmagrenade'))
modify_spells.append(Script(254, 'box_plasmagrenade'))
modify_spells.append(Script(255, 'box_fraggrenade'))
modify_spells.append(Script(256, 'box_minorsonic'))
modify_spells.append(Script(257, 'box_minorsonic'))

modify_spells.append(Script(258, 'box_drexlsheild'))

modify_spells.append(Script(271, 'box_wookierage'))
modify_spells.append(Script(272, 'box_wookierage'))
modify_spells.append(Script(273, 'box_wookierage'))

modify_spells.append(Script(274, 'box_plasmacannon1'))
modify_spells.append(Script(275, 'box_plasmacannon'))
modify_spells.append(Script(276, 'box_plasmacannon3'))
modify_spells.append(Script(277, 'box_plasmacannon'))
modify_spells.append(Script(278, 'box_shockarm'))
modify_spells.append(Script(279, 'box_stunray'))
modify_spells.append(Script(280, 'box_stunray2'))
modify_spells.append(Script(281, 'box_plasmacannon3'))




neq_spells = list()

# neq_spells.append(Spell(None, 'FLAMETHROWER', 3, '0x8000', 'M', 'box_flamethrower', '****', False, None, None, None, True, '0x00'))
# neq_spells.append(Spell(None, 'ION_BLASTER', 3, '0x8000', 'M', 'box_ionblaster', 'cb_sh_pwrblast1', True, 'w_lfire_pb_b1', 'homing', 'target', True, '0x00'))
# neq_spells.append(Spell(None, 'STUN_RAY', 3, '0x8000', 'M', 'box_stunray', '****', False, None, None, None, True, '0x00'))
# neq_spells.append(Spell(None, 'SHOCK_ARM', 3, '0x8000', 'M', 'box_shockarm', '****', False, None, None, None, True, '0x00'))
# neq_spells.append(Spell(None, 'CARBONITE_PROJECTOR', 6, '0x8000', 'M', 'box_carbonite', '****', False, None, None, None, True, '0x00'))
# neq_spells.append(Spell(None, 'PLASMA_CANNON', 6, '0x8000', 'M', 'box_plasmacannon', '****', False, None, None, None, True, '0x00'))
# neq_spells.append(Spell(None, 'SONIC_REPULSOR', 6, '0x8000', 'M', 'box_sonicrepulsor', '****', False, None, None, None, True, '0x00'))
# neq_spells.append(Spell(None, 'DROID_HACKER', 6, '0x8000', 'M', 'box_droidhacker', '****', False, None, None, None, True, '0x00'))
# neq_spells.append(Spell(None, 'SHIELD_DISRUPTOR', 9, '0x8000', 'M', 'box_shielddisrupt', 'cb_sh_pwrblast2', True, 'w_lfire_pb_s1', 'homing', 'target', True, '0x00'))
# neq_spells.append(Spell(None, 'ION_CANNON', 9, '0x8000', 'M', 'box_ioncannon', 'cb_sh_pwrblast1', True, 'w_lfire_pb_b1', 'homing', 'target', True, '0x00'))
# neq_spells.append(Spell(None, 'PLASMA_FLAMETHROWER', 9, '0x8000', 'M', 'box_plasmaflame', '****', False, None, None, None, True, '0x00'))
# neq_spells.append(Spell(None, 'GRAVITY_GENERATOR', 9, '0x8000', 'M', 'box_gravitygen', '****', False, None, None, None, True, '0x00'))

# neq_spells.append(Spell(None, 'GRENADE_LAUNCHER', 3, '0x8000', 'L', 'box_fraggrenade', '****', True, 'w_FragGren_001', 'ballistic', '****', True, '0x00'))
# neq_spells.append(Spell(None, 'STUN_GRENADE_LAUNCHER', 3, '0x8000', 'L', 'box_stungrenade', '****', True, 'w_StunGren_001', 'ballistic', '****', True, '0x00'))
# neq_spells.append(Spell(None, 'GRAPPLING_HOOK', 3, '0x8000', 'L', 'box_grapplinghook', '****', False, None, None, None, True, '0x00'))
# neq_spells.append(Spell(None, 'POISON_DART_GUN', 3, '0x8000', 'M', 'box_poisondart', '****', True, 'W_rokdart', 'homing', 'target', True, '0x00'))
# neq_spells.append(Spell(None, 'ROCKET_LAUNCHER', 6, '0x8000', 'L', 'box_explorocket', '****', True, 'W_rokpierce', 'accelerating', 'target', True, '0x00'))
# neq_spells.append(Spell(None, 'GAS_GRENADE_LAUNCHER', 6, '0x8000', 'L', 'box_gasgrenade', '****', True, 'w_PoisnGren_001', 'ballistic', '****', True, '0x00'))
# neq_spells.append(Spell(None, 'SONIC_CHARGE_LAUNCHER', 6, '0x8000', 'L', 'box_soniccharge', '****', True, 'w_SonicGren_001', 'ballistic', '****', True, '0x00'))
# neq_spells.append(Spell(None, 'PLASMA_GRENADE_LAUNCHER', 6, '0x8000', 'L', 'box_plasmagrenade', '****', True, 'w_FireGren_001', 'ballistic', '****', True, '0x00'))
# neq_spells.append(Spell(None, 'RADIATION_ROCKET_LAUNCHER', 9, '0x8000', 'L', 'box_radrocket', '****', True, 'W_rokplasma', 'accelerating', 'target', True, '0x00'))
# neq_spells.append(Spell(None, 'ANTI_ARMOR_GUN', 9, '0x8000', 'M', 'box_antiarmor', '****', True, 'W_rokdart', 'homing', 'target', True, '0x00'))
# neq_spells.append(Spell(None, 'THERMAL_DETONATOR_LAUNCHER', 9, '0x8000', 'L', 'box_thermaldet', '****', True, 'w_ThermDet_001', 'ballistic', '****', True, '0x00'))
# neq_spells.append(Spell(None, 'INCENDIARY_ROCKET_LAUNCHER', 9, '0x8000', 'L', 'box_firerocket', '****', True, 'W_rokplasma', 'accelerating', 'target', True, '0x00'))


# TODO - might need to do something to make the grenade animations work
neq_spells.append(Spell(None, 'FRAG_GRENADE', 3, '0x8000', 'L', 'box_fraggrenade', '****', True, 'w_FragGren_001', 'throw', '****', True, '0x00'))
neq_spells.append(Spell(None, 'STUN_GRENADE', 3, '0x8000', 'L', 'box_stungrenade', '****', True, 'w_StunGren_001', 'throw', '****', True, '0x00'))
neq_spells.append(Spell(None, 'ION_GRENADE', 3, '0x8000', 'L', 'box_iongrenade', '****', True, 'w_IonGren_001', 'throw', '****', True, '0x00'))
neq_spells.append(Spell(None, 'SONIC_GRENADE', 3, '0x8000', 'L', 'box_sonicgrenade', '****', True, 'w_SonicGren_001', 'throw', '****', True, '0x00'))
neq_spells.append(Spell(None, 'PLASMA_GRENADE', 3, '0x8000', 'L', 'box_plasmagrenade', '****', True, 'w_FireGren_001', 'throw', '****', True, '0x00'))
neq_spells.append(Spell(None, 'COLD_GRENADE', 3, '0x8000', 'L', 'box_coldgrenade', '****', True, 'w_CryobGren_001', 'throw', '****', True, '0x00'))
neq_spells.append(Spell(None, 'THERMAL_DETONATOR', 9, '0x8000', 'L', 'box_thermaldet', '****', True, 'w_ThermDet_001', 'throw', '****', True, '0x00'))

# neq_spells.append(Spell(None, 'WEAK_SONIC_GRENADE', 3, '0x8000', 'L', 'box_weaksonicgrenade', '****', True, 'w_SonicGren_001', 'throw', '****', True, '0x00'))
# neq_spells.append(Spell(None, 'WEAK_BURNERS', 3, '0x8000', 'M', 'box_weakburners', '****', False, None, None, None, True, '0x00'))
# neq_spells.append(Spell(None, 'BURNERS', 3, '0x8000', 'M', 'box_burners', '****', False, None, None, None, True, '0x00'))
# neq_spells.append(Spell(None, 'FIRE_SUPPRESSION', 3, '0x8000', 'M', 'box_firesuppression', '****', False, None, None, None, True, '0x00'))

# TODO - Auxilary Weapons


# TODO - Energy Weapons



neq_spells.append(Spell(None, 'MINING_SHIELD', 3, '0x1808', 'T', 'box_miningshield', '****', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'ENERGY_SHIELD', 3, '0x1808', 'T', 'box_energyshield', '****', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'ENVIRONMENT_SHIELD', 3, '0x1808', 'T', 'box_environshield', '****', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'SITH_ENERGY_SHIELD', 6, '0x1808', 'T', 'box_sithshield', '****', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'MANDALORIAN_ENERGY_SHIELD', 6, '0x1808', 'T', 'box_mandshield', '****', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'ECHANI_ENERGY_SHIELD', 6, '0x1808', 'T', 'box_echanishield', '****', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'BAODUR_ENERGY_SHIELD', 9, '0x1808', 'T', 'box_zabrakshield', '****', False, None, None, None, False, '0x00'))

neq_spells.append(Spell(None, 'DROID_ENERGY_SHIELD', 3, '0x1808', 'T', 'box_droidshield', '****', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'DROID_ENVIRONMENT_SHIELD', 3, '0x1808', 'T', 'box_drdenvshield', '****', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'RADIANT_ENERGY_SHIELD', 6, '0x1808', 'T', 'box_radiantshield', '****', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'ADVANCED_ENERGY_SHIELD', 6, '0x1808', 'T', 'box_advancedshield', '****', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'UNIVERSAL_ENERGY_SHIELD', 6, '0x1808', 'T', 'box_universalshield', '****', False, None, None, None, False, '0x00'))

neq_spells.append(Spell(None, 'STRENGTH_ADRENALINE', 3, '0x1808', 'T', 'box_stradren', 'gui_inject', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'DEXTERITY_ADRENALINE', 3, '0x1808', 'T', 'box_dexadren', 'gui_inject', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'CONSTITUTION_ADRENALINE', 3, '0x1808', 'T', 'box_conadren', 'gui_inject', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'STRENGTH_STIMULANT', 3, '0x1808', 'T', 'box_strstim', 'gui_inject', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'DEXTERITY_STIMULANT', 3, '0x1808', 'T', 'box_dexstim', 'gui_inject', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'CONSTITUTION_STIMULANT', 3, '0x1808', 'T', 'box_constim', 'gui_inject', False, None, None, None, False, '0x00'))


neq_spells.append(Spell(None, 'REPAIR_KIT_1', 3, '0x1404', 'T', 'box_repairkit1', 'gui_upgrade', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'REPAIR_KIT_2', 6, '0x1404', 'T', 'box_repairkit2', 'gui_upgrade', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'REPAIR_KIT_3', 9, '0x1404', 'T', 'box_repairkit3', 'gui_upgrade', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'QUICK_FIX_KIT_1', 6, '0x1404', 'T', 'box_quickkit1', 'gui_upgrade', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'QUICK_FIX_KIT_2', 9, '0x1404', 'T', 'box_quickkit2', 'gui_upgrade', False, None, None, None, False, '0x00'))

neq_spells.append(Spell(None, 'MEDPAC_1', 3, '0x1408', 'T', 'box_medpac1', 'gui_inject', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'MEDPAC_2', 6, '0x1408', 'T', 'box_medpac2', 'gui_inject', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'MEDPAC_3', 9, '0x1408', 'T', 'box_medpac3', 'gui_inject', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'ANTIDOTE_PACK', 3, '0x1408', 'T', 'box_antidote', 'gui_inject', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'LIFE_SUPPORT_PACK_1', 6, '0x1408', 'T', 'box_lifesupport1', 'gui_inject', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'LIFE_SUPPORT_PACK_2', 9, '0x1408', 'T', 'box_lifesupport2', 'gui_inject', False, None, None, None, False, '0x00'))


# Enemy Spells
neq_spells.append(Spell(None, 'SONIC_CHARGE', 3, '0x8000', 'L', 'box_soniccharge1', '****', True, 'w_SonicGren_001', 'throw', '****', True, '0x00'))
neq_spells.append(Spell(None, 'SONIC_CHARGE_2', 3, '0x8000', 'L', 'box_soniccharge2', '****', True, 'w_SonicGren_001', 'throw', '****', True, '0x00'))
neq_spells.append(Spell(None, 'BURNERS', 3, '0x8000', 'M', 'box_burners1', '****', False, None, None, None, True, '0x00'))
neq_spells.append(Spell(None, 'BURNERS_2', 3, '0x8000', 'M', 'box_burners2', '****', False, None, None, None, True, '0x00'))
neq_spells.append(Spell(None, 'FIRE_SUPPRESSION', 3, '0x8000', 'M', 'box_firesuppression', '****', False, None, None, None, True, '0x00'))
neq_spells.append(Spell(None, 'ENEMY_MINING_SHIELD', 3, '0x1808', 'T', 'box_enemymineshield1', '****', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'ENEMY_MINING_SHIELD_2', 3, '0x1808', 'T', 'box_enemymineshield2', '****', False, None, None, None, False, '0x00'))
neq_spells.append(Spell(None, 'MINE_FLAMETHROWER', 3, '0x8000', 'M', 'box_mineflamethrower', '****', False, None, None, None, True, '0x00'))
neq_spells.append(Spell(None, 'MINE_CARBONITE', 3, '0x8000', 'M', 'box_minecarbonite', '****', False, None, None, None, True, '0x00'))


items = list()

items.append(Item('wg_frag', 'FRAG_GRENADE'))
items.append(Item('wg_stun', 'STUN_GRENADE'))
items.append(Item('wg_ion', 'ION_GRENADE'))
items.append(Item('wg_sonic', 'SONIC_GRENADE'))
items.append(Item('wg_plasma', 'PLASMA_GRENADE'))
items.append(Item('wg_cold', 'COLD_GRENADE'))
items.append(Item('wg_therm', 'THERMAL_DETONATOR'))

items.append(Item('hs_mining', 'MINING_SHIELD'))
items.append(Item('hs_energy', 'ENERGY_SHIELD'))
items.append(Item('hs_enviro', 'ENVIRONMENT_SHIELD'))
items.append(Item('hs_sith', 'SITH_ENERGY_SHIELD'))
items.append(Item('hs_mand', 'MANDALORIAN_ENERGY_SHIELD'))
items.append(Item('hs_echani', 'ECHANI_ENERGY_SHIELD'))
items.append(Item('hs_zabrak', 'BAODUR_ENERGY_SHIELD'))

items.append(Item('ds_energy', 'DROID_ENERGY_SHIELD'))
items.append(Item('ds_enviro', 'DROID_ENVIRONMENT_SHIELD'))
items.append(Item('ds_radian', 'RADIANT_ENERGY_SHIELD'))
items.append(Item('ds_advanc', 'ADVANCED_ENERGY_SHIELD'))
items.append(Item('ds_univer', 'UNIVERSAL_ENERGY_SHIELD'))

items.append(Item('hs_str1', 'STRENGTH_ADRENALINE'))
items.append(Item('hs_dex1', 'DEXTERITY_ADRENALINE'))
items.append(Item('hs_con1', 'CONSTITUTION_ADRENALINE'))
items.append(Item('hs_str2', 'STRENGTH_STIMULANT'))
items.append(Item('hs_dex2', 'DEXTERITY_STIMULANT'))
items.append(Item('hs_con2', 'CONSTITUTION_STIMULANT'))


items.append(Item('hh_medpac1', 'MEDPAC_1'))
items.append(Item('hh_medpac2', 'MEDPAC_2'))
items.append(Item('hh_medpac3', 'MEDPAC_3'))
items.append(Item('hh_antido', 'ANTIDOTE_PACK'))
items.append(Item('hh_lifepk1', 'LIFE_SUPPORT_PACK_1'))
items.append(Item('hh_lifepk2', 'LIFE_SUPPORT_PACK_2'))

items.append(Item('hh_medpac1e', 'MEDPAC_1'))
items.append(Item('hh_medpac2e', 'MEDPAC_2'))
items.append(Item('hh_medpac3e', 'MEDPAC_3'))
items.append(Item('hh_antidoe', 'ANTIDOTE_PACK'))
items.append(Item('hh_lifepk1e', 'LIFE_SUPPORT_PACK_1'))
items.append(Item('hh_lifepk2e', 'LIFE_SUPPORT_PACK_2'))

items.append(Item('dh_repair1', 'REPAIR_KIT_1'))
items.append(Item('dh_repair2', 'REPAIR_KIT_2'))
items.append(Item('dh_repair3', 'REPAIR_KIT_3'))
items.append(Item('dh_quick1', 'QUICK_FIX_KIT_1'))
items.append(Item('dh_quick2', 'QUICK_FIX_KIT_2'))


# Enemy Spells

items.append(Item('eq_soncdt1', 'SONIC_CHARGE'))
items.append(Item('eq_soncdt2', 'SONIC_CHARGE_2'))
items.append(Item('eq_burn1', 'BURNERS'))
items.append(Item('eq_burn2', 'BURNERS_2'))
items.append(Item('eq_firesu1', 'FIRE_SUPPRESSION'))
items.append(Item('et_firesu1', 'FIRE_SUPPRESSION'))
items.append(Item('eq_minesh1', 'ENEMY_MINING_SHIELD'))
items.append(Item('eq_minesh2', 'ENEMY_MINING_SHIELD_2'))
items.append(Item('eq_minefr', 'MINE_FLAMETHROWER'))
items.append(Item('eq_minecb', 'MINE_CARBONITE'))

items.append(Item('', ''))


header = ''
with open('spellheader.ini', 'r') as file:
	header = file.read()

midder = ''
with open('spellmidder.ini', 'r') as file:
	midder = file.read()


with open('temp.ini', 'w') as file:
	
	file.write(header)
	
	for i in range(0, len(items)):
		file.write('File' + str(i) + '=' + items[i].name + '.uti\n')
	
	file.write(midder)
	
	for i in range(0, len(modify_spells)):
		file.write('ChangeRow' + str(i) + '=modify_row_' + str(modify_spells[i].row) + '\n')
	
	for i in range(0, len(neq_spells)):
		file.write('AddRow' + str(i) + '=' + neq_spells[i].name.lower() + '\n')
	
	for spell in modify_spells:
		file.write('[modify_row_' + str(modify_spells[i].row) + ']\n')
		file.write('RowIndex=' + str(spell.row) + '\n')
		file.write('impactscript=' + str(spell.script) + '\n')
	
	mem_index = 1
	for spell in neq_spells:
		file.write('[' + spell.name.lower() + ']\n')
		file.write('label=BOX_ITEM_' + spell.name + '\n')
		file.write('usertype=4\n')
		
		file.write('maxcr=' + str(spell.maxcr) + '\n')
		file.write('category=' + str(spell.category) + '\n')
		file.write('range=' + str(spell.range) + '\n')
		file.write('impactscript=' + str(spell.script) + '\n')
		
		file.write('conjtime=170\n')
		file.write('conjanim=hand\n')
		file.write('casttime=1330\n')
		file.write('castanim=self\n')
		file.write('castsound=' + str(spell.sound) + '\n')
		
		if spell.proj:
			file.write('proj=1\n')
			file.write('projmodel=' + str(spell.projmodel) + '\n')
			file.write('projtype=' + str(spell.projtype) + '\n')
			file.write('projspwnpoint=throw\n')
			file.write('projorientation=' + str(spell.projorientation) + '\n')
		else:
			file.write('proj=0\n')
		
		file.write('itemimmunity=0\n')
		
		if (spell.hostile):
			file.write('forcehostile=high()\n')
			file.write('forcefriendly=****\n')
			file.write('hostilesetting=1\n')
			file.write('itemtargeting=3\n')
		else:
			file.write('forcefriendly=high()\n')
			file.write('forcehostile=****\n')
			file.write('hostilesetting=0\n')
			file.write('itemtargeting=1\n')
		
		file.write('exclusion=' + str(spell.exclusion) + '\n')
		file.write('forbiditemmask=0x0000\n')
		file.write('requireitemmask=0x0000\n')
		file.write('pips=1\n')
		file.write('2DAMEMORY_' + spell.name + '=RowIndex\n')
		mem_index = mem_index + 1
	
	file.write('\n')
	
	for item in items:
		file.write('[' + item.name + '.uti]\n')
		file.write('PropertiesList\\0\Subtype=2DAMEMORY_' + item.spell + '\n')





# Moved from spellgen2.py

out = ''
with open('temp.ini', 'r') as file:
	out = file.read()


index = 1
for spell in neq_spells:
	out = out.replace('2DAMEMORY_' + spell.name, '2DAMEMORY' + str(index))
	index = index + 1


with open('tslpatchdata\\spells.ini', 'w') as file:
	file.write(out)










# OLD CODE
# This is for the old ammo system, I didn't want to throw away the code

# droid_items = list()

# droid_items.append(Item('dw_flame1', 'FLAMETHROWER'))
# droid_items.append(Item('dw_ion1', 'ION_BLASTER'))
# droid_items.append(Item('dw_stun1', 'STUN_RAY'))
# droid_items.append(Item('dw_shock1', 'SHOCK_ARM'))
# droid_items.append(Item('dw_carbon2', 'CARBONITE_PROJECTOR'))
# droid_items.append(Item('dw_plasma2', 'PLASMA_CANNON'))
# droid_items.append(Item('dw_sonic2', 'SONIC_REPULSOR'))
# droid_items.append(Item('dw_hack2', 'DROID_HACKER'))
# droid_items.append(Item('dw_sonic3', 'SHIELD_DISRUPTOR'))
# droid_items.append(Item('dw_ion3', 'ION_CANNON'))
# droid_items.append(Item('dw_flame3', 'PLASMA_FLAMETHROWER'))
# droid_items.append(Item('dw_gravit3', 'GRAVITY_GENERATOR'))

# droid_items.append(Item('dw_fraggr1', 'GRENADE_LAUNCHER'))
# droid_items.append(Item('dw_stungr1', 'STUN_GRENADE_LAUNCHER'))
# droid_items.append(Item('dw_grappl1', 'GRAPPLING_HOOK'))
# droid_items.append(Item('dw_psndt1', 'POISON_DART_GUN'))
# droid_items.append(Item('dw_explrk2', 'ROCKET_LAUNCHER'))
# droid_items.append(Item('dw_gasgr2', 'GAS_GRENADE_LAUNCHER'))
# droid_items.append(Item('dw_soncgr2', 'SONIC_CHARGE_LAUNCHER'))
# droid_items.append(Item('dw_plasgr2', 'PLASMA_GRENADE_LAUNCHER'))
# droid_items.append(Item('dw_radrk3', 'RADIATION_ROCKET_LAUNCHER'))
# droid_items.append(Item('dw_tankdt3', 'ANTI_ARMOR_GUN'))
# droid_items.append(Item('dw_thmdet3', 'THERMAL_DETONATOR_LAUNCHER'))
# droid_items.append(Item('dw_firerk3', 'INCENDIARY_ROCKET_LAUNCHER'))


# ammo_codes = list()
# ammo_codes.append('ka')
# ammo_codes.append('aa')
# ammo_codes.append('ha')
# ammo_codes.append('ra')
# ammo_codes.append('ba')
# ammo_codes.append('ma')
# ammo_codes.append('ca')
# ammo_codes.append('va')
# ammo_codes.append('da')
# ammo_codes.append('ja')


# items = list()

# for item in droid_items:
	# items.append(Item(item.name, item.spell))
	
	# for code in ammo_codes:
		# name = item.name
		# name = name.replace('dw', code)
		# items.append(Item(name, item.spell))

