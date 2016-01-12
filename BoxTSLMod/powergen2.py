

class Spell:
	def __init__(self, row, name, fp, prereq, level, consular_only, maxcr, category, range, icon, script, conjanim, castanim, casthand, priority, hostile, exclusion):
		self.row = row
		self.name = name
		self.fp = fp
		self.prereq = prereq
		self.level = level
		self.consular_only = consular_only
		self.maxcr = maxcr
		self.category = category
		self.range = range
		self.icon = icon
		self.script = script
		self.conjanim = conjanim
		self.castanim = castanim
		self.casthand = casthand
		self.priority = priority
		self.hostile = hostile
		self.exclusion = exclusion
		self.conjtime = 170
		self.casttime = 1330
		self.catchtime = 0
		self.catchanim = '****'
		self.requireitem = '0x0000'

class Character:
	def __init__(self, filename, powers, output):
		self.filename = filename
		self.powers = powers
		self.output = output

		

# Remove spells
remove_spells = list()

remove_spells.append(Spell(8, 'SPEED_1_UNUSED', 20, None, 0, None, 3, None, None, None, 'box_forcespeed', None, None, None, None, None, None))
remove_spells.append(Spell(34, 'SPEED_2_UNUSED', 20, None, 0, None, 3, None, None, None, 'box_forcespeed', None, None, None, None, None, None))
remove_spells.append(Spell(37, 'SPEED_3_UNUSED', 50, None, 20, None, 9, None, None, None, 'box_forceathletic', None, None, None, None, None, None))

remove_spells.append(Spell(47, 'IONIZE_1_UNUSED', 15, None, 5, None, 3, None, None, None, 'box_forceionize', None, None, None, None, None, None))
remove_spells.append(Spell(12, 'IONIZE_2_UNUSED', 15, None, 5, None, 3, None, None, None, 'box_forceionize', None, None, None, None, None, None))
remove_spells.append(Spell(13, 'IONIZE_3_UNUSED', 45, None, 22, None, 9, None, None, None, 'box_ionstorm', None, None, None, None, None, None))

remove_spells.append(Spell(49, 'THROW_SABER_1_UNUSED', 20, None, 10, None, 3, None, None, None, 'box_throwsaber', None, None, None, None, None, None))
remove_spells.append(Spell(4, 'THROW_SABER_2_UNUSED', 20, None, 10, None, 3, None, None, None, 'box_throwsaber', None, None, None, None, None, None))

remove_spells.append(Spell(42, 'ENERGY_1_UNUSED', 20, None, 5, None, 3, None, None, None, 'box_enemybuff1', None, None, None, None, None, None))
remove_spells.append(Spell(40, 'ENERGY_2_UNUSED', 30, None, 15, None, 6, None, None, None, 'box_enemybuff2', None, None, None, None, None, None))
remove_spells.append(Spell(133, 'ENERGY_3_UNUSED', 40, None, 22, None, 9, None, None, None, 'box_enemybuff3', None, None, None, None, None, None))

remove_spells.append(Spell(41, 'IMMUNITY_1_UNUSED', 30, None, 15, None, 6, None, None, None, 'box_enemybuff2', None, None, None, None, None, None))
remove_spells.append(Spell(20, 'IMMUNITY_2_UNUSED', 40, None, 22, None, 9, None, None, None, 'box_enemybuff3', None, None, None, None, None, None))

remove_spells.append(Spell(23, 'PUSH_1_UNUSED', 20, None, 15, None, 6, None, None, None, 'box_forcepush', None, None, None, None, None, None))
remove_spells.append(Spell(27, 'PUSH_2_UNUSED', 20, None, 15, None, 6, None, None, None, 'box_forcepush', None, None, None, None, None, None))
remove_spells.append(Spell(26, 'PUSH_3_UNUSED', 60, None, 25, None, 9, None, None, None, 'box_forcewave', None, None, None, None, None, None))

remove_spells.append(Spell(153, 'DRAIN_FORCE_1_UNUSED', 25, None, 20, None, 6, None, None, None, 'box_forcedrain', None, None, None, None, None, None))
remove_spells.append(Spell(154, 'DRAIN_FORCE_2_UNUSED', 25, None, 20, None, 6, None, None, None, 'box_forcedrain', None, None, None, None, None, None))
remove_spells.append(Spell(155, 'DRAIN_FORCE_3_UNUSED', 25, None, 20, None, 9, None, None, None, 'box_forcedrain', None, None, None, None, None, None))

remove_spells.append(Spell(138, 'BATTLE_MED_1_UNUSED', 40, None, 20, None, 6, None, None, None, 'box_enemybatmed1', None, None, None, None, None, None))
remove_spells.append(Spell(139, 'BATTLE_MED_2_UNUSED', 60, None, 25, None, 9, None, None, None, 'box_enemybatmed2', None, None, None, None, None, None))
remove_spells.append(Spell(140, 'BATTLE_MED_3_UNUSED', 80, None, 30, None, 9, None, None, None, 'box_enemybatmed3', None, None, None, None, None, None))

remove_spells.append(Spell(181, 'MIND_TRICK_1_UNUSED', 25, None, 22, None, 9, None, None, None, 'box_forceconfusion', None, None, None, None, None, None))
remove_spells.append(Spell(200, 'MIND_TRICK_2_UNUSED', 25, None, 22, None, 9, None, None, None, 'box_forceconfusion', None, None, None, None, None, None))

remove_spells.append(Spell(22, 'VALOR_1_UNUSED', 40, None, 0, None, 3, None, None, None, 'box_forcevalor', None, None, None, None, None, None))
remove_spells.append(Spell(33, 'VALOR_2_UNUSED', 40, None, 0, None, 3, None, None, None, 'box_forcevalor', None, None, None, None, None, None))
remove_spells.append(Spell(36, 'VALOR_3_UNUSED', 40, None, 0, None, 3, None, None, None, 'box_forcevalor', None, None, None, None, None, None))

remove_spells.append(Spell(18, 'ARMOR_1_UNUSED', 20, None, 5, None, 3, None, None, None, 'box_enemybuff1', None, None, None, None, None, None))
remove_spells.append(Spell(24, 'ARMOR_2_UNUSED', 30, None, 15, None, 6, None, None, None, 'box_enemybuff2', None, None, None, None, None, None))
remove_spells.append(Spell(17, 'ARMOR_3_UNUSED', 40, None, 22, None, 9, None, None, None, 'box_enemybuff3', None, None, None, None, None, None))

remove_spells.append(Spell(150, 'BODY_1_UNUSED', 20, None, 5, None, 3, None, None, None, 'box_enemybuff1', None, None, None, None, None, None))
remove_spells.append(Spell(151, 'BODY_2_UNUSED', 30, None, 15, None, 6, None, None, None, 'box_enemybuff2', None, None, None, None, None, None))
remove_spells.append(Spell(152, 'BODY_3_UNUSED', 40, None, 22, None, 9, None, None, None, 'box_enemybuff3', None, None, None, None, None, None))

remove_spells.append(Spell(48, 'SURPRESS_1_UNUSED', 20, None, 15, None, 6, None, None, None, 'box_forcesurpress', None, None, None, None, None, None))
remove_spells.append(Spell(19, 'SURPRESS_2_UNUSED', 20, None, 15, None, 6, None, None, None, 'box_forcesurpress', None, None, None, None, None, None))

remove_spells.append(Spell(46, 'STUN_1_UNUSED', 25, None, 20, None, 6, None, None, None, 'box_forceparalysis', None, None, None, None, None, None))
remove_spells.append(Spell(29, 'STUN_2_UNUSED', 25, None, 20, None, 6, None, None, None, 'box_forceparalysis', None, None, None, None, None, None))
remove_spells.append(Spell(44, 'STUN_3_UNUSED', 75, None, 27, None, 9, None, None, None, 'box_paralysiswave', None, None, None, None, None, None))

remove_spells.append(Spell(135, 'BARRIER_1_UNUSED', 20, None, 5, None, 3, None, None, None, 'box_enemybuff1', None, None, None, None, None, None))
remove_spells.append(Spell(136, 'BARRIER_2_UNUSED', 30, None, 15, None, 6, None, None, None, 'box_enemybuff2', None, None, None, None, None, None))
remove_spells.append(Spell(137, 'BARRIER_3_UNUSED', 40, None, 22, None, 9, None, None, None, 'box_enemybuff3', None, None, None, None, None, None))

remove_spells.append(Spell(45, 'AFFLICT_1_UNUSED', 15, None, 5, None, 3, None, None, None, 'box_forceafflict', None, None, None, None, None, None))
remove_spells.append(Spell(7, 'AFFLICT_2_UNUSED', 15, None, 5, None, 3, None, None, None, 'box_forceafflict', None, None, None, None, None, None))
remove_spells.append(Spell(38, 'AFFLICT_3_UNUSED', 15, None, 5, None, 3, None, None, None, 'box_forceafflict', None, None, None, None, None, None))

remove_spells.append(Spell(16, 'FEAR_1_UNUSED', 20, None, 10, None, 3, None, None, None, 'box_forcefear', None, None, None, None, None, None))
remove_spells.append(Spell(30, 'FEAR_2_UNUSED', 20, None, 10, None, 3, None, None, None, 'box_forcefear', None, None, None, None, None, None))
remove_spells.append(Spell(31, 'FEAR_3_UNUSED', 60, None, 22, None, 9, None, None, None, 'box_forceinsanity', None, None, None, None, None, None))

remove_spells.append(Spell(50, 'CHOKE_1_UNUSED', 20, None, 15, None, 6, None, None, None, 'box_forcechoke', None, None, None, None, None, None))
remove_spells.append(Spell(9, 'CHOKE_2_UNUSED', 20, None, 15, None, 6, None, None, None, 'box_forcechoke', None, None, None, None, None, None))
remove_spells.append(Spell(32, 'CHOKE_3_UNUSED', 20, None, 15, None, 6, None, None, None, 'box_forcechoke', None, None, None, None, None, None))

remove_spells.append(Spell(15, 'DRAIN_LIFE_1_UNUSED', 25, None, 20, None, 6, None, None, None, 'box_forcedrain', None, None, None, None, None, None))
remove_spells.append(Spell(11, 'DRAIN_LIFE_2_UNUSED', 75, None, 27, None, 9, None, None, None, 'box_deathfield', None, None, None, None, None, None))

remove_spells.append(Spell(43, 'SHOCK_1_UNUSED', 25, None, 22, None, 9, None, None, None, 'box_forcelightning', None, None, None, None, None, None))
remove_spells.append(Spell(35, 'SHOCK_2_UNUSED', 25, None, 22, None, 9, None, None, None, 'box_forcelightning', None, None, None, None, None, None))
remove_spells.append(Spell(25, 'SHOCK_3_UNUSED', 75, None, 30, None, 9, None, None, None, 'box_forcestorm', None, None, None, None, None, None))

remove_spells.append(Spell(10, 'HEAL_1_UNUSED', 20, None, 5, None, 3, None, None, None, 'box_enemyheal1', None, None, None, None, None, None))
remove_spells.append(Spell(28, 'HEAL_2_UNUSED', 30, None, 15, None, 6, None, None, None, 'box_enemyheal2', None, None, None, None, None, None))
remove_spells.append(Spell(134, 'HEAL_3_UNUSED', 40, None, 22, None, 9, None, None, None, 'box_enemyheal3', None, None, None, None, None, None))

remove_spells.append(Spell(173, 'REVIVE_1_UNUSED', 40, None, 10, None, 3, None, None, None, 'box_enemyrevive1', None, None, None, None, None, None))
remove_spells.append(Spell(174, 'REVIVE_2_UNUSED', 60, None, 20, None, 6, None, None, None, 'box_enemyrevive2', None, None, None, None, None, None))
remove_spells.append(Spell(175, 'REVIVE_3_UNUSED', 80, None, 25, None, 9, None, None, None, 'box_enemyrevive3', None, None, None, None, None, None))

remove_spells.append(Spell(159, 'SCREAM_1_UNUSED', 60, None, 20, None, 9, None, None, None, 'box_sonichowl', None, None, None, None, None, None))
remove_spells.append(Spell(160, 'SCREAM_2_UNUSED', 60, None, 20, None, 9, None, None, None, 'box_sonichowl', None, None, None, None, None, None))
remove_spells.append(Spell(161, 'SCREAM_3_UNUSED', 60, None, 20, None, 9, None, None, None, 'box_sonichowl', None, None, None, None, None, None))

remove_spells.append(Spell(141, 'BATTLE_MED_ENEMY_1_UNUSED', 40, None, 20, None, 6, None, None, None, 'box_enemybatmed1', None, None, None, None, None, None))
remove_spells.append(Spell(142, 'BATTLE_MED_ENEMY_2_UNUSED', 60, None, 25, None, 9, None, None, None, 'box_enemybatmed2', None, None, None, None, None, None))
remove_spells.append(Spell(143, 'BATTLE_MED_ENEMY_3_UNUSED', 80, None, 30, None, 9, None, None, None, 'box_enemybatmed3', None, None, None, None, None, None))

remove_spells.append(Spell(162, 'REPULSION_1_UNUSED', 0, None, 15, None, 3, None, None, None, '****', None, None, None, None, None, None))
remove_spells.append(Spell(163, 'REPULSION_2_UNUSED', 0, None, 25, None, 6, None, None, None, '****', None, None, None, None, None, None))


# Eradicate spells
eradicate_spells = list()

eradicate_spells.append(Spell(164, 'FURY_1_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))
eradicate_spells.append(Spell(165, 'FURY_2_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))
eradicate_spells.append(Spell(166, 'FURY_3_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))

eradicate_spells.append(Spell(167, 'INSPIRE_FOLLOWERS_1_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))
eradicate_spells.append(Spell(168, 'INSPIRE_FOLLOWERS_2_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))
eradicate_spells.append(Spell(169, 'INSPIRE_FOLLOWERS_3_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))
eradicate_spells.append(Spell(170, 'INSPIRE_FOLLOWERS_4_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))
eradicate_spells.append(Spell(171, 'INSPIRE_FOLLOWERS_5_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))
eradicate_spells.append(Spell(172, 'INSPIRE_FOLLOWERS_6_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))

eradicate_spells.append(Spell(144, 'CRUSH_OPPOSITION_1_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))
eradicate_spells.append(Spell(145, 'CRUSH_OPPOSITION_2_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))
eradicate_spells.append(Spell(146, 'CRUSH_OPPOSITION_3_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))
eradicate_spells.append(Spell(147, 'CRUSH_OPPOSITION_4_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))
eradicate_spells.append(Spell(148, 'CRUSH_OPPOSITION_5_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))
eradicate_spells.append(Spell(149, 'CRUSH_OPPOSITION_6_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))

eradicate_spells.append(Spell(157, 'CAMOFLOGUE_2_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))
eradicate_spells.append(Spell(158, 'CAMOFLOGUE_3_UNUSED', None, None, None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None,  None, None))


# Modify spells
modify_spells = list()

modify_spells.append(Spell(6, 'FORCE_SUGGEST', 0, None, 0, False, 3, None, None, 'ip_affectmind', '****', None, None, None, None, None, None))
modify_spells.append(Spell(14, 'FORCE_COMPEL', 0, None, 15, True, 6, None, None, 'ip_dominate', '****', None, None, None, None, None, None))

modify_spells.append(Spell(156, 'FORCE_CONCEAL', 0, None, 0, False, 3, None, None, 'ip_forcecamo01', '****', None, None, None, None, None, None))

modify_spells.append(Spell(182, 'BEAST_TRICK', 30, None, -1, False, 3, None, None, 'ip_beasttrick', 'box_beasttrick', None, None, None, None, None, None))

modify_spells.append(Spell(270, 'BREATH_CONTROL', 30, None, -1, False, 3, None, None, 'ip_breath', 'box_breathcontrol', None, None, None, None, None, None))

modify_spells.append(Spell(180, 'FORCE_SEVER', 80, None, -1, False, 9, None, None, 'ip_breach', 'box_forcesever', None, None, None, None, None, None))

modify_spells.append(Spell(177, 'FORCE_CONSUME', 80, None, -1, False, 9, None, None, 'ip_deathfield', 'box_forceconsume', None, None, None, None, None, None))


# New spells
new_spells = list()

new_spells.append(Spell(None, 'FORCE_SPEED', 30, False, 0, False, 3, '0x1808', 'P', 'ip_speedburst', 'box_forcespeed', 'hand', 'self', '****', 0, False, '0x00'))

new_spells.append(Spell(None, 'FORCE_VALOR', 40, False, 0, False, 3, '0x1808', 'P', 'ip_revital01', 'box_forcevalor', 'hand', 'self', 'v_con_light', 0, False, '0x00'))

new_spells.append(Spell(None, 'FORCE_FURY', 40, False, 0, False, 3, '0x1808', 'P', 'ip_frcscream01', 'box_forcefury', 'hand', 'fury', 'v_con_dark', 0, False, '0x00'))


new_spells.append(Spell(None, 'FORCE_SWEEP', 30, False, 5, False, 3, '0x1301', 'M', 'ip_??', 'box_forcesweep', 'hand', 'self', '****', 0, True, '0x00'))
new_spells.append(Spell(None, 'FORCE_QUAKE', 60, True, 20, True, 6, '0x2302', 'S', 'ip_??', 'box_forcequake', 'up', 'up', '****', 1, True, '0x00'))

new_spells.append(Spell(None, 'FORCE_IONIZE', 30, False, 5, False, 3, '0x1301', 'M', 'ip_droiddisable', 'box_forceionize', 'hand', 'self', '****', 0, True, '0x01'))
new_spells.append(Spell(None, 'ION_STORM', 60, True, 20, True, 6, '0x2301', 'M', 'ip_droiddestroy', 'box_ionstorm', 'hand', 'self', '****', 1, True, '0x01'))

new_spells.append(Spell(None, 'FORCE_SLEEP', 30, False, 5, False, 3, '0x1201', 'M', 'ip_sleep', 'box_forcesleep', 'hand', 'self', 'v_con_light', 0, True, '0x02'))
new_spells.append(Spell(None, 'SLEEP_WAVE', 60, True, 20, True, 6, '0x2201', 'M', 'ip_sleep', 'box_sleepwave', 'hand', 'self', 'v_con_light', 1, True, '0x02'))

new_spells.append(Spell(None, 'FORCE_AFFLICT', 40, False, 5, False, 3, '0x1101', 'M', 'ip_affliction', 'box_forceafflict', 'hand', 'dark', 'v_con_dark', 0, True, '0x02'))


ls = Spell(None, 'THROW_LIGHTSABER', 40, True, 10, True, 3, '0x1101', 'M', 'ip_lsthrow', 'box_throwsaber', 'throw', 'throw', '****', 0, True, '0x00')
ls.conjtime = 560
ls.casttime = 1940
ls.catchtime = 500
ls.catchanim = 'CATCH'
ls.requireitem = '0x0040'
new_spells.append(ls)

new_spells.append(Spell(None, 'FORCE_LEVITATE', 35, False, 10, False, 3, '0x1301', 'M', 'ip_whirlwind', 'box_forcelevitate', 'hand', 'self', '****', 0, True, '0x00'))
new_spells.append(Spell(None, 'LEVITATE_FIELD', 70, True, 22, True, 6, '0x2301', 'S', 'ip_whirlwind', 'box_levitatefield', 'up', 'up', '****', 1, True, '0x00'))

new_spells.append(Spell(None, 'FORCE_BODY', 50, False, 10, False, 3, '0x1808', 'P', 'ip_forcebody01', 'box_forcebody', 'hand', 'self', 'v_con_light', 0, False, '0x00'))
new_spells.append(Spell(None, 'FORCE_ENLIGHTENMENT', 90, True, 25, True, 9, '0x1808', 'P', 'ip_forcebody03', 'box_forceenlight', 'hand', 'self', 'v_con_light', 1, False, '0x00'))

new_spells.append(Spell(None, 'FORCE_FEAR', 35, False, 10, False, 3, '0x1201', 'M', 'ip_fear', 'box_forcefear', 'hand', 'dark', 'v_con_dark', 0, True, '0x02'))
new_spells.append(Spell(None, 'FORCE_INSANITY', 70, True, 22, True, 6, '0x2201', 'M', 'ip_horror', 'box_forceinsanity', 'hand', 'dark', 'v_con_dark', 1, True, '0x02'))


new_spells.append(Spell(None, 'FORCE_PUSH', 40, False, 15, False, 6, '0x1301', 'M', 'ip_push', 'box_forcepush', 'hand', 'self', 'v_fpush_cas', 0, True, '0x00'))
new_spells.append(Spell(None, 'FORCE_WAVE', 80, True, 25, True, 9, '0x2302', 'S', 'ip_wave', 'box_forcepush', 'up', 'up', 'v_fpush_cas', 1, True, '0x00'))

new_spells.append(Spell(None, 'FORCE_BLIND', 40, False, 15, False, 6, '0x1101', 'M', 'ip_stun', 'box_forcepush', 'hand', 'self', '****', 0, True, '0x02'))

new_spells.append(Spell(None, 'FORCE_SUPPRESS', 40, False, 15, False, 6, '0x1101', 'M', 'ip_surpress', 'box_forcesuppress', 'hand', 'self', 'v_con_light', 0, True, '0x02'))

new_spells.append(Spell(None, 'FORCE_CHOKE', 40, False, 15, False, 6, '0x1301', 'M', 'ip_choke', 'box_forcechoke', 'dark', 'dark', 'v_con_dark', 0, True, '0x02'))
crush = Spell(None, 'FORCE_CRUSH', 80, True, 25, True, 9, '****', 'S', 'ip_forcecrush', 'box_forcecrush', 'hand', 'crush', 'v_con_dark', 1, True, '0x02')
crush.conjtime = 0
crush.casttime = 2000
new_spells.append(crush)

new_spells.append(Spell(None, 'FORCE_AGILITY', 70, False, 20, False, 6, '0x1808', 'P', 'ip_masterspeed', 'box_forceagility', 'hand', 'self', '****', 0, False, '0x00'))

new_spells.append(Spell(None, 'BATTLE_MEDITATION', 90, False, 20, False, 6, '0x1808', 'T', 'ip_battlemed01', 'box_battlemed', 'hand', 'self', '****', 0, False, '0x00'))
new_spells.append(Spell(None, 'MASTER_MEDITATION', 150, True, 28, True, 9, '0x1808', 'T', 'ip_battlemed03', 'box_mastermed', 'hand', 'self', '****', 1, False, '0x00'))

new_spells.append(Spell(None, 'FORCE_PARALYSIS', 50, False, 20, False, 6, '0x1201', 'M', 'ip_hold', 'box_forceparalysis', 'hand', 'self', 'v_con_light', 0, True, '0x02'))
new_spells.append(Spell(None, 'PARALYSIS_WAVE', 100, True, 28, True, 9, '0x2201', 'M', 'ip_hold', 'box_paralysiswave', 'hand', 'self', 'v_con_light', 1, True, '0x02'))

new_spells.append(Spell(None, 'FORCE_DRAIN', 50, False, 20, False, 6, '0x1501', 'M', 'ip_drainforce01', 'box_drainlife', 'hand', 'dark', 'v_con_dark', 0, True, '0x02'))
new_spells.append(Spell(None, 'DEATH_FIELD', 100, True, 28, True, 9, '0x2101', 'S', 'ip_drainforce03', 'box_deathfield', 'up', 'up', 'v_con_dark', 1, True, '0x02'))


new_spells.append(Spell(None, 'FORCE_CONFUSION', 60, False, 22, False, 6, '0x1201', 'M', 'ip_mindtrick', 'box_forceconfuse', 'hand', 'self', '****', 0, True, '0x02'))
new_spells.append(Spell(None, 'MASS_CONFUSION', 120, True, 30, True, 9, '0x2201', 'S', 'ip_confusion', 'box_massconfuse', 'up', 'up', '****', 1, True, '0x02'))

new_spells.append(Spell(None, 'FORCE_LIGHT', 60, False, 22, False, 6, '0x1808', 'P', 'ip_frcenlighten', 'box_forcelight', 'up', 'up', 'v_con_light', 0, False, '0x00'))
new_spells.append(Spell(None, 'WALL_OF_LIGHT', 120, True, 30, True, 9, '0x1808', 'P', 'ip_frcenlighten', 'box_walloflight', 'up', 'up', 'v_con_light', 1, False, '0x00'))

new_spells.append(Spell(None, 'FORCE_LIGHTNING', 60, False, 22, False, 6, '0x8101', 'M', 'ip_lightning', 'box_forcelightning', 'hand', 'dark', 'v_con_dark', 0, True, '0x02'))
new_spells.append(Spell(None, 'FORCE_STORM', 120, True, 30, True, 9, '0x2111', 'S', 'ip_storm', 'box_forcestorm', 'up', 'up', 'v_con_dark', 1, True, '0x02'))


def write_header(char):
	char.output += '[' + char.filename + ']\n'
	for i in range(0, len(char.powers)):
		char.output += 'AddField' + str(i) + '=' + char.filename + '_' + char.powers[i] + '\n'
	
def write_spell(char, index, powername):
	char.output += '[' + char.filename + '_' + powername + ']\n'
	char.output += 'FieldType=Struct\n'
	char.output += 'Path=ClassList\\0\KnownList0\n'
	char.output += 'Label=\n'
	char.output += 'TypeId=3\n'
	char.output += 'AddField0=' + char.filename + '_' + powername + '_Spell\n'
	char.output += 'AddField1=' + char.filename + '_' + powername + '_SpellMetaMagic\n'
	char.output += 'AddField2=' + char.filename + '_' + powername + '_SpellFlags\n'
	char.output += '[' + char.filename + '_' + powername + '_Spell]\n'
	char.output += 'FieldType=Word\n'
	char.output += 'Label=Spell\n'
	char.output += 'Value=2DAMEMORY' + str(index) + '\n'
	char.output += '[' + char.filename + '_' + powername + '_SpellMetaMagic]\n'
	char.output += 'FieldType=Byte\n'
	char.output += 'Label=SpellMetaMagic\n'
	char.output += 'Value=0\n'
	char.output += '[' + char.filename + '_' + powername + '_SpellFlags]\n'
	char.output += 'FieldType=Byte\n'
	char.output += 'Label=SpellFlags\n'
	char.output += 'Value=1\n'

characters = []
# CONCEAL and SUGGEST have to be added manually
characters.append(Character('p_kreia.utc', ['FORCE_SLEEP', 'FORCE_AFFLICT'], '')) # FORCE_CONCEAL, FORCE_SUGGEST
characters.append(Character('p_visas.utc', ['FORCE_SPEED'], '')) # FORCE_CONCEAL

for char in characters:
	write_header(char)


with open('temp.ini', 'w') as file:
	
	# names = list()
	# descs = list()
	# cnt = len(spells)
	# for i in range(1, len(spells)+1):
		# names.append(i + len(modify_spells))
		# descs.append(i + len(modify_spells) + len(new_spells))
	
	for i in range(0, len(remove_spells) + len(modify_spells) + len(eradicate_spells)):
		if i < len(remove_spells):
			file.write('ChangeRow' + str(i) + '=' + remove_spells[i].name.lower() + '\n')
		elif i < (len(remove_spells) + len(modify_spells)):
			file.write('ChangeRow' + str(i) + '=' + modify_spells[i - len(remove_spells)].name.lower() + '\n')
		else:
			file.write('ChangeRow' + str(i) + '=' + eradicate_spells[i - len(remove_spells) - len(modify_spells)].name.lower() + '\n')
	
	for i in range(0, len(new_spells)):
		file.write('AddRow' + str(i) + '=' + new_spells[i].name.lower() + '\n')
	
	
	for spell in remove_spells:
		file.write('[' + spell.name.lower() + ']\n')
		file.write('RowIndex=' + str(spell.row) + '\n')
		file.write('label=OLD_' + spell.name + '\n')
		file.write('guardian=-1\n')
		file.write('sentinel=-1\n')
		file.write('weapmstr=-1\n')
		file.write('watchman=-1\n')
		file.write('marauder=-1\n')
		file.write('assassin=-1\n')
		file.write('consular=-1\n')
		file.write('jedimaster=-1\n')
		file.write('sithlord=-1\n')
		file.write('inate=' + str(spell.level) + '\n')
		file.write('forcepoints=' + str(spell.fp) + '\n')
		file.write('impactscript=' + str(spell.script) + '\n')
		file.write('maxcr=' + str(spell.maxcr) + '\n')
		
	
	for spell in modify_spells:
		file.write('[' + spell.name.lower() + ']\n')
		file.write('RowIndex=' + str(spell.row) + '\n')
		file.write('label=BOX_' + spell.name + '\n')
		file.write('name=' + spell.name + '_N\n')
		file.write('spelldesc=' + spell.name + '_D\n')
		# file.write('name=135\n')
		# file.write('spelldesc=135\n')
		file.write('forcepoints=' + str(spell.fp) + '\n')
		file.write('goodevil=-\n')
		file.write('consular=' + str(spell.level) + '\n')
		file.write('jedimaster=' + str(spell.level) + '\n')
		file.write('sithlord=' + str(spell.level) + '\n')
		file.write('inate=' + str(spell.level) + '\n')
		
		# Nov 2015 - Removing the "Consular Only" spells, all spells are free
		# if (not(spell.consular_only)):
		file.write('guardian=' + str(spell.level) + '\n')
		file.write('sentinel=' + str(spell.level) + '\n')
		file.write('weapmstr=' + str(spell.level) + '\n')
		file.write('watchman=' + str(spell.level) + '\n')
		file.write('marauder=' + str(spell.level) + '\n')
		file.write('assassin=' + str(spell.level) + '\n')
		# else:
		# file.write('guardian=50\n')
		# file.write('sentinel=50\n')
		# file.write('weapmstr=50\n')
		# file.write('watchman=50\n')
		# file.write('marauder=50\n')
		# file.write('assassin=50\n')
		
		file.write('maxcr=' + str(spell.maxcr) + '\n')
		file.write('iconresref=' + str(spell.icon) + '\n')
		file.write('impactscript=' + str(spell.script) + '\n')
		file.write('pips=1\n')
		
		# Hack for laziness
		if spell.name == 'FORCE_SEVER':
			file.write('forcehostile=high()\n')
			file.write('forcefriendly=****\n')
			file.write('hostilesetting=1\n')
			file.write('casthandvisual=v_con_light\n')
		
		if spell.name == 'FORCE_CONSUME':
			file.write('conjtime=170\n')
			file.write('conjanim=dark\n')
			file.write('casttime=1330\n')
			file.write('castanim=dark\n')
			file.write('casthandvisual=v_con_dark\n')
		
	
	for spell in eradicate_spells:
		file.write('[' + spell.name.lower() + ']\n')
		file.write('RowIndex=' + str(spell.row) + '\n')
		file.write('label=ERADICATED_' + spell.name + '\n')
		file.write('label=ERADICATED_' + spell.name + '\n')
		file.write('usertype=-2\n')
		file.write('guardian=-1\n')
		file.write('sentinel=-1\n')
		file.write('weapmstr=-1\n')
		file.write('watchman=-1\n')
		file.write('marauder=-1\n')
		file.write('assassin=-1\n')
		file.write('consular=-1\n')
		file.write('jedimaster=-1\n')
		file.write('sithlord=-1\n')
		file.write('inate=-1\n')
		file.write('forcepoints=0\n')
		file.write('impactscript=****\n')
		file.write('maxcr=0\n')
	
	mem_index = 1
	mem2_index = len(new_spells)
	for spell in new_spells:
		file.write('[' + spell.name.lower() + ']\n')
		# file.write('RowIndex=' + str(spell.row) + '\n')
		file.write('label=BOX_' + spell.name + '\n')
		file.write('name=' + spell.name + '_N\n')
		file.write('spelldesc=' + spell.name + '_D\n')
		# file.write('name=135\n')
		# file.write('spelldesc=135\n')
		file.write('forcepoints=' + str(spell.fp) + '\n')
		file.write('goodevil=-\n')
		file.write('usertype=1\n')
		
		if spell.prereq:
			file.write('prerequisites=2DAMEMORY' + str(mem_index - 1) + '\n')
		else:
			file.write('prerequisites=****\n')
		
		file.write('consular=' + str(spell.level) + '\n')
		file.write('jedimaster=' + str(spell.level) + '\n')
		file.write('sithlord=' + str(spell.level) + '\n')
		file.write('inate=' + str(spell.level) + '\n')
		
		if (not(spell.consular_only)):
			file.write('guardian=' + str(spell.level) + '\n')
			file.write('sentinel=' + str(spell.level) + '\n')
			file.write('weapmstr=' + str(spell.level) + '\n')
			file.write('watchman=' + str(spell.level) + '\n')
			file.write('marauder=' + str(spell.level) + '\n')
			file.write('assassin=' + str(spell.level) + '\n')
		else:
			file.write('guardian=50\n')
			file.write('sentinel=50\n')
			file.write('weapmstr=50\n')
			file.write('watchman=50\n')
			file.write('marauder=50\n')
			file.write('assassin=50\n')
		
		file.write('maxcr=' + str(spell.maxcr) + '\n')
		file.write('category=' + str(spell.category) + '\n')
		file.write('range=' + str(spell.range) + '\n')
		file.write('iconresref=' + str(spell.icon) + '\n')
		file.write('impactscript=' + str(spell.script) + '\n')
		
		file.write('conjtime=' + str(spell.conjtime) + '\n')
		file.write('conjanim=' + str(spell.conjanim) + '\n')
		
		file.write('casttime=' + str(spell.casttime) + '\n')
		file.write('castanim=' + str(spell.castanim) + '\n')
		file.write('casthandvisual=' + str(spell.casthand) + '\n')
		
		file.write('catchtime=' + str(spell.catchtime) + '\n')
		file.write('catchanim=' + str(spell.catchanim) + '\n')
		
		file.write('proj=0\n')
		file.write('itemimmunity=0\n')
		
		
		if (spell.hostile):
			if spell.prereq:
				file.write('forcehostile=2DAMEMORY' + str(mem2_index - 1) + '\n')
			else:
				file.write('forcehostile=high()\n')
			file.write('forcefriendly=****\n')
			file.write('hostilesetting=1\n')
			file.write('2DAMEMORY' + str(mem2_index) + '=forcehostile\n')
		else:
			if spell.prereq:
				file.write('forcefriendly=2DAMEMORY' + str(mem2_index - 1) + '\n')
			else:
				file.write('forcefriendly=high()\n')
			file.write('forcehostile=****\n')
			file.write('hostilesetting=0\n')
			file.write('2DAMEMORY' + str(mem2_index) + '=forcefriendly\n')
		
		file.write('forcepriority=' + str(spell.priority) + '\n')
		file.write('exclusion=' + str(spell.exclusion) + '\n')
		file.write('forbiditemmask=0x0000\n')
		file.write('requireitemmask=' + str(spell.requireitem) + '\n')
		file.write('pips=1\n')
		
		file.write('2DAMEMORY' + str(mem_index) + '=RowIndex\n')
		
		for char in characters:
			for power in char.powers:
				if spell.name == power:
					write_spell(char, mem_index, spell.name)
		
		mem_index += 1
		mem2_index += 1
	
	for char in characters:
		file.write(char.output)
#