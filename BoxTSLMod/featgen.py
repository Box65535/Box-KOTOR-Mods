
class Item:
	def __init__(self, filename, baseitem):
		self.filename = filename
		self.baseitem = baseitem

class Character:
	def __init__(self, filename, feats):
		self.filename = filename
		self.feats = feats

featcodes = list()
featcodes.append('BOX_SABERFOCUS')
featcodes.append('BOX_SABERSPEC')
featcodes.append('BOX_MELEEFOCUS')
featcodes.append('BOX_MELEESPEC')
featcodes.append('BOX_FORCE1')
featcodes.append('BOX_FORCE2')
featcodes.append('BOX_FORCE3')
featcodes.append('BOX_FORCE4')
featcodes.append('BOX_FORCE5')
featcodes.append('BOX_BLASTERS1')
featcodes.append('BOX_BLASTERS2')
featcodes.append('BOX_BLASTERS3')
featcodes.append('BOX_BLASTERS4')
featcodes.append('BOX_BLASTERS5')
featcodes.append('BOX_MELEE1')
featcodes.append('BOX_MELEE2')
featcodes.append('BOX_MELEE3')
featcodes.append('BOX_SABERS')
featcodes.append('BOX_MECHWEAP1')
featcodes.append('BOX_MECHWEAP2')
featcodes.append('BOX_MECHWEAP3')
featcodes.append('BOX_ENERGWEAP1')
featcodes.append('BOX_ENERGWEAP2')
featcodes.append('BOX_ENERGWEAP3')
featcodes.append('BOX_WOOKWEAP')
featcodes.append('BOX_ARMOR1')
featcodes.append('BOX_ARMOR2')
featcodes.append('BOX_ARMOR3')
featcodes.append('BOX_ARMOR4')
featcodes.append('BOX_ARMOR5')
featcodes.append('BOX_DROIDARMOR1')
featcodes.append('BOX_DROIDARMOR2')
featcodes.append('BOX_DROIDARMOR3')
featcodes.append('BOX_SHIELDS1')
featcodes.append('BOX_SHIELDS2')
featcodes.append('BOX_STIMS1')
featcodes.append('BOX_STIMS2')
featcodes.append('BOX_IMPLANTS1')
featcodes.append('BOX_IMPLANTS2')
featcodes.append('BOX_IMPLANTS3')
featcodes.append('BOX_STLHGEN')
featcodes.append('BOX_TURRET1')
featcodes.append('BOX_TURRET2')
featcodes.append('BOX_TURRET3')
featcodes.append('BOX_ETANK1')
featcodes.append('BOX_ETANK2')


featnames = list()
# Weapons
featnames.append('BOX_BLASTERS1_N')
featnames.append('BOX_BLASTERS2_N')
featnames.append('BOX_BLASTERS3_N')
featnames.append('BOX_BLASTERS4_N')
featnames.append('BOX_BLASTERS5_N')
featnames.append('BOX_MELEE1_N')
featnames.append('BOX_MELEE2_N')
featnames.append('BOX_MELEE3_N')
featnames.append('BOX_SABERS_N')
featnames.append('BOX_MECHWEAP1_N')
featnames.append('BOX_MECHWEAP2_N')
featnames.append('BOX_MECHWEAP3_N')
featnames.append('BOX_ENERGWEAP1_N')
featnames.append('BOX_ENERGWEAP2_N')
featnames.append('BOX_ENERGWEAP3_N')
featnames.append('BOX_WOOKWEAP_N')
# Armor
featnames.append('BOX_ARMOR1_N')
featnames.append('BOX_ARMOR2_N')
featnames.append('BOX_ARMOR3_N')
featnames.append('BOX_ARMOR4_N')
featnames.append('BOX_ARMOR5_N')
featnames.append('BOX_DROIDARMOR1_N')
featnames.append('BOX_DROIDARMOR2_N')
featnames.append('BOX_DROIDARMOR3_N')
# Items
featnames.append('BOX_SHIELDS1_N')
featnames.append('BOX_SHIELDS2_N')
featnames.append('BOX_STIMS1_N')
featnames.append('BOX_STIMS2_N')
featnames.append('BOX_IMPLANTS1_N')
featnames.append('BOX_IMPLANTS2_N')
featnames.append('BOX_IMPLANTS3_N')
featnames.append('BOX_STLHGEN_N')
featnames.append('BOX_TURRET1_N')
featnames.append('BOX_TURRET2_N')
featnames.append('BOX_TURRET3_N')
# Specialities
featnames.append('BOX_BLASTERSPEC1_N')
featnames.append('BOX_BLASTERSPEC2_N')
featnames.append('BOX_BLASTERSPEC3_N')
featnames.append('BOX_BLASTERSPEC4_N')
featnames.append('BOX_BLASTERSPEC5_N')
featnames.append('BOX_MELEESPEC1_N')
featnames.append('BOX_MELEESPEC2_N')
featnames.append('BOX_MELEESPEC3_N')
featnames.append('BOX_MELEESPEC4_N')
featnames.append('BOX_MELEESPEC5_N')
featnames.append('BOX_SABERSPEC1_N')
featnames.append('BOX_SABERSPEC2_N')
featnames.append('BOX_SABERSPEC3_N')
featnames.append('BOX_SABERSPEC4_N')
featnames.append('BOX_SABERSPEC5_N')
featnames.append('BOX_UNARMEDSPEC1_N')
featnames.append('BOX_UNARMEDSPEC2_N')
featnames.append('BOX_UNARMEDSPEC3_N')
featnames.append('BOX_UNARMEDSPEC4_N')
featnames.append('BOX_UNARMEDSPEC5_N')
featnames.append('BOX_FORCESPEC1_N')
featnames.append('BOX_FORCESPEC2_N')
featnames.append('BOX_FORCESPEC3_N')
featnames.append('BOX_FORCESPEC4_N')
featnames.append('BOX_FORCESPEC5_N')
featnames.append('BOX_ETANK1_N')
featnames.append('BOX_ETANK2_N')
# Abilities
featnames.append('BOX_TWOWEAP1_N')
featnames.append('BOX_TWOWEAP2_N')
featnames.append('BOX_TWOWEAP3_N')
featnames.append('BOX_CONDITION1_N')
featnames.append('BOX_CONDITION2_N')
featnames.append('BOX_CONDITION3_N')
featnames.append('BOX_SNEAKATK1_N')
featnames.append('BOX_SNEAKATK2_N')
featnames.append('BOX_SNEAKATK3_N')
featnames.append('BOX_SNEAKATK4_N')
featnames.append('BOX_SNEAKATK5_N')
featnames.append('BOX_DUALSTR1_N')
featnames.append('BOX_DUALSTR2_N')
featnames.append('BOX_DUALSTR3_N')
featnames.append('BOX_TOUGH1_N')
featnames.append('BOX_TOUGH2_N')
featnames.append('BOX_TOUGH3_N')
featnames.append('BOX_MELEEFINE_N')
featnames.append('BOX_SABERFINE_N')
featnames.append('BOX_DUELING_N')
featnames.append('BOX_CLOSECOM_N')
# Combat
featnames.append('BOX_POWATTACK1_N')
featnames.append('BOX_POWATTACK2_N')
featnames.append('BOX_POWATTACK3_N')
featnames.append('BOX_FLURRY1_N')
featnames.append('BOX_FLURRY2_N')
featnames.append('BOX_FLURRY3_N')
featnames.append('BOX_CRITSTRIKE1_N')
featnames.append('BOX_CRITSTRIKE2_N')
featnames.append('BOX_CRITSTRIKE3_N')
featnames.append('BOX_POWBLAST1_N')
featnames.append('BOX_POWBLAST2_N')
featnames.append('BOX_POWBLAST3_N')
featnames.append('BOX_RAPIDSHOT1_N')
featnames.append('BOX_RAPIDSHOT2_N')
featnames.append('BOX_RAPIDSHOT3_N')
featnames.append('BOX_SNIPSHOT1_N')
featnames.append('BOX_SNIPSHOT2_N')
featnames.append('BOX_SNIPSHOT3_N')
# Jedi
featnames.append('BOX_FORCESENSE_N')
featnames.append('BOX_DEFLECT1_N')
featnames.append('BOX_DEFLECT2_N')
featnames.append('BOX_DEFLECT3_N')
featnames.append('BOX_FORCEJUMP1_N')
featnames.append('BOX_FORCEJUMP2_N')
featnames.append('BOX_FORCEJUMP3_N')
featnames.append('BOX_FORCEIMMUN1_N')
featnames.append('BOX_FORCEIMMUN2_N')
featnames.append('BOX_FORCEIMMUN3_N')
featnames.append('BOX_FORCESTLH_N')
# Skill
featnames.append('BOX_CLSAWARE_N')
featnames.append('BOX_CLSCRAFT_N')
featnames.append('BOX_CLSDEMO_N')
featnames.append('BOX_CLSREPAIR_N')
featnames.append('BOX_CLSSECUR_N')
featnames.append('BOX_CLSSTLH_N')
featnames.append('BOX_CLSMEDIC_N')
featnames.append('BOX_CLSPERSUAD_N')
# Character
featnames.append('BOX_WARVET_N')
featnames.append('BOX_EMPATHY1_N')
featnames.append('BOX_EMPATHY2_N')
featnames.append('BOX_EMPATHY3_N')
featnames.append('BOX_BLASINTGR_N')
featnames.append('BOX_KINETICCOM_N')
featnames.append('BOX_SPIRIT_N')
featnames.append('BOX_SHIELDBRK_N')
featnames.append('BOX_REPULSSTRK_N')
featnames.append('BOX_ECHANISTRK_N')
featnames.append('BOX_HEALER_N')
featnames.append('BOX_MANDCOUR_N')
featnames.append('BOX_IMPLSWITCH_N')
featnames.append('BOX_ASSASSPROT_N')
featnames.append('BOX_POINTGUARD_N')
featnames.append('BOX_WOOKTOUGH_N')
featnames.append('BOX_WOOKRAGE_N')
featnames.append('BOX_PERSCLOAK_N')
featnames.append('BOX_MINEIMMUN_N')
featnames.append('BOX_DROIDSCRAMB_N')



itemcodes = list()
# The _C codes need to come first so that the matching works, kinda hacky
itemcodes.append('BOXI_SHORTSWORD_C')
itemcodes.append('BOXI_LONGSWORD_C')
itemcodes.append('BOXI_QUARTERSTAFF_C')
itemcodes.append('BOXI_DOUBLESWORD_C')
itemcodes.append('BOXI_STUNBATON_C')
itemcodes.append('BOXI_FORCEPIKE_C')
itemcodes.append('BOXI_BATTLEAXE_C')
itemcodes.append('BOXI_WOOKWARBLADE_C')
itemcodes.append('BOXI_VIBROCUTTER_C')
itemcodes.append('BOXI_VIBROBLADE_C')
itemcodes.append('BOXI_VIBROSWORD_C')
itemcodes.append('BOXI_VIBRODOUBLE_C')
itemcodes.append('BOXI_VIBRODOUBLE_C')
itemcodes.append('BOXI_SHORTSWORD')
itemcodes.append('BOXI_LONGSWORD')
itemcodes.append('BOXI_QUARTERSTAFF')
itemcodes.append('BOXI_DOUBLESWORD')
itemcodes.append('BOXI_STUNBATON')
itemcodes.append('BOXI_FORCEPIKE')
itemcodes.append('BOXI_BATTLEAXE')
itemcodes.append('BOXI_WOOKWARBLADE')
itemcodes.append('BOXI_PLASMATORCH')
itemcodes.append('BOXI_DUELINGSWORD')
itemcodes.append('BOXI_VIBROCUTTER')
itemcodes.append('BOXI_VIBROBLADE')
itemcodes.append('BOXI_VIBROSWORD')
itemcodes.append('BOXI_VIBRODOUBLE')
itemcodes.append('BOXI_VIBRODOUBLE')
itemcodes.append('BOXI_MECHWEAP1_H')
itemcodes.append('BOXI_MECHWEAP2_H')
itemcodes.append('BOXI_MECHWEAP3_H')
itemcodes.append('BOXI_ENERGWEAP1_H')
itemcodes.append('BOXI_ENERGWEAP2_H')
itemcodes.append('BOXI_ENERGWEAP3_H')
itemcodes.append('BOXI_MECHWEAP1_D')
itemcodes.append('BOXI_MECHWEAP2_D')
itemcodes.append('BOXI_MECHWEAP3_D')
itemcodes.append('BOXI_ENERGWEAP1_D')
itemcodes.append('BOXI_ENERGWEAP2_D')
itemcodes.append('BOXI_ENERGWEAP3_D')
itemcodes.append('BOXI_SHIELD1_H')
itemcodes.append('BOXI_SHIELD2_H')
itemcodes.append('BOXI_SHIELD1_D')
itemcodes.append('BOXI_SHIELD2_D')
itemcodes.append('BOXI_STIM1')
itemcodes.append('BOXI_STIM2')
itemcodes.append('BOXI_IMPLANT1')
itemcodes.append('BOXI_IMPLANT2')
itemcodes.append('BOXI_IMPLANT3')
itemcodes.append('BOXI_ARMOR1')
itemcodes.append('BOXI_ARMOR2')
itemcodes.append('BOXI_ARMOR3')
itemcodes.append('BOXI_ARMOR4')
itemcodes.append('BOXI_ARMOR5')
itemcodes.append('BOXI_FLIGHTARMOR')
itemcodes.append('BOXI_JEDIROBE')
itemcodes.append('BOXI_KNIGHTROBE')
itemcodes.append('BOXI_MASTERROBE')
itemcodes.append('BOXI_MINERUNIF')
itemcodes.append('BOXI_RESTRICTROBE')
itemcodes.append('BOXI_JEDIARMOR')
itemcodes.append('BOXI_CLOTHING')
itemcodes.append('BOXI_DROID_LIGHTARMOR1')
itemcodes.append('BOXI_DROID_LIGHTARMOR2')
itemcodes.append('BOXI_DROID_LIGHTARMOR3')
itemcodes.append('BOXI_DROID_MEDIUMARMOR1')
itemcodes.append('BOXI_DROID_MEDIUMARMOR2')
itemcodes.append('BOXI_DROID_MEDIUMARMOR3')
itemcodes.append('BOXI_DROID_HEAVYARMOR1')
itemcodes.append('BOXI_DROID_HEAVYARMOR2')
itemcodes.append('BOXI_DROID_HEAVYARMOR3')
# Blasters - order has to be switched here too 
itemcodes.append('BOXI_BLASTER_PISTOL')
itemcodes.append('BOXI_HOLD_OUT_M')
itemcodes.append('BOXI_ION_PISTOL_M')
itemcodes.append('BOXI_DISRUPTOR_PISTOL_M')
itemcodes.append('BOXI_SONIC_PISTOL_M')
itemcodes.append('BOXI_HEAVY_PISTOL_M')
itemcodes.append('BOXI_CARBINE_M')
itemcodes.append('BOXI_HOLD_OUT')
itemcodes.append('BOXI_ION_PISTOL')
itemcodes.append('BOXI_DISRUPTOR_PISTOL')
itemcodes.append('BOXI_SONIC_PISTOL')
itemcodes.append('BOXI_HEAVY_PISTOL')
itemcodes.append('BOXI_CARBINE')
itemcodes.append('BOXI_BLASTER_RIFLE')
itemcodes.append('BOXI_ION_RIFLE')
itemcodes.append('BOXI_DISRUPTOR_RIFLE')
itemcodes.append('BOXI_SONIC_RIFLE')
itemcodes.append('BOXI_REPEATING_BLASTER')
itemcodes.append('BOXI_REPEATING_SONIC')
itemcodes.append('BOXI_REPEATING_DISRUPTOR')
itemcodes.append('BOXI_HEAVY_REPEATER')
itemcodes.append('BOXI_HEAVY_DISRUPTOR')
itemcodes.append('BOXI_BOWCASTER')
itemcodes.append('BOXI_MINING_PISTOL')
itemcodes.append('BOXI_MINING_RIFLE')
itemcodes.append('BOXI_STEALTH_FIELD')
itemcodes.append('BOXI_DROID_STEALTH')
# Enemy Equipment
itemcodes.append('BOXI_ENEMY_BUFF_EQUIP')
itemcodes.append('BOXI_ENEMY_SPELL_WEAPON')
itemcodes.append('BOXI_SITH_SHORTSWORD')
itemcodes.append('BOXI_SITH_DOUBLESWORD')
itemcodes.append('BOXI_ENEMY_MINING_LASER')
itemcodes.append('BOXI_ENEMY_ADVANCED_MINING_LASER')
itemcodes.append('BOXI_ENEMY_DISRUPTION_MINING_LASER')


items = list()


items.append(Item('wm_simple1', 'BOXI_SHORTSWORD'))
items.append(Item('wm_simple2', 'BOXI_LONGSWORD'))
items.append(Item('wm_simple3', 'BOXI_QUARTERSTAFF'))
items.append(Item('wm_simple4', 'BOXI_DOUBLESWORD'))
items.append(Item('wm_simple5', 'BOXI_STUNBATON'))
items.append(Item('wm_simple6', 'BOXI_FORCEPIKE'))
items.append(Item('wm_simple7', 'BOXI_BATTLEAXE'))
items.append(Item('wm_simple8', 'BOXI_WOOKWARBLADE'))
items.append(Item('wm_vibro1', 'BOXI_VIBROCUTTER'))
items.append(Item('wm_vibro2', 'BOXI_VIBROBLADE'))
items.append(Item('wm_vibro3', 'BOXI_VIBROSWORD'))
items.append(Item('wm_vibro4', 'BOXI_VIBRODOUBLE'))
items.append(Item('wm_trad1', 'BOXI_VIBROSWORD_C'))
items.append(Item('wm_trad2', 'BOXI_SHORTSWORD_C'))
items.append(Item('wm_trad3', 'BOXI_BATTLEAXE_C'))
items.append(Item('wm_trad4', 'BOXI_FORCEPIKE_C'))
items.append(Item('wm_trad5', 'BOXI_QUARTERSTAFF_C'))
items.append(Item('wm_trad6', 'BOXI_DOUBLESWORD_C'))
items.append(Item('wm_trad7', 'BOXI_DOUBLESWORD_C'))
items.append(Item('wm_trad8', 'BOXI_STUNBATON_C'))
items.append(Item('wm_trad9', 'BOXI_VIBROBLADE_C'))
items.append(Item('wm_trad10', 'BOXI_VIBRODOUBLE_C'))
items.append(Item('wm_trad11', 'BOXI_LONGSWORD_C'))
items.append(Item('wm_trad12', 'BOXI_SHORTSWORD_C'))
items.append(Item('wm_trad13', 'BOXI_SHORTSWORD_C'))
items.append(Item('wm_trad14', 'BOXI_WOOKWARBLADE_C'))
items.append(Item('wm_trad15', 'BOXI_QUARTERSTAFF'))
items.append(Item('wm_duel', 'BOXI_DUELINGSWORD'))
items.append(Item('wm_plasma', 'BOXI_PLASMATORCH'))

items.append(Item('wr_common1', 'BOXI_BLASTER_PISTOL'))
items.append(Item('wr_common2', 'BOXI_HOLD_OUT'))
items.append(Item('wr_common3', 'BOXI_ION_PISTOL'))
items.append(Item('wr_common4', 'BOXI_DISRUPTOR_PISTOL'))
items.append(Item('wr_common5', 'BOXI_SONIC_PISTOL'))
items.append(Item('wr_common6', 'BOXI_HEAVY_PISTOL'))
items.append(Item('wr_common7', 'BOXI_CARBINE'))
items.append(Item('wr_common8', 'BOXI_CARBINE'))
items.append(Item('wr_pistol1', 'BOXI_HOLD_OUT_M'))
items.append(Item('wr_pistol2', 'BOXI_ION_PISTOL_M'))
items.append(Item('wr_pistol3', 'BOXI_DISRUPTOR_PISTOL_M'))
items.append(Item('wr_pistol4', 'BOXI_SONIC_PISTOL_M'))
items.append(Item('wr_pistol5', 'BOXI_HEAVY_PISTOL_M'))
items.append(Item('wr_pistol6', 'BOXI_CARBINE_M'))
items.append(Item('wr_pistol7', 'BOXI_HOLD_OUT_M'))
items.append(Item('wr_pistol8', 'BOXI_ION_PISTOL_M'))
items.append(Item('wr_pistol9', 'BOXI_DISRUPTOR_PISTOL_M'))
items.append(Item('wr_pistol10', 'BOXI_SONIC_PISTOL_M'))
items.append(Item('wr_pistol11', 'BOXI_HEAVY_PISTOL_M'))
items.append(Item('wr_pistol12', 'BOXI_CARBINE_M'))
items.append(Item('wr_rifle1', 'BOXI_BLASTER_RIFLE'))
items.append(Item('wr_rifle2', 'BOXI_ION_RIFLE'))
items.append(Item('wr_rifle3', 'BOXI_SONIC_RIFLE'))
items.append(Item('wr_rifle4', 'BOXI_DISRUPTOR_RIFLE'))
items.append(Item('wr_rifle5', 'BOXI_SONIC_RIFLE'))
items.append(Item('wr_rifle6', 'BOXI_ION_RIFLE'))
items.append(Item('wr_rifle7', 'BOXI_BLASTER_RIFLE'))
items.append(Item('wr_rifle8', 'BOXI_BLASTER_RIFLE'))
items.append(Item('wr_rifle9', 'BOXI_BLASTER_RIFLE'))
items.append(Item('wr_rifle10', 'BOXI_DISRUPTOR_RIFLE'))
items.append(Item('wr_repeat1', 'BOXI_REPEATING_BLASTER'))
items.append(Item('wr_repeat2', 'BOXI_REPEATING_SONIC'))
items.append(Item('wr_repeat3', 'BOXI_REPEATING_DISRUPTOR'))
items.append(Item('wr_repeat4', 'BOXI_REPEATING_BLASTER'))
items.append(Item('wr_heavy1', 'BOXI_HEAVY_REPEATER'))
items.append(Item('wr_heavy2', 'BOXI_HEAVY_DISRUPTOR'))
items.append(Item('wr_bow1', 'BOXI_BOWCASTER'))
items.append(Item('wr_bow2', 'BOXI_BOWCASTER'))
items.append(Item('wr_mining1', 'BOXI_MINING_PISTOL'))
items.append(Item('wr_mining2', 'BOXI_MINING_RIFLE'))

items.append(Item('hw_fraggr1', 'BOXI_MECHWEAP1_H'))
items.append(Item('hw_stungr1', 'BOXI_MECHWEAP1_H'))
items.append(Item('hw_grappl1', 'BOXI_MECHWEAP1_H'))
items.append(Item('hw_psndt1', 'BOXI_MECHWEAP1_H'))
items.append(Item('hw_explrk2', 'BOXI_MECHWEAP2_H'))
items.append(Item('hw_gasgr2', 'BOXI_MECHWEAP2_H'))
items.append(Item('hw_soncgr2', 'BOXI_MECHWEAP2_H'))
items.append(Item('hw_plasgr2', 'BOXI_MECHWEAP2_H'))
items.append(Item('hw_radrk3', 'BOXI_MECHWEAP3_H'))
items.append(Item('hw_tankdt3', 'BOXI_MECHWEAP3_H'))
items.append(Item('hw_thmdet3', 'BOXI_MECHWEAP3_H'))
items.append(Item('hw_firerk3', 'BOXI_MECHWEAP3_H'))

items.append(Item('dw_fraggr1', 'BOXI_MECHWEAP1_D'))
items.append(Item('dw_stungr1', 'BOXI_MECHWEAP1_D'))
items.append(Item('dw_grappl1', 'BOXI_MECHWEAP1_D'))
items.append(Item('dw_psndt1', 'BOXI_MECHWEAP1_D'))
items.append(Item('dw_explrk2', 'BOXI_MECHWEAP2_D'))
items.append(Item('dw_gasgr2', 'BOXI_MECHWEAP2_D'))
items.append(Item('dw_soncgr2', 'BOXI_MECHWEAP2_D'))
items.append(Item('dw_plasgr2', 'BOXI_MECHWEAP2_D'))
items.append(Item('dw_radrk3', 'BOXI_MECHWEAP3_D'))
items.append(Item('dw_tankdt3', 'BOXI_MECHWEAP3_D'))
items.append(Item('dw_thmdet3', 'BOXI_MECHWEAP3_D'))
items.append(Item('dw_firerk3', 'BOXI_MECHWEAP3_D'))

# items.append(Item('hw_flame1', 'BOXI_ENERGWEAP1_H'))
# items.append(Item('hw_ion1', 'BOXI_ENERGWEAP1_H'))
# items.append(Item('hw_stun1', 'BOXI_ENERGWEAP1_H'))
# items.append(Item('hw_shock1', 'BOXI_ENERGWEAP1_H'))
# items.append(Item('hw_carbon2', 'BOXI_ENERGWEAP2_H'))
# items.append(Item('hw_plasma2', 'BOXI_ENERGWEAP2_H'))
# items.append(Item('hw_sonic2', 'BOXI_ENERGWEAP2_H'))
# items.append(Item('hw_hack2', 'BOXI_ENERGWEAP2_H'))
# items.append(Item('hw_sonic3', 'BOXI_ENERGWEAP3_H'))
# items.append(Item('hw_ion3', 'BOXI_ENERGWEAP3_H'))
# items.append(Item('hw_flame3', 'BOXI_ENERGWEAP3_H'))
# items.append(Item('hw_gravit3', 'BOXI_ENERGWEAP3_H'))
# items.append(Item('hw_flame1', '25'))
# items.append(Item('hw_ion1', '25'))
# items.append(Item('hw_stun1', '25'))
# items.append(Item('hw_shock1', '25'))
# items.append(Item('hw_carbon2', '25'))
# items.append(Item('hw_plasma2', '25'))
# items.append(Item('hw_sonic2', '25'))
# items.append(Item('hw_hack2', '25'))
# items.append(Item('hw_sonic3', '25'))
# items.append(Item('hw_ion3', '25'))
# items.append(Item('hw_flame3', '25'))
# items.append(Item('hw_gravit3', '25'))

# items.append(Item('dw_flame1', 'BOXI_ENERGWEAP1_D'))
# items.append(Item('dw_ion1', 'BOXI_ENERGWEAP1_D'))
# items.append(Item('dw_stun1', 'BOXI_ENERGWEAP1_D'))
# items.append(Item('dw_shock1', 'BOXI_ENERGWEAP1_D'))
# items.append(Item('dw_carbon2', 'BOXI_ENERGWEAP2_D'))
# items.append(Item('dw_plasma2', 'BOXI_ENERGWEAP2_D'))
# items.append(Item('dw_sonic2', 'BOXI_ENERGWEAP2_D'))
# items.append(Item('dw_hack2', 'BOXI_ENERGWEAP2_D'))
# items.append(Item('dw_sonic3', 'BOXI_ENERGWEAP3_D'))
# items.append(Item('dw_ion3', 'BOXI_ENERGWEAP3_D'))
# items.append(Item('dw_flame3', 'BOXI_ENERGWEAP3_D'))
# items.append(Item('dw_gravit3', 'BOXI_ENERGWEAP3_D'))

items.append(Item('hs_mining', 'BOXI_SHIELD1_H'))
items.append(Item('hs_energy', 'BOXI_SHIELD1_H'))
items.append(Item('hs_enviro', 'BOXI_SHIELD1_H'))
items.append(Item('hs_sith', 'BOXI_SHIELD2_H'))
items.append(Item('hs_mand', 'BOXI_SHIELD2_H'))
items.append(Item('hs_echani', 'BOXI_SHIELD2_H'))
items.append(Item('hs_zabrak', 'BOXI_SHIELD2_H'))

items.append(Item('ds_energy', 'BOXI_SHIELD1_D'))
items.append(Item('ds_enviro', 'BOXI_SHIELD1_D'))
items.append(Item('ds_radian', 'BOXI_SHIELD2_D'))
items.append(Item('ds_advanc', 'BOXI_SHIELD2_D'))
items.append(Item('ds_univer', 'BOXI_SHIELD2_D'))

items.append(Item('hs_str1', 'BOXI_STIM1'))
items.append(Item('hs_dex1', 'BOXI_STIM1'))
items.append(Item('hs_con1', 'BOXI_STIM1'))
items.append(Item('hs_str2', 'BOXI_STIM2'))
items.append(Item('hs_dex2', 'BOXI_STIM2'))
items.append(Item('hs_con2', 'BOXI_STIM2'))

items.append(Item('ha_light1', 'BOXI_ARMOR1'))
items.append(Item('ha_light2', 'BOXI_ARMOR1'))
items.append(Item('ha_light3', 'BOXI_ARMOR1'))
items.append(Item('ha_light4', 'BOXI_ARMOR1'))
# items.append(Item('ha_light5', 'BOXI_ARMOR1'))
# items.append(Item('ha_light6', 'BOXI_ARMOR1'))
items.append(Item('ha_combat1', 'BOXI_ARMOR2'))
items.append(Item('ha_combat2', 'BOXI_ARMOR2'))
items.append(Item('ha_combat3', 'BOXI_ARMOR2'))
items.append(Item('ha_combat4', 'BOXI_ARMOR2'))
items.append(Item('ha_combat5', 'BOXI_ARMOR2'))
items.append(Item('ha_combat6', 'BOXI_ARMOR2'))
items.append(Item('ha_mili1', 'BOXI_ARMOR3'))
items.append(Item('ha_mili2', 'BOXI_ARMOR3'))
items.append(Item('ha_mili3', 'BOXI_ARMOR3'))
items.append(Item('ha_mili4', 'BOXI_ARMOR3'))
items.append(Item('ha_mili5', 'BOXI_ARMOR3'))
items.append(Item('ha_battle1', 'BOXI_ARMOR4'))
items.append(Item('ha_battle2', 'BOXI_ARMOR4'))
items.append(Item('ha_battle3', 'BOXI_ARMOR4'))
items.append(Item('ha_battle4', 'BOXI_ARMOR4'))
items.append(Item('ha_battle5', 'BOXI_ARMOR4'))
items.append(Item('ha_battle5', 'BOXI_ARMOR4'))
items.append(Item('ha_master1', 'BOXI_ARMOR5'))
items.append(Item('ha_master2', 'BOXI_ARMOR5'))
items.append(Item('ha_master3', 'BOXI_ARMOR5'))
items.append(Item('ha_flight1', 'BOXI_FLIGHTARMOR'))
items.append(Item('ha_flight2', 'BOXI_FLIGHTARMOR'))
items.append(Item('ha_miner', 'BOXI_MINERUNIF'))
# items.append(Item('ha_cloth', 'BOXI_CLOTHING'))
items.append(Item('ha_robe1', 'BOXI_JEDIROBE'))
items.append(Item('ha_robe2', 'BOXI_JEDIROBE'))
items.append(Item('ha_robe3', 'BOXI_MASTERROBE'))
items.append(Item('ha_robe4', 'BOXI_JEDIROBE'))
items.append(Item('ha_robe5', 'BOXI_MASTERROBE'))
items.append(Item('ha_robe6', 'BOXI_JEDIROBE'))
items.append(Item('ha_robe7', 'BOXI_JEDIROBE'))
items.append(Item('ha_robe8', 'BOXI_MASTERROBE'))
items.append(Item('ha_robe9', 'BOXI_MASTERROBE'))
items.append(Item('ha_robe10', 'BOXI_KNIGHTROBE'))

items.append(Item('da_impact1', 'BOXI_DROID_LIGHTARMOR1'))
items.append(Item('da_impact2', 'BOXI_DROID_LIGHTARMOR2'))
items.append(Item('da_impact3', 'BOXI_DROID_LIGHTARMOR3'))
items.append(Item('da_mod1', 'BOXI_DROID_MEDIUMARMOR1'))
items.append(Item('da_mod2', 'BOXI_DROID_MEDIUMARMOR2'))
items.append(Item('da_mod3', 'BOXI_DROID_MEDIUMARMOR3'))
items.append(Item('da_dura1', 'BOXI_DROID_HEAVYARMOR1'))
items.append(Item('da_dura2', 'BOXI_DROID_HEAVYARMOR2'))
items.append(Item('da_dura3', 'BOXI_DROID_HEAVYARMOR3'))
items.append(Item('da_radian1', 'BOXI_DROID_HEAVYARMOR1'))
items.append(Item('da_radian2', 'BOXI_DROID_HEAVYARMOR2'))
items.append(Item('da_radian3', 'BOXI_DROID_HEAVYARMOR3'))
items.append(Item('da_energy1', 'BOXI_DROID_HEAVYARMOR1'))
items.append(Item('da_energy2', 'BOXI_DROID_HEAVYARMOR2'))
items.append(Item('da_energy3', 'BOXI_DROID_HEAVYARMOR3'))

# items.append(Item('hi_implan1', 'BOXI_IMPLANT1'))
# items.append(Item('hi_implan2', 'BOXI_IMPLANT1'))
# items.append(Item('hi_implan3', 'BOXI_IMPLANT1'))
# items.append(Item('hi_implan4', 'BOXI_IMPLANT1'))
# items.append(Item('hi_implan5', 'BOXI_IMPLANT1'))
# items.append(Item('hi_implan6', 'BOXI_IMPLANT1'))
# items.append(Item('hi_implan7', 'BOXI_IMPLANT1'))
# items.append(Item('hi_implan8', 'BOXI_IMPLANT1'))
# items.append(Item('hi_implan9', 'BOXI_IMPLANT1'))
# items.append(Item('hi_implan10', 'BOXI_IMPLANT1'))
# items.append(Item('hi_pack1', 'BOXI_IMPLANT2'))
# items.append(Item('hi_pack2', 'BOXI_IMPLANT2'))
# items.append(Item('hi_pack3', 'BOXI_IMPLANT2'))
# items.append(Item('hi_pack4', 'BOXI_IMPLANT2'))
# items.append(Item('hi_pack5', 'BOXI_IMPLANT2'))
# items.append(Item('hi_pack6', 'BOXI_IMPLANT2'))
# items.append(Item('hi_pack7', 'BOXI_IMPLANT2'))
# items.append(Item('hi_pack8', 'BOXI_IMPLANT2'))
# items.append(Item('hi_pack9', 'BOXI_IMPLANT2'))
# items.append(Item('hi_pack10', 'BOXI_IMPLANT2'))
# items.append(Item('hi_system1', 'BOXI_IMPLANT3'))
# items.append(Item('hi_system2', 'BOXI_IMPLANT3'))
# items.append(Item('hi_system3', 'BOXI_IMPLANT3'))
# items.append(Item('hi_system4', 'BOXI_IMPLANT3'))
# items.append(Item('hi_system5', 'BOXI_IMPLANT3'))
# items.append(Item('hi_system6', 'BOXI_IMPLANT3'))
# items.append(Item('hi_system7', 'BOXI_IMPLANT3'))
# items.append(Item('hi_system8', 'BOXI_IMPLANT3'))
# items.append(Item('hi_system9', 'BOXI_IMPLANT3'))
# items.append(Item('hi_system10', 'BOXI_IMPLANT3'))

items.append(Item('hb_steal', 'BOXI_STEALTH_FIELD'))
items.append(Item('ds_steal', 'BOXI_DROID_STEALTH'))


items.append(Item('ew_sithss1', 'BOXI_SITH_SHORTSWORD'))
items.append(Item('ew_sithps1', 'BOXI_SITH_SHORTSWORD'))
items.append(Item('ew_sithds1', 'BOXI_SITH_DOUBLESWORD'))
items.append(Item('ew_minels1', 'BOXI_ENEMY_MINING_LASER'))
items.append(Item('ew_minels2', 'BOXI_ENEMY_ADVANCED_MINING_LASER'))
items.append(Item('ew_mineds1', 'BOXI_ENEMY_DISRUPTION_MINING_LASER'))

items.append(Item('es_minesh1', 'BOXI_ENEMY_BUFF_EQUIP'))
items.append(Item('es_minesh2', 'BOXI_ENEMY_BUFF_EQUIP'))
items.append(Item('ew_soncdt1', 'BOXI_ENEMY_SPELL_WEAPON'))
items.append(Item('ew_soncdt2', 'BOXI_ENEMY_SPELL_WEAPON'))
items.append(Item('ew_burn1', 'BOXI_ENEMY_SPELL_WEAPON'))
items.append(Item('ew_burn2', 'BOXI_ENEMY_SPELL_WEAPON'))
items.append(Item('ew_firesu1', 'BOXI_ENEMY_SPELL_WEAPON'))
items.append(Item('et_firesu1', 'BOXI_ENEMY_SPELL_WEAPON'))
items.append(Item('ew_minefr', 'BOXI_ENEMY_SPELL_WEAPON'))
items.append(Item('ew_minecb', 'BOXI_ENEMY_SPELL_WEAPON'))




featdescs = list(featnames)
for i in range(0, len(featdescs)):
	featdescs[i] = featdescs[i].replace('_N', '_D')



# TODO: Characters and the feats they have
characters = []
# Feats can be strings or numbers
characters.append(Character('p_t3m4', ['BOX_BLASTERS1', 'BOX_ENERGWEAP1']))
characters.append(Character('p_atton', ['BOX_ARMOR1', 'BOX_ARMOR2', 'BOX_BLASTERS1', 'BOX_BLASTERS2', 'BOX_MELEE1', 'BOX_STLHGEN']))
characters.append(Character('p_kreia', ['BOX_BLASTERS1', 'BOX_MELEE1', 'BOX_SABERS', 'BOX_FORCE1', 'BOX_FORCE2']))
characters.append(Character('p_baodur', ['BOX_ARMOR1', 'BOX_ARMOR2', 'BOX_BLASTERS1', 'BOX_BLASTERS2', 'BOX_MELEE1',
	'BOX_SHIELDS1', 'BOX_SHIELDS2', 'BOX_TURRET1', 'BOX_TURRET2', 'BOX_TURRET3']))
characters.append(Character('p_handmaiden', ['BOX_BLASTERS1', 'BOX_MELEE1', 'BOX_MELEE2']))
characters.append(Character('p_disciple', ['BOX_ARMOR1', 'BOX_ARMOR2', 'BOX_ARMOR3', 'BOX_BLASTERS1', 'BOX_BLASTERS2', 'BOX_BLASTERS3',
	'BOX_MELEE1', 'BOX_MECHWEAP1', 'BOX_MECHWEAP1', 'BOX_SHIELDS1', 'BOX_STIMS1', 'BOX_IMPLANTS1']))
characters.append(Character('p_visas', ['BOX_BLASTERS1', 'BOX_MELEE1', 'BOX_SABERS', 'BOX_FORCE1']))
characters.append(Character('p_mira', ['BOX_ARMOR1', 'BOX_ARMOR2', 'BOX_BLASTERS1', 'BOX_BLASTERS2', 'BOX_MELEE1',
	'BOX_MECHWEAP1', 'BOX_MECHWEAP2', 'BOX_TURRET1']))
characters.append(Character('p_hanharr', ['BOX_BLASTERS1', 'BOX_BLASTERS2', 'BOX_MELEE1', 'BOX_WOOKWEAP']))
characters.append(Character('p_g0t0', ['BOX_DROIDARMOR1', 'BOX_BLASTERS1', 'BOX_ENERGWEAP1', 'BOX_ENERGWEAP2', 'BOX_TURRET1']))
characters.append(Character('p_mand', ['BOX_ARMOR1', 'BOX_ARMOR2', 'BOX_ARMOR3', 'BOX_ARMOR4', 'BOX_BLASTERS1', 'BOX_BLASTERS2',
	'BOX_BLASTERS3', 'BOX_BLASTERS4', 'BOX_MELEE1', 'BOX_MELEE2', 'BOX_IMPLANTS1', 'BOX_IMPLANTS2', 'BOX_IMPLANTS3', 'BOX_STLHGEN']))
characters.append(Character('p_hk47', ['BOX_DROIDARMOR1', 'BOX_BLASTERS1', 'BOX_BLASTERS2', 'BOX_BLASTERS3']))


charactersout = ''
for character in characters:
	charactersout = charactersout + '[' + character.filename + '.utc]\n'
	for i in range(0, len(character.feats)):
		charactersout = charactersout + 'AddField' + str(i) + '=gff_' + character.filename + '_FeatList_' + str(i) + '\n'
	for i in range(0, len(character.feats)):
		charactersout = charactersout + '[gff_' + character.filename + '_FeatList_' + str(i) + ']\n'
		charactersout = charactersout + 'FieldType=Struct\n'
		charactersout = charactersout + 'Path=FeatList\n'
		charactersout = charactersout + 'Label=\n'
		charactersout = charactersout + 'TypeId=1\n'
		charactersout = charactersout + 'AddField0=gff_' + character.filename + '_Feat_' + str(i) + '\n'
		charactersout = charactersout + '[gff_' + character.filename + '_Feat_' + str(i) + ']\n'
		charactersout = charactersout + 'FieldType=Word\n'
		charactersout = charactersout + 'Label=Feat\n'
		charactersout = charactersout + 'Value=' + str(character.feats[i]) + '\n'

index = 1
for feat in featcodes:
	charactersout = charactersout.replace(feat, '2DAMEMORY' + str(index))
	index = index + 1


# This creates the box_inc_force.nss

incout = 'error'
with open('box_inc_force.nss', 'r') as file:
	incout = file.read()
	
	index = 1
	for feat in featcodes:
		incout = incout.replace(feat, '2DAMEMORY' + str(index))
		index = index + 1

with open('tslpatchdata\\box_inc_force.nss', 'w') as file:
	file.write(incout)
	
	

# This creates the changes.ini
	

featout = 'error'
with open('feats.ini', 'r') as file:
	featout = file.read()
	
	index = 0
	for feat in featnames:
		featout = featout.replace(feat, 'StrRef' + str(index))
		index = index + 1
	
	for feat in featdescs:
		featout = featout.replace(feat, 'StrRef' + str(index))
		index = index + 1
	
	index = 1
	for feat in featcodes:
		featout = featout.replace(feat, '2DAMEMORY' + str(index))
		index = index + 1


baseitemsout = 'error'
with open('baseitems.ini', 'r') as file:
	baseitemsout = file.read()
	
	index = 1
	for feat in featcodes:
		baseitemsout = baseitemsout.replace(feat, '2DAMEMORY' + str(index))
		index = index + 1
	
	for item in itemcodes:
		baseitemsout = baseitemsout.replace(item, '2DAMEMORY' + str(index))
		index = index + 1

		
itemsout = ''
for item in items:
	itemsout = itemsout + '[' + item.filename + '.uti]\nBaseItem=' + item.baseitem + '\n'

index = 1
for feat in featcodes:
	itemsout = itemsout.replace(feat, '2DAMEMORY' + str(index))
	index = index + 1

for item in itemcodes:
	itemsout = itemsout.replace(item, '2DAMEMORY' + str(index))
	index = index + 1

	
with open('tslpatchdata\\featitem.ini', 'w') as file:
	
	file.write('; This file was generated by genfile.py\n')
	file.write('\n')
	file.write('[Settings]\n')
	file.write('FileExists=1\n')
	file.write('ConfirmMessage=N/A\n')
	file.write('LogLevel=4\n')
	file.write('InstallerMode=1\n')
	file.write('BackupFiles=0\n')
	file.write('PlaintextLog=1\n')
	file.write('LookupGameFolder=1\n')
	file.write('LookupGameNumber=2\n')
	file.write('SaveProcessedScripts=1\n')
	file.write('\n')
	file.write('[TLKList]\n')
	
	index = 0
	for feat in featnames:
		file.write('StrRef' + str(index) + '=' + str(index) + '\n')
		index = index + 1
	
	for feat in featdescs:
		file.write('StrRef' + str(index) + '=' + str(index) + '\n')
		index = index + 1
	
	
	file.write('\n')
	file.write('[InstallList]\n')
	file.write('\n')
	file.write('[2DAList]\n')
	file.write('Table0=feat.2da\n')
	file.write('Table1=baseitems.2da\n')
	file.write('\n')
	file.write('[GFFList]\n')
	
	index = 0
	for item in items:
		file.write('File' + str(index) + '=' + item.filename + '.uti\n')
		index = index + 1
	
	for character in characters:
		file.write('File' + str(index) + '=' + character.filename + '.utc\n')
		index = index + 1
	
	
	file.write('\n')
	file.write('[CompileList]\n')
	file.write('Replace0=box_inc_force.nss\n')
	file.write('\n')
	file.write('[SSFList]\n')
	file.write('\n')
	
	file.write(featout)
	file.write(baseitemsout)
	
	file.write('\n')
	file.write('\n')
	file.write('\n')
	file.write(itemsout)
	file.write(charactersout)
	
	

