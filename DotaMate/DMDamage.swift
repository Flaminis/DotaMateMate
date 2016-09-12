//
//  DMDamage.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMDamage: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMDamageNpcDotaHeroBristlebackKey: String = "npc_dota_hero_bristleback"
	internal let kDMDamageNpcDotaHeroAbaddonKey: String = "npc_dota_hero_abaddon"
	internal let kDMDamageNpcDotaHeroEmberSpiritKey: String = "npc_dota_hero_ember_spirit"
	internal let kDMDamageNpcDotaHeroCrystalMaidenKey: String = "npc_dota_hero_crystal_maiden"
	internal let kDMDamageNpcDotaNeutralGiantWolfKey: String = "npc_dota_neutral_giant_wolf"
	internal let kDMDamageNpcDotaHeroNevermoreKey: String = "npc_dota_hero_nevermore"
	internal let kDMDamageNpcDotaNeutralKoboldTunnelerKey: String = "npc_dota_neutral_kobold_tunneler"
	internal let kDMDamageNpcDotaNeutralMudGolemSplitKey: String = "npc_dota_neutral_mud_golem_split"
	internal let kDMDamageNpcDotaBadguysTower1MidKey: String = "npc_dota_badguys_tower1_mid"
	internal let kDMDamageNpcDotaCourierKey: String = "npc_dota_courier"
	internal let kDMDamageNpcDotaNeutralKoboldTaskmasterKey: String = "npc_dota_neutral_kobold_taskmaster"
	internal let kDMDamageNpcDotaHeroKunkkaKey: String = "npc_dota_hero_kunkka"
	internal let kDMDamageNpcDotaGoodguysFortKey: String = "npc_dota_goodguys_fort"
	internal let kDMDamageNpcDotaNeutralGhostKey: String = "npc_dota_neutral_ghost"
	internal let kDMDamageNpcDotaGoodguysTower3BotKey: String = "npc_dota_goodguys_tower3_bot"
	internal let kDMDamageNpcDotaNeutralRockGolemKey: String = "npc_dota_neutral_rock_golem"
	internal let kDMDamageNpcDotaNeutralPolarFurbolgUrsaWarriorKey: String = "npc_dota_neutral_polar_furbolg_ursa_warrior"
	internal let kDMDamageNpcDotaNeutralKoboldKey: String = "npc_dota_neutral_kobold"
	internal let kDMDamageNpcDotaBadguysTower1BotKey: String = "npc_dota_badguys_tower1_bot"
	internal let kDMDamageNpcDotaNeutralSatyrTricksterKey: String = "npc_dota_neutral_satyr_trickster"
	internal let kDMDamageNpcDotaGoodguysTower2BotKey: String = "npc_dota_goodguys_tower2_bot"
	internal let kDMDamageNpcDotaNeutralEnragedWildkinKey: String = "npc_dota_neutral_enraged_wildkin"
	internal let kDMDamageNpcDotaNeutralBlackDrakeKey: String = "npc_dota_neutral_black_drake"
	internal let kDMDamageNpcDotaHeroVengefulspiritKey: String = "npc_dota_hero_vengefulspirit"
	internal let kDMDamageNpcDotaGoodguysMeleeRaxMidKey: String = "npc_dota_goodguys_melee_rax_mid"
	internal let kDMDamageNpcDotaBadguysTower3MidKey: String = "npc_dota_badguys_tower3_mid"
	internal let kDMDamageNpcDotaNeutralHarpyStormKey: String = "npc_dota_neutral_harpy_storm"
	internal let kDMDamageNpcDotaBadguysTower2MidKey: String = "npc_dota_badguys_tower2_mid"
	internal let kDMDamageNpcDotaCreepBadguysMeleeKey: String = "npc_dota_creep_badguys_melee"
	internal let kDMDamageNpcDotaNeutralOgreMaulerKey: String = "npc_dota_neutral_ogre_mauler"
	internal let kDMDamageNpcDotaGoodguysTower1BotKey: String = "npc_dota_goodguys_tower1_bot"
	internal let kDMDamageNpcDotaNeutralGraniteGolemKey: String = "npc_dota_neutral_granite_golem"
	internal let kDMDamageNpcDotaNeutralFelBeastKey: String = "npc_dota_neutral_fel_beast"
	internal let kDMDamageNpcDotaGoodguysTower1TopKey: String = "npc_dota_goodguys_tower1_top"
	internal let kDMDamageNpcDotaNeutralGnollAssassinKey: String = "npc_dota_neutral_gnoll_assassin"
	internal let kDMDamageNpcDotaNeutralBlackDragonKey: String = "npc_dota_neutral_black_dragon"
	internal let kDMDamageNpcDotaNeutralMudGolemKey: String = "npc_dota_neutral_mud_golem"
	internal let kDMDamageNpcDotaSentryWardsKey: String = "npc_dota_sentry_wards"
	internal let kDMDamageNpcDotaNeutralCentaurKhanKey: String = "npc_dota_neutral_centaur_khan"
	internal let kDMDamageNpcDotaHeroViperKey: String = "npc_dota_hero_viper"
	internal let kDMDamageNpcDotaNeutralPolarFurbolgChampionKey: String = "npc_dota_neutral_polar_furbolg_champion"
	internal let kDMDamageNpcDotaNeutralBigThunderLizardKey: String = "npc_dota_neutral_big_thunder_lizard"
	internal let kDMDamageNpcDotaNeutralAlphaWolfKey: String = "npc_dota_neutral_alpha_wolf"
	internal let kDMDamageNpcDotaNeutralForestTrollHighPriestKey: String = "npc_dota_neutral_forest_troll_high_priest"
	internal let kDMDamageNpcDotaGoodguysTower3MidKey: String = "npc_dota_goodguys_tower3_mid"
	internal let kDMDamageNpcDotaCreepBadguysRangedUpgradedKey: String = "npc_dota_creep_badguys_ranged_upgraded"
	internal let kDMDamageIllusionNpcDotaHeroEmberSpiritKey: String = "illusion_npc_dota_hero_ember_spirit"
	internal let kDMDamageNpcDotaNeutralCentaurOutrunnerKey: String = "npc_dota_neutral_centaur_outrunner"
	internal let kDMDamageIllusionNpcDotaHeroCrystalMaidenKey: String = "illusion_npc_dota_hero_crystal_maiden"
	internal let kDMDamageNpcDotaGoodguysTower2TopKey: String = "npc_dota_goodguys_tower2_top"
	internal let kDMDamageNpcDotaGoodguysFillersKey: String = "npc_dota_goodguys_fillers"
	internal let kDMDamageNpcDotaDarkTrollWarlordSkeletonWarriorKey: String = "npc_dota_dark_troll_warlord_skeleton_warrior"
	internal let kDMDamageNpcDotaNeutralWildkinKey: String = "npc_dota_neutral_wildkin"
	internal let kDMDamageNpcDotaBadguysTower1TopKey: String = "npc_dota_badguys_tower1_top"
	internal let kDMDamageNpcDotaNeutralHarpyScoutKey: String = "npc_dota_neutral_harpy_scout"
	internal let kDMDamageNpcDotaGoodguysTower2MidKey: String = "npc_dota_goodguys_tower2_mid"
	internal let kDMDamageNpcDotaNeutralSatyrSoulstealerKey: String = "npc_dota_neutral_satyr_soulstealer"
	internal let kDMDamageNpcDotaGoodguysTower1MidKey: String = "npc_dota_goodguys_tower1_mid"
	internal let kDMDamageIllusionNpcDotaHeroJuggernautKey: String = "illusion_npc_dota_hero_juggernaut"
	internal let kDMDamageNpcDotaBadguysTower2BotKey: String = "npc_dota_badguys_tower2_bot"
	internal let kDMDamageNpcDotaNeutralSatyrHellcallerKey: String = "npc_dota_neutral_satyr_hellcaller"
	internal let kDMDamageNpcDotaCreepGoodguysMeleeKey: String = "npc_dota_creep_goodguys_melee"
	internal let kDMDamageNpcDotaGoodguysRangeRaxMidKey: String = "npc_dota_goodguys_range_rax_mid"
	internal let kDMDamageNpcDotaCreepBadguysRangedKey: String = "npc_dota_creep_badguys_ranged"
	internal let kDMDamageNpcDotaJuggernautHealingWardKey: String = "npc_dota_juggernaut_healing_ward"
	internal let kDMDamageNpcDotaObserverWardsKey: String = "npc_dota_observer_wards"
	internal let kDMDamageNpcDotaNeutralSmallThunderLizardKey: String = "npc_dota_neutral_small_thunder_lizard"
	internal let kDMDamageNpcDotaNeutralDarkTrollWarlordKey: String = "npc_dota_neutral_dark_troll_warlord"
	internal let kDMDamageNpcDotaBadguysTower2TopKey: String = "npc_dota_badguys_tower2_top"
	internal let kDMDamageNpcDotaBadguysSiegeUpgradedKey: String = "npc_dota_badguys_siege_upgraded"
	internal let kDMDamageNpcDotaGoodguysSiegeKey: String = "npc_dota_goodguys_siege"
	internal let kDMDamageIllusionNpcDotaHeroViperKey: String = "illusion_npc_dota_hero_viper"
	internal let kDMDamageNpcDotaGoodguysTower4Key: String = "npc_dota_goodguys_tower4"
	internal let kDMDamageNpcDotaRoshanKey: String = "npc_dota_roshan"
	internal let kDMDamageNpcDotaHeroJuggernautKey: String = "npc_dota_hero_juggernaut"
	internal let kDMDamageNpcDotaBadguysSiegeKey: String = "npc_dota_badguys_siege"
	internal let kDMDamageNpcDotaNeutralOgreMagiKey: String = "npc_dota_neutral_ogre_magi"
	internal let kDMDamageNpcDotaNeutralForestTrollBerserkerKey: String = "npc_dota_neutral_forest_troll_berserker"
	internal let kDMDamageNpcDotaBadguysMeleeRaxMidKey: String = "npc_dota_badguys_melee_rax_mid"
	internal let kDMDamageNpcDotaHeroArcWardenKey: String = "npc_dota_hero_arc_warden"
	internal let kDMDamageNpcDotaCreepGoodguysRangedKey: String = "npc_dota_creep_goodguys_ranged"
	internal let kDMDamageNpcDotaNeutralDarkTrollKey: String = "npc_dota_neutral_dark_troll"


    // MARK: Properties
	public var npcDotaHeroBristleback: Int?
	public var npcDotaHeroAbaddon: Int?
	public var npcDotaHeroEmberSpirit: Int?
	public var npcDotaHeroCrystalMaiden: Int?
	public var npcDotaNeutralGiantWolf: Int?
	public var npcDotaHeroNevermore: Int?
	public var npcDotaNeutralKoboldTunneler: Int?
	public var npcDotaNeutralMudGolemSplit: Int?
	public var npcDotaBadguysTower1Mid: Int?
	public var npcDotaCourier: Int?
	public var npcDotaNeutralKoboldTaskmaster: Int?
	public var npcDotaHeroKunkka: Int?
	public var npcDotaGoodguysFort: Int?
	public var npcDotaNeutralGhost: Int?
	public var npcDotaGoodguysTower3Bot: Int?
	public var npcDotaNeutralRockGolem: Int?
	public var npcDotaNeutralPolarFurbolgUrsaWarrior: Int?
	public var npcDotaNeutralKobold: Int?
	public var npcDotaBadguysTower1Bot: Int?
	public var npcDotaNeutralSatyrTrickster: Int?
	public var npcDotaGoodguysTower2Bot: Int?
	public var npcDotaNeutralEnragedWildkin: Int?
	public var npcDotaNeutralBlackDrake: Int?
	public var npcDotaHeroVengefulspirit: Int?
	public var npcDotaGoodguysMeleeRaxMid: Int?
	public var npcDotaBadguysTower3Mid: Int?
	public var npcDotaNeutralHarpyStorm: Int?
	public var npcDotaBadguysTower2Mid: Int?
	public var npcDotaCreepBadguysMelee: Int?
	public var npcDotaNeutralOgreMauler: Int?
	public var npcDotaGoodguysTower1Bot: Int?
	public var npcDotaNeutralGraniteGolem: Int?
	public var npcDotaNeutralFelBeast: Int?
	public var npcDotaGoodguysTower1Top: Int?
	public var npcDotaNeutralGnollAssassin: Int?
	public var npcDotaNeutralBlackDragon: Int?
	public var npcDotaNeutralMudGolem: Int?
	public var npcDotaSentryWards: Int?
	public var npcDotaNeutralCentaurKhan: Int?
	public var npcDotaHeroViper: Int?
	public var npcDotaNeutralPolarFurbolgChampion: Int?
	public var npcDotaNeutralBigThunderLizard: Int?
	public var npcDotaNeutralAlphaWolf: Int?
	public var npcDotaNeutralForestTrollHighPriest: Int?
	public var npcDotaGoodguysTower3Mid: Int?
	public var npcDotaCreepBadguysRangedUpgraded: Int?
	public var illusionNpcDotaHeroEmberSpirit: Int?
	public var npcDotaNeutralCentaurOutrunner: Int?
	public var illusionNpcDotaHeroCrystalMaiden: Int?
	public var npcDotaGoodguysTower2Top: Int?
	public var npcDotaGoodguysFillers: Int?
	public var npcDotaDarkTrollWarlordSkeletonWarrior: Int?
	public var npcDotaNeutralWildkin: Int?
	public var npcDotaBadguysTower1Top: Int?
	public var npcDotaNeutralHarpyScout: Int?
	public var npcDotaGoodguysTower2Mid: Int?
	public var npcDotaNeutralSatyrSoulstealer: Int?
	public var npcDotaGoodguysTower1Mid: Int?
	public var illusionNpcDotaHeroJuggernaut: Int?
	public var npcDotaBadguysTower2Bot: Int?
	public var npcDotaNeutralSatyrHellcaller: Int?
	public var npcDotaCreepGoodguysMelee: Int?
	public var npcDotaGoodguysRangeRaxMid: Int?
	public var npcDotaCreepBadguysRanged: Int?
	public var npcDotaJuggernautHealingWard: Int?
	public var npcDotaObserverWards: Int?
	public var npcDotaNeutralSmallThunderLizard: Int?
	public var npcDotaNeutralDarkTrollWarlord: Int?
	public var npcDotaBadguysTower2Top: Int?
	public var npcDotaBadguysSiegeUpgraded: Int?
	public var npcDotaGoodguysSiege: Int?
	public var illusionNpcDotaHeroViper: Int?
	public var npcDotaGoodguysTower4: Int?
	public var npcDotaRoshan: Int?
	public var npcDotaHeroJuggernaut: Int?
	public var npcDotaBadguysSiege: Int?
	public var npcDotaNeutralOgreMagi: Int?
	public var npcDotaNeutralForestTrollBerserker: Int?
	public var npcDotaBadguysMeleeRaxMid: Int?
	public var npcDotaHeroArcWarden: Int?
	public var npcDotaCreepGoodguysRanged: Int?
	public var npcDotaNeutralDarkTroll: Int?


    // MARK: SwiftyJSON Initalizers
    /**
    Initates the class based on the object
    - parameter object: The object of either Dictionary or Array kind that was passed.
    - returns: An initalized instance of the class.
    */
    convenience public init(object: AnyObject) {
        self.init(json: JSON(object))
    }

    /**
    Initates the class based on the JSON that was passed.
    - parameter json: JSON object from SwiftyJSON.
    - returns: An initalized instance of the class.
    */
    public init(json: JSON) {
		npcDotaHeroBristleback = json[kDMDamageNpcDotaHeroBristlebackKey].int
		npcDotaHeroAbaddon = json[kDMDamageNpcDotaHeroAbaddonKey].int
		npcDotaHeroEmberSpirit = json[kDMDamageNpcDotaHeroEmberSpiritKey].int
		npcDotaHeroCrystalMaiden = json[kDMDamageNpcDotaHeroCrystalMaidenKey].int
		npcDotaNeutralGiantWolf = json[kDMDamageNpcDotaNeutralGiantWolfKey].int
		npcDotaHeroNevermore = json[kDMDamageNpcDotaHeroNevermoreKey].int
		npcDotaNeutralKoboldTunneler = json[kDMDamageNpcDotaNeutralKoboldTunnelerKey].int
		npcDotaNeutralMudGolemSplit = json[kDMDamageNpcDotaNeutralMudGolemSplitKey].int
		npcDotaBadguysTower1Mid = json[kDMDamageNpcDotaBadguysTower1MidKey].int
		npcDotaCourier = json[kDMDamageNpcDotaCourierKey].int
		npcDotaNeutralKoboldTaskmaster = json[kDMDamageNpcDotaNeutralKoboldTaskmasterKey].int
		npcDotaHeroKunkka = json[kDMDamageNpcDotaHeroKunkkaKey].int
		npcDotaGoodguysFort = json[kDMDamageNpcDotaGoodguysFortKey].int
		npcDotaNeutralGhost = json[kDMDamageNpcDotaNeutralGhostKey].int
		npcDotaGoodguysTower3Bot = json[kDMDamageNpcDotaGoodguysTower3BotKey].int
		npcDotaNeutralRockGolem = json[kDMDamageNpcDotaNeutralRockGolemKey].int
		npcDotaNeutralPolarFurbolgUrsaWarrior = json[kDMDamageNpcDotaNeutralPolarFurbolgUrsaWarriorKey].int
		npcDotaNeutralKobold = json[kDMDamageNpcDotaNeutralKoboldKey].int
		npcDotaBadguysTower1Bot = json[kDMDamageNpcDotaBadguysTower1BotKey].int
		npcDotaNeutralSatyrTrickster = json[kDMDamageNpcDotaNeutralSatyrTricksterKey].int
		npcDotaGoodguysTower2Bot = json[kDMDamageNpcDotaGoodguysTower2BotKey].int
		npcDotaNeutralEnragedWildkin = json[kDMDamageNpcDotaNeutralEnragedWildkinKey].int
		npcDotaNeutralBlackDrake = json[kDMDamageNpcDotaNeutralBlackDrakeKey].int
		npcDotaHeroVengefulspirit = json[kDMDamageNpcDotaHeroVengefulspiritKey].int
		npcDotaGoodguysMeleeRaxMid = json[kDMDamageNpcDotaGoodguysMeleeRaxMidKey].int
		npcDotaBadguysTower3Mid = json[kDMDamageNpcDotaBadguysTower3MidKey].int
		npcDotaNeutralHarpyStorm = json[kDMDamageNpcDotaNeutralHarpyStormKey].int
		npcDotaBadguysTower2Mid = json[kDMDamageNpcDotaBadguysTower2MidKey].int
		npcDotaCreepBadguysMelee = json[kDMDamageNpcDotaCreepBadguysMeleeKey].int
		npcDotaNeutralOgreMauler = json[kDMDamageNpcDotaNeutralOgreMaulerKey].int
		npcDotaGoodguysTower1Bot = json[kDMDamageNpcDotaGoodguysTower1BotKey].int
		npcDotaNeutralGraniteGolem = json[kDMDamageNpcDotaNeutralGraniteGolemKey].int
		npcDotaNeutralFelBeast = json[kDMDamageNpcDotaNeutralFelBeastKey].int
		npcDotaGoodguysTower1Top = json[kDMDamageNpcDotaGoodguysTower1TopKey].int
		npcDotaNeutralGnollAssassin = json[kDMDamageNpcDotaNeutralGnollAssassinKey].int
		npcDotaNeutralBlackDragon = json[kDMDamageNpcDotaNeutralBlackDragonKey].int
		npcDotaNeutralMudGolem = json[kDMDamageNpcDotaNeutralMudGolemKey].int
		npcDotaSentryWards = json[kDMDamageNpcDotaSentryWardsKey].int
		npcDotaNeutralCentaurKhan = json[kDMDamageNpcDotaNeutralCentaurKhanKey].int
		npcDotaHeroViper = json[kDMDamageNpcDotaHeroViperKey].int
		npcDotaNeutralPolarFurbolgChampion = json[kDMDamageNpcDotaNeutralPolarFurbolgChampionKey].int
		npcDotaNeutralBigThunderLizard = json[kDMDamageNpcDotaNeutralBigThunderLizardKey].int
		npcDotaNeutralAlphaWolf = json[kDMDamageNpcDotaNeutralAlphaWolfKey].int
		npcDotaNeutralForestTrollHighPriest = json[kDMDamageNpcDotaNeutralForestTrollHighPriestKey].int
		npcDotaGoodguysTower3Mid = json[kDMDamageNpcDotaGoodguysTower3MidKey].int
		npcDotaCreepBadguysRangedUpgraded = json[kDMDamageNpcDotaCreepBadguysRangedUpgradedKey].int
		illusionNpcDotaHeroEmberSpirit = json[kDMDamageIllusionNpcDotaHeroEmberSpiritKey].int
		npcDotaNeutralCentaurOutrunner = json[kDMDamageNpcDotaNeutralCentaurOutrunnerKey].int
		illusionNpcDotaHeroCrystalMaiden = json[kDMDamageIllusionNpcDotaHeroCrystalMaidenKey].int
		npcDotaGoodguysTower2Top = json[kDMDamageNpcDotaGoodguysTower2TopKey].int
		npcDotaGoodguysFillers = json[kDMDamageNpcDotaGoodguysFillersKey].int
		npcDotaDarkTrollWarlordSkeletonWarrior = json[kDMDamageNpcDotaDarkTrollWarlordSkeletonWarriorKey].int
		npcDotaNeutralWildkin = json[kDMDamageNpcDotaNeutralWildkinKey].int
		npcDotaBadguysTower1Top = json[kDMDamageNpcDotaBadguysTower1TopKey].int
		npcDotaNeutralHarpyScout = json[kDMDamageNpcDotaNeutralHarpyScoutKey].int
		npcDotaGoodguysTower2Mid = json[kDMDamageNpcDotaGoodguysTower2MidKey].int
		npcDotaNeutralSatyrSoulstealer = json[kDMDamageNpcDotaNeutralSatyrSoulstealerKey].int
		npcDotaGoodguysTower1Mid = json[kDMDamageNpcDotaGoodguysTower1MidKey].int
		illusionNpcDotaHeroJuggernaut = json[kDMDamageIllusionNpcDotaHeroJuggernautKey].int
		npcDotaBadguysTower2Bot = json[kDMDamageNpcDotaBadguysTower2BotKey].int
		npcDotaNeutralSatyrHellcaller = json[kDMDamageNpcDotaNeutralSatyrHellcallerKey].int
		npcDotaCreepGoodguysMelee = json[kDMDamageNpcDotaCreepGoodguysMeleeKey].int
		npcDotaGoodguysRangeRaxMid = json[kDMDamageNpcDotaGoodguysRangeRaxMidKey].int
		npcDotaCreepBadguysRanged = json[kDMDamageNpcDotaCreepBadguysRangedKey].int
		npcDotaJuggernautHealingWard = json[kDMDamageNpcDotaJuggernautHealingWardKey].int
		npcDotaObserverWards = json[kDMDamageNpcDotaObserverWardsKey].int
		npcDotaNeutralSmallThunderLizard = json[kDMDamageNpcDotaNeutralSmallThunderLizardKey].int
		npcDotaNeutralDarkTrollWarlord = json[kDMDamageNpcDotaNeutralDarkTrollWarlordKey].int
		npcDotaBadguysTower2Top = json[kDMDamageNpcDotaBadguysTower2TopKey].int
		npcDotaBadguysSiegeUpgraded = json[kDMDamageNpcDotaBadguysSiegeUpgradedKey].int
		npcDotaGoodguysSiege = json[kDMDamageNpcDotaGoodguysSiegeKey].int
		illusionNpcDotaHeroViper = json[kDMDamageIllusionNpcDotaHeroViperKey].int
		npcDotaGoodguysTower4 = json[kDMDamageNpcDotaGoodguysTower4Key].int
		npcDotaRoshan = json[kDMDamageNpcDotaRoshanKey].int
		npcDotaHeroJuggernaut = json[kDMDamageNpcDotaHeroJuggernautKey].int
		npcDotaBadguysSiege = json[kDMDamageNpcDotaBadguysSiegeKey].int
		npcDotaNeutralOgreMagi = json[kDMDamageNpcDotaNeutralOgreMagiKey].int
		npcDotaNeutralForestTrollBerserker = json[kDMDamageNpcDotaNeutralForestTrollBerserkerKey].int
		npcDotaBadguysMeleeRaxMid = json[kDMDamageNpcDotaBadguysMeleeRaxMidKey].int
		npcDotaHeroArcWarden = json[kDMDamageNpcDotaHeroArcWardenKey].int
		npcDotaCreepGoodguysRanged = json[kDMDamageNpcDotaCreepGoodguysRangedKey].int
		npcDotaNeutralDarkTroll = json[kDMDamageNpcDotaNeutralDarkTrollKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if npcDotaHeroBristleback != nil {
			dictionary.updateValue(npcDotaHeroBristleback!, forKey: kDMDamageNpcDotaHeroBristlebackKey)
		}
		if npcDotaHeroAbaddon != nil {
			dictionary.updateValue(npcDotaHeroAbaddon!, forKey: kDMDamageNpcDotaHeroAbaddonKey)
		}
		if npcDotaHeroEmberSpirit != nil {
			dictionary.updateValue(npcDotaHeroEmberSpirit!, forKey: kDMDamageNpcDotaHeroEmberSpiritKey)
		}
		if npcDotaHeroCrystalMaiden != nil {
			dictionary.updateValue(npcDotaHeroCrystalMaiden!, forKey: kDMDamageNpcDotaHeroCrystalMaidenKey)
		}
		if npcDotaNeutralGiantWolf != nil {
			dictionary.updateValue(npcDotaNeutralGiantWolf!, forKey: kDMDamageNpcDotaNeutralGiantWolfKey)
		}
		if npcDotaHeroNevermore != nil {
			dictionary.updateValue(npcDotaHeroNevermore!, forKey: kDMDamageNpcDotaHeroNevermoreKey)
		}
		if npcDotaNeutralKoboldTunneler != nil {
			dictionary.updateValue(npcDotaNeutralKoboldTunneler!, forKey: kDMDamageNpcDotaNeutralKoboldTunnelerKey)
		}
		if npcDotaNeutralMudGolemSplit != nil {
			dictionary.updateValue(npcDotaNeutralMudGolemSplit!, forKey: kDMDamageNpcDotaNeutralMudGolemSplitKey)
		}
		if npcDotaBadguysTower1Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower1Mid!, forKey: kDMDamageNpcDotaBadguysTower1MidKey)
		}
		if npcDotaCourier != nil {
			dictionary.updateValue(npcDotaCourier!, forKey: kDMDamageNpcDotaCourierKey)
		}
		if npcDotaNeutralKoboldTaskmaster != nil {
			dictionary.updateValue(npcDotaNeutralKoboldTaskmaster!, forKey: kDMDamageNpcDotaNeutralKoboldTaskmasterKey)
		}
		if npcDotaHeroKunkka != nil {
			dictionary.updateValue(npcDotaHeroKunkka!, forKey: kDMDamageNpcDotaHeroKunkkaKey)
		}
		if npcDotaGoodguysFort != nil {
			dictionary.updateValue(npcDotaGoodguysFort!, forKey: kDMDamageNpcDotaGoodguysFortKey)
		}
		if npcDotaNeutralGhost != nil {
			dictionary.updateValue(npcDotaNeutralGhost!, forKey: kDMDamageNpcDotaNeutralGhostKey)
		}
		if npcDotaGoodguysTower3Bot != nil {
			dictionary.updateValue(npcDotaGoodguysTower3Bot!, forKey: kDMDamageNpcDotaGoodguysTower3BotKey)
		}
		if npcDotaNeutralRockGolem != nil {
			dictionary.updateValue(npcDotaNeutralRockGolem!, forKey: kDMDamageNpcDotaNeutralRockGolemKey)
		}
		if npcDotaNeutralPolarFurbolgUrsaWarrior != nil {
			dictionary.updateValue(npcDotaNeutralPolarFurbolgUrsaWarrior!, forKey: kDMDamageNpcDotaNeutralPolarFurbolgUrsaWarriorKey)
		}
		if npcDotaNeutralKobold != nil {
			dictionary.updateValue(npcDotaNeutralKobold!, forKey: kDMDamageNpcDotaNeutralKoboldKey)
		}
		if npcDotaBadguysTower1Bot != nil {
			dictionary.updateValue(npcDotaBadguysTower1Bot!, forKey: kDMDamageNpcDotaBadguysTower1BotKey)
		}
		if npcDotaNeutralSatyrTrickster != nil {
			dictionary.updateValue(npcDotaNeutralSatyrTrickster!, forKey: kDMDamageNpcDotaNeutralSatyrTricksterKey)
		}
		if npcDotaGoodguysTower2Bot != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Bot!, forKey: kDMDamageNpcDotaGoodguysTower2BotKey)
		}
		if npcDotaNeutralEnragedWildkin != nil {
			dictionary.updateValue(npcDotaNeutralEnragedWildkin!, forKey: kDMDamageNpcDotaNeutralEnragedWildkinKey)
		}
		if npcDotaNeutralBlackDrake != nil {
			dictionary.updateValue(npcDotaNeutralBlackDrake!, forKey: kDMDamageNpcDotaNeutralBlackDrakeKey)
		}
		if npcDotaHeroVengefulspirit != nil {
			dictionary.updateValue(npcDotaHeroVengefulspirit!, forKey: kDMDamageNpcDotaHeroVengefulspiritKey)
		}
		if npcDotaGoodguysMeleeRaxMid != nil {
			dictionary.updateValue(npcDotaGoodguysMeleeRaxMid!, forKey: kDMDamageNpcDotaGoodguysMeleeRaxMidKey)
		}
		if npcDotaBadguysTower3Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower3Mid!, forKey: kDMDamageNpcDotaBadguysTower3MidKey)
		}
		if npcDotaNeutralHarpyStorm != nil {
			dictionary.updateValue(npcDotaNeutralHarpyStorm!, forKey: kDMDamageNpcDotaNeutralHarpyStormKey)
		}
		if npcDotaBadguysTower2Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower2Mid!, forKey: kDMDamageNpcDotaBadguysTower2MidKey)
		}
		if npcDotaCreepBadguysMelee != nil {
			dictionary.updateValue(npcDotaCreepBadguysMelee!, forKey: kDMDamageNpcDotaCreepBadguysMeleeKey)
		}
		if npcDotaNeutralOgreMauler != nil {
			dictionary.updateValue(npcDotaNeutralOgreMauler!, forKey: kDMDamageNpcDotaNeutralOgreMaulerKey)
		}
		if npcDotaGoodguysTower1Bot != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Bot!, forKey: kDMDamageNpcDotaGoodguysTower1BotKey)
		}
		if npcDotaNeutralGraniteGolem != nil {
			dictionary.updateValue(npcDotaNeutralGraniteGolem!, forKey: kDMDamageNpcDotaNeutralGraniteGolemKey)
		}
		if npcDotaNeutralFelBeast != nil {
			dictionary.updateValue(npcDotaNeutralFelBeast!, forKey: kDMDamageNpcDotaNeutralFelBeastKey)
		}
		if npcDotaGoodguysTower1Top != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Top!, forKey: kDMDamageNpcDotaGoodguysTower1TopKey)
		}
		if npcDotaNeutralGnollAssassin != nil {
			dictionary.updateValue(npcDotaNeutralGnollAssassin!, forKey: kDMDamageNpcDotaNeutralGnollAssassinKey)
		}
		if npcDotaNeutralBlackDragon != nil {
			dictionary.updateValue(npcDotaNeutralBlackDragon!, forKey: kDMDamageNpcDotaNeutralBlackDragonKey)
		}
		if npcDotaNeutralMudGolem != nil {
			dictionary.updateValue(npcDotaNeutralMudGolem!, forKey: kDMDamageNpcDotaNeutralMudGolemKey)
		}
		if npcDotaSentryWards != nil {
			dictionary.updateValue(npcDotaSentryWards!, forKey: kDMDamageNpcDotaSentryWardsKey)
		}
		if npcDotaNeutralCentaurKhan != nil {
			dictionary.updateValue(npcDotaNeutralCentaurKhan!, forKey: kDMDamageNpcDotaNeutralCentaurKhanKey)
		}
		if npcDotaHeroViper != nil {
			dictionary.updateValue(npcDotaHeroViper!, forKey: kDMDamageNpcDotaHeroViperKey)
		}
		if npcDotaNeutralPolarFurbolgChampion != nil {
			dictionary.updateValue(npcDotaNeutralPolarFurbolgChampion!, forKey: kDMDamageNpcDotaNeutralPolarFurbolgChampionKey)
		}
		if npcDotaNeutralBigThunderLizard != nil {
			dictionary.updateValue(npcDotaNeutralBigThunderLizard!, forKey: kDMDamageNpcDotaNeutralBigThunderLizardKey)
		}
		if npcDotaNeutralAlphaWolf != nil {
			dictionary.updateValue(npcDotaNeutralAlphaWolf!, forKey: kDMDamageNpcDotaNeutralAlphaWolfKey)
		}
		if npcDotaNeutralForestTrollHighPriest != nil {
			dictionary.updateValue(npcDotaNeutralForestTrollHighPriest!, forKey: kDMDamageNpcDotaNeutralForestTrollHighPriestKey)
		}
		if npcDotaGoodguysTower3Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower3Mid!, forKey: kDMDamageNpcDotaGoodguysTower3MidKey)
		}
		if npcDotaCreepBadguysRangedUpgraded != nil {
			dictionary.updateValue(npcDotaCreepBadguysRangedUpgraded!, forKey: kDMDamageNpcDotaCreepBadguysRangedUpgradedKey)
		}
		if illusionNpcDotaHeroEmberSpirit != nil {
			dictionary.updateValue(illusionNpcDotaHeroEmberSpirit!, forKey: kDMDamageIllusionNpcDotaHeroEmberSpiritKey)
		}
		if npcDotaNeutralCentaurOutrunner != nil {
			dictionary.updateValue(npcDotaNeutralCentaurOutrunner!, forKey: kDMDamageNpcDotaNeutralCentaurOutrunnerKey)
		}
		if illusionNpcDotaHeroCrystalMaiden != nil {
			dictionary.updateValue(illusionNpcDotaHeroCrystalMaiden!, forKey: kDMDamageIllusionNpcDotaHeroCrystalMaidenKey)
		}
		if npcDotaGoodguysTower2Top != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Top!, forKey: kDMDamageNpcDotaGoodguysTower2TopKey)
		}
		if npcDotaGoodguysFillers != nil {
			dictionary.updateValue(npcDotaGoodguysFillers!, forKey: kDMDamageNpcDotaGoodguysFillersKey)
		}
		if npcDotaDarkTrollWarlordSkeletonWarrior != nil {
			dictionary.updateValue(npcDotaDarkTrollWarlordSkeletonWarrior!, forKey: kDMDamageNpcDotaDarkTrollWarlordSkeletonWarriorKey)
		}
		if npcDotaNeutralWildkin != nil {
			dictionary.updateValue(npcDotaNeutralWildkin!, forKey: kDMDamageNpcDotaNeutralWildkinKey)
		}
		if npcDotaBadguysTower1Top != nil {
			dictionary.updateValue(npcDotaBadguysTower1Top!, forKey: kDMDamageNpcDotaBadguysTower1TopKey)
		}
		if npcDotaNeutralHarpyScout != nil {
			dictionary.updateValue(npcDotaNeutralHarpyScout!, forKey: kDMDamageNpcDotaNeutralHarpyScoutKey)
		}
		if npcDotaGoodguysTower2Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Mid!, forKey: kDMDamageNpcDotaGoodguysTower2MidKey)
		}
		if npcDotaNeutralSatyrSoulstealer != nil {
			dictionary.updateValue(npcDotaNeutralSatyrSoulstealer!, forKey: kDMDamageNpcDotaNeutralSatyrSoulstealerKey)
		}
		if npcDotaGoodguysTower1Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Mid!, forKey: kDMDamageNpcDotaGoodguysTower1MidKey)
		}
		if illusionNpcDotaHeroJuggernaut != nil {
			dictionary.updateValue(illusionNpcDotaHeroJuggernaut!, forKey: kDMDamageIllusionNpcDotaHeroJuggernautKey)
		}
		if npcDotaBadguysTower2Bot != nil {
			dictionary.updateValue(npcDotaBadguysTower2Bot!, forKey: kDMDamageNpcDotaBadguysTower2BotKey)
		}
		if npcDotaNeutralSatyrHellcaller != nil {
			dictionary.updateValue(npcDotaNeutralSatyrHellcaller!, forKey: kDMDamageNpcDotaNeutralSatyrHellcallerKey)
		}
		if npcDotaCreepGoodguysMelee != nil {
			dictionary.updateValue(npcDotaCreepGoodguysMelee!, forKey: kDMDamageNpcDotaCreepGoodguysMeleeKey)
		}
		if npcDotaGoodguysRangeRaxMid != nil {
			dictionary.updateValue(npcDotaGoodguysRangeRaxMid!, forKey: kDMDamageNpcDotaGoodguysRangeRaxMidKey)
		}
		if npcDotaCreepBadguysRanged != nil {
			dictionary.updateValue(npcDotaCreepBadguysRanged!, forKey: kDMDamageNpcDotaCreepBadguysRangedKey)
		}
		if npcDotaJuggernautHealingWard != nil {
			dictionary.updateValue(npcDotaJuggernautHealingWard!, forKey: kDMDamageNpcDotaJuggernautHealingWardKey)
		}
		if npcDotaObserverWards != nil {
			dictionary.updateValue(npcDotaObserverWards!, forKey: kDMDamageNpcDotaObserverWardsKey)
		}
		if npcDotaNeutralSmallThunderLizard != nil {
			dictionary.updateValue(npcDotaNeutralSmallThunderLizard!, forKey: kDMDamageNpcDotaNeutralSmallThunderLizardKey)
		}
		if npcDotaNeutralDarkTrollWarlord != nil {
			dictionary.updateValue(npcDotaNeutralDarkTrollWarlord!, forKey: kDMDamageNpcDotaNeutralDarkTrollWarlordKey)
		}
		if npcDotaBadguysTower2Top != nil {
			dictionary.updateValue(npcDotaBadguysTower2Top!, forKey: kDMDamageNpcDotaBadguysTower2TopKey)
		}
		if npcDotaBadguysSiegeUpgraded != nil {
			dictionary.updateValue(npcDotaBadguysSiegeUpgraded!, forKey: kDMDamageNpcDotaBadguysSiegeUpgradedKey)
		}
		if npcDotaGoodguysSiege != nil {
			dictionary.updateValue(npcDotaGoodguysSiege!, forKey: kDMDamageNpcDotaGoodguysSiegeKey)
		}
		if illusionNpcDotaHeroViper != nil {
			dictionary.updateValue(illusionNpcDotaHeroViper!, forKey: kDMDamageIllusionNpcDotaHeroViperKey)
		}
		if npcDotaGoodguysTower4 != nil {
			dictionary.updateValue(npcDotaGoodguysTower4!, forKey: kDMDamageNpcDotaGoodguysTower4Key)
		}
		if npcDotaRoshan != nil {
			dictionary.updateValue(npcDotaRoshan!, forKey: kDMDamageNpcDotaRoshanKey)
		}
		if npcDotaHeroJuggernaut != nil {
			dictionary.updateValue(npcDotaHeroJuggernaut!, forKey: kDMDamageNpcDotaHeroJuggernautKey)
		}
		if npcDotaBadguysSiege != nil {
			dictionary.updateValue(npcDotaBadguysSiege!, forKey: kDMDamageNpcDotaBadguysSiegeKey)
		}
		if npcDotaNeutralOgreMagi != nil {
			dictionary.updateValue(npcDotaNeutralOgreMagi!, forKey: kDMDamageNpcDotaNeutralOgreMagiKey)
		}
		if npcDotaNeutralForestTrollBerserker != nil {
			dictionary.updateValue(npcDotaNeutralForestTrollBerserker!, forKey: kDMDamageNpcDotaNeutralForestTrollBerserkerKey)
		}
		if npcDotaBadguysMeleeRaxMid != nil {
			dictionary.updateValue(npcDotaBadguysMeleeRaxMid!, forKey: kDMDamageNpcDotaBadguysMeleeRaxMidKey)
		}
		if npcDotaHeroArcWarden != nil {
			dictionary.updateValue(npcDotaHeroArcWarden!, forKey: kDMDamageNpcDotaHeroArcWardenKey)
		}
		if npcDotaCreepGoodguysRanged != nil {
			dictionary.updateValue(npcDotaCreepGoodguysRanged!, forKey: kDMDamageNpcDotaCreepGoodguysRangedKey)
		}
		if npcDotaNeutralDarkTroll != nil {
			dictionary.updateValue(npcDotaNeutralDarkTroll!, forKey: kDMDamageNpcDotaNeutralDarkTrollKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.npcDotaHeroBristleback = aDecoder.decodeObjectForKey(kDMDamageNpcDotaHeroBristlebackKey) as? Int
		self.npcDotaHeroAbaddon = aDecoder.decodeObjectForKey(kDMDamageNpcDotaHeroAbaddonKey) as? Int
		self.npcDotaHeroEmberSpirit = aDecoder.decodeObjectForKey(kDMDamageNpcDotaHeroEmberSpiritKey) as? Int
		self.npcDotaHeroCrystalMaiden = aDecoder.decodeObjectForKey(kDMDamageNpcDotaHeroCrystalMaidenKey) as? Int
		self.npcDotaNeutralGiantWolf = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralGiantWolfKey) as? Int
		self.npcDotaHeroNevermore = aDecoder.decodeObjectForKey(kDMDamageNpcDotaHeroNevermoreKey) as? Int
		self.npcDotaNeutralKoboldTunneler = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralKoboldTunnelerKey) as? Int
		self.npcDotaNeutralMudGolemSplit = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralMudGolemSplitKey) as? Int
		self.npcDotaBadguysTower1Mid = aDecoder.decodeObjectForKey(kDMDamageNpcDotaBadguysTower1MidKey) as? Int
		self.npcDotaCourier = aDecoder.decodeObjectForKey(kDMDamageNpcDotaCourierKey) as? Int
		self.npcDotaNeutralKoboldTaskmaster = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralKoboldTaskmasterKey) as? Int
		self.npcDotaHeroKunkka = aDecoder.decodeObjectForKey(kDMDamageNpcDotaHeroKunkkaKey) as? Int
		self.npcDotaGoodguysFort = aDecoder.decodeObjectForKey(kDMDamageNpcDotaGoodguysFortKey) as? Int
		self.npcDotaNeutralGhost = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralGhostKey) as? Int
		self.npcDotaGoodguysTower3Bot = aDecoder.decodeObjectForKey(kDMDamageNpcDotaGoodguysTower3BotKey) as? Int
		self.npcDotaNeutralRockGolem = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralRockGolemKey) as? Int
		self.npcDotaNeutralPolarFurbolgUrsaWarrior = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralPolarFurbolgUrsaWarriorKey) as? Int
		self.npcDotaNeutralKobold = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralKoboldKey) as? Int
		self.npcDotaBadguysTower1Bot = aDecoder.decodeObjectForKey(kDMDamageNpcDotaBadguysTower1BotKey) as? Int
		self.npcDotaNeutralSatyrTrickster = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralSatyrTricksterKey) as? Int
		self.npcDotaGoodguysTower2Bot = aDecoder.decodeObjectForKey(kDMDamageNpcDotaGoodguysTower2BotKey) as? Int
		self.npcDotaNeutralEnragedWildkin = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralEnragedWildkinKey) as? Int
		self.npcDotaNeutralBlackDrake = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralBlackDrakeKey) as? Int
		self.npcDotaHeroVengefulspirit = aDecoder.decodeObjectForKey(kDMDamageNpcDotaHeroVengefulspiritKey) as? Int
		self.npcDotaGoodguysMeleeRaxMid = aDecoder.decodeObjectForKey(kDMDamageNpcDotaGoodguysMeleeRaxMidKey) as? Int
		self.npcDotaBadguysTower3Mid = aDecoder.decodeObjectForKey(kDMDamageNpcDotaBadguysTower3MidKey) as? Int
		self.npcDotaNeutralHarpyStorm = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralHarpyStormKey) as? Int
		self.npcDotaBadguysTower2Mid = aDecoder.decodeObjectForKey(kDMDamageNpcDotaBadguysTower2MidKey) as? Int
		self.npcDotaCreepBadguysMelee = aDecoder.decodeObjectForKey(kDMDamageNpcDotaCreepBadguysMeleeKey) as? Int
		self.npcDotaNeutralOgreMauler = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralOgreMaulerKey) as? Int
		self.npcDotaGoodguysTower1Bot = aDecoder.decodeObjectForKey(kDMDamageNpcDotaGoodguysTower1BotKey) as? Int
		self.npcDotaNeutralGraniteGolem = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralGraniteGolemKey) as? Int
		self.npcDotaNeutralFelBeast = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralFelBeastKey) as? Int
		self.npcDotaGoodguysTower1Top = aDecoder.decodeObjectForKey(kDMDamageNpcDotaGoodguysTower1TopKey) as? Int
		self.npcDotaNeutralGnollAssassin = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralGnollAssassinKey) as? Int
		self.npcDotaNeutralBlackDragon = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralBlackDragonKey) as? Int
		self.npcDotaNeutralMudGolem = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralMudGolemKey) as? Int
		self.npcDotaSentryWards = aDecoder.decodeObjectForKey(kDMDamageNpcDotaSentryWardsKey) as? Int
		self.npcDotaNeutralCentaurKhan = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralCentaurKhanKey) as? Int
		self.npcDotaHeroViper = aDecoder.decodeObjectForKey(kDMDamageNpcDotaHeroViperKey) as? Int
		self.npcDotaNeutralPolarFurbolgChampion = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralPolarFurbolgChampionKey) as? Int
		self.npcDotaNeutralBigThunderLizard = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralBigThunderLizardKey) as? Int
		self.npcDotaNeutralAlphaWolf = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralAlphaWolfKey) as? Int
		self.npcDotaNeutralForestTrollHighPriest = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralForestTrollHighPriestKey) as? Int
		self.npcDotaGoodguysTower3Mid = aDecoder.decodeObjectForKey(kDMDamageNpcDotaGoodguysTower3MidKey) as? Int
		self.npcDotaCreepBadguysRangedUpgraded = aDecoder.decodeObjectForKey(kDMDamageNpcDotaCreepBadguysRangedUpgradedKey) as? Int
		self.illusionNpcDotaHeroEmberSpirit = aDecoder.decodeObjectForKey(kDMDamageIllusionNpcDotaHeroEmberSpiritKey) as? Int
		self.npcDotaNeutralCentaurOutrunner = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralCentaurOutrunnerKey) as? Int
		self.illusionNpcDotaHeroCrystalMaiden = aDecoder.decodeObjectForKey(kDMDamageIllusionNpcDotaHeroCrystalMaidenKey) as? Int
		self.npcDotaGoodguysTower2Top = aDecoder.decodeObjectForKey(kDMDamageNpcDotaGoodguysTower2TopKey) as? Int
		self.npcDotaGoodguysFillers = aDecoder.decodeObjectForKey(kDMDamageNpcDotaGoodguysFillersKey) as? Int
		self.npcDotaDarkTrollWarlordSkeletonWarrior = aDecoder.decodeObjectForKey(kDMDamageNpcDotaDarkTrollWarlordSkeletonWarriorKey) as? Int
		self.npcDotaNeutralWildkin = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralWildkinKey) as? Int
		self.npcDotaBadguysTower1Top = aDecoder.decodeObjectForKey(kDMDamageNpcDotaBadguysTower1TopKey) as? Int
		self.npcDotaNeutralHarpyScout = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralHarpyScoutKey) as? Int
		self.npcDotaGoodguysTower2Mid = aDecoder.decodeObjectForKey(kDMDamageNpcDotaGoodguysTower2MidKey) as? Int
		self.npcDotaNeutralSatyrSoulstealer = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralSatyrSoulstealerKey) as? Int
		self.npcDotaGoodguysTower1Mid = aDecoder.decodeObjectForKey(kDMDamageNpcDotaGoodguysTower1MidKey) as? Int
		self.illusionNpcDotaHeroJuggernaut = aDecoder.decodeObjectForKey(kDMDamageIllusionNpcDotaHeroJuggernautKey) as? Int
		self.npcDotaBadguysTower2Bot = aDecoder.decodeObjectForKey(kDMDamageNpcDotaBadguysTower2BotKey) as? Int
		self.npcDotaNeutralSatyrHellcaller = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralSatyrHellcallerKey) as? Int
		self.npcDotaCreepGoodguysMelee = aDecoder.decodeObjectForKey(kDMDamageNpcDotaCreepGoodguysMeleeKey) as? Int
		self.npcDotaGoodguysRangeRaxMid = aDecoder.decodeObjectForKey(kDMDamageNpcDotaGoodguysRangeRaxMidKey) as? Int
		self.npcDotaCreepBadguysRanged = aDecoder.decodeObjectForKey(kDMDamageNpcDotaCreepBadguysRangedKey) as? Int
		self.npcDotaJuggernautHealingWard = aDecoder.decodeObjectForKey(kDMDamageNpcDotaJuggernautHealingWardKey) as? Int
		self.npcDotaObserverWards = aDecoder.decodeObjectForKey(kDMDamageNpcDotaObserverWardsKey) as? Int
		self.npcDotaNeutralSmallThunderLizard = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralSmallThunderLizardKey) as? Int
		self.npcDotaNeutralDarkTrollWarlord = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralDarkTrollWarlordKey) as? Int
		self.npcDotaBadguysTower2Top = aDecoder.decodeObjectForKey(kDMDamageNpcDotaBadguysTower2TopKey) as? Int
		self.npcDotaBadguysSiegeUpgraded = aDecoder.decodeObjectForKey(kDMDamageNpcDotaBadguysSiegeUpgradedKey) as? Int
		self.npcDotaGoodguysSiege = aDecoder.decodeObjectForKey(kDMDamageNpcDotaGoodguysSiegeKey) as? Int
		self.illusionNpcDotaHeroViper = aDecoder.decodeObjectForKey(kDMDamageIllusionNpcDotaHeroViperKey) as? Int
		self.npcDotaGoodguysTower4 = aDecoder.decodeObjectForKey(kDMDamageNpcDotaGoodguysTower4Key) as? Int
		self.npcDotaRoshan = aDecoder.decodeObjectForKey(kDMDamageNpcDotaRoshanKey) as? Int
		self.npcDotaHeroJuggernaut = aDecoder.decodeObjectForKey(kDMDamageNpcDotaHeroJuggernautKey) as? Int
		self.npcDotaBadguysSiege = aDecoder.decodeObjectForKey(kDMDamageNpcDotaBadguysSiegeKey) as? Int
		self.npcDotaNeutralOgreMagi = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralOgreMagiKey) as? Int
		self.npcDotaNeutralForestTrollBerserker = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralForestTrollBerserkerKey) as? Int
		self.npcDotaBadguysMeleeRaxMid = aDecoder.decodeObjectForKey(kDMDamageNpcDotaBadguysMeleeRaxMidKey) as? Int
		self.npcDotaHeroArcWarden = aDecoder.decodeObjectForKey(kDMDamageNpcDotaHeroArcWardenKey) as? Int
		self.npcDotaCreepGoodguysRanged = aDecoder.decodeObjectForKey(kDMDamageNpcDotaCreepGoodguysRangedKey) as? Int
		self.npcDotaNeutralDarkTroll = aDecoder.decodeObjectForKey(kDMDamageNpcDotaNeutralDarkTrollKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(npcDotaHeroBristleback, forKey: kDMDamageNpcDotaHeroBristlebackKey)
		aCoder.encodeObject(npcDotaHeroAbaddon, forKey: kDMDamageNpcDotaHeroAbaddonKey)
		aCoder.encodeObject(npcDotaHeroEmberSpirit, forKey: kDMDamageNpcDotaHeroEmberSpiritKey)
		aCoder.encodeObject(npcDotaHeroCrystalMaiden, forKey: kDMDamageNpcDotaHeroCrystalMaidenKey)
		aCoder.encodeObject(npcDotaNeutralGiantWolf, forKey: kDMDamageNpcDotaNeutralGiantWolfKey)
		aCoder.encodeObject(npcDotaHeroNevermore, forKey: kDMDamageNpcDotaHeroNevermoreKey)
		aCoder.encodeObject(npcDotaNeutralKoboldTunneler, forKey: kDMDamageNpcDotaNeutralKoboldTunnelerKey)
		aCoder.encodeObject(npcDotaNeutralMudGolemSplit, forKey: kDMDamageNpcDotaNeutralMudGolemSplitKey)
		aCoder.encodeObject(npcDotaBadguysTower1Mid, forKey: kDMDamageNpcDotaBadguysTower1MidKey)
		aCoder.encodeObject(npcDotaCourier, forKey: kDMDamageNpcDotaCourierKey)
		aCoder.encodeObject(npcDotaNeutralKoboldTaskmaster, forKey: kDMDamageNpcDotaNeutralKoboldTaskmasterKey)
		aCoder.encodeObject(npcDotaHeroKunkka, forKey: kDMDamageNpcDotaHeroKunkkaKey)
		aCoder.encodeObject(npcDotaGoodguysFort, forKey: kDMDamageNpcDotaGoodguysFortKey)
		aCoder.encodeObject(npcDotaNeutralGhost, forKey: kDMDamageNpcDotaNeutralGhostKey)
		aCoder.encodeObject(npcDotaGoodguysTower3Bot, forKey: kDMDamageNpcDotaGoodguysTower3BotKey)
		aCoder.encodeObject(npcDotaNeutralRockGolem, forKey: kDMDamageNpcDotaNeutralRockGolemKey)
		aCoder.encodeObject(npcDotaNeutralPolarFurbolgUrsaWarrior, forKey: kDMDamageNpcDotaNeutralPolarFurbolgUrsaWarriorKey)
		aCoder.encodeObject(npcDotaNeutralKobold, forKey: kDMDamageNpcDotaNeutralKoboldKey)
		aCoder.encodeObject(npcDotaBadguysTower1Bot, forKey: kDMDamageNpcDotaBadguysTower1BotKey)
		aCoder.encodeObject(npcDotaNeutralSatyrTrickster, forKey: kDMDamageNpcDotaNeutralSatyrTricksterKey)
		aCoder.encodeObject(npcDotaGoodguysTower2Bot, forKey: kDMDamageNpcDotaGoodguysTower2BotKey)
		aCoder.encodeObject(npcDotaNeutralEnragedWildkin, forKey: kDMDamageNpcDotaNeutralEnragedWildkinKey)
		aCoder.encodeObject(npcDotaNeutralBlackDrake, forKey: kDMDamageNpcDotaNeutralBlackDrakeKey)
		aCoder.encodeObject(npcDotaHeroVengefulspirit, forKey: kDMDamageNpcDotaHeroVengefulspiritKey)
		aCoder.encodeObject(npcDotaGoodguysMeleeRaxMid, forKey: kDMDamageNpcDotaGoodguysMeleeRaxMidKey)
		aCoder.encodeObject(npcDotaBadguysTower3Mid, forKey: kDMDamageNpcDotaBadguysTower3MidKey)
		aCoder.encodeObject(npcDotaNeutralHarpyStorm, forKey: kDMDamageNpcDotaNeutralHarpyStormKey)
		aCoder.encodeObject(npcDotaBadguysTower2Mid, forKey: kDMDamageNpcDotaBadguysTower2MidKey)
		aCoder.encodeObject(npcDotaCreepBadguysMelee, forKey: kDMDamageNpcDotaCreepBadguysMeleeKey)
		aCoder.encodeObject(npcDotaNeutralOgreMauler, forKey: kDMDamageNpcDotaNeutralOgreMaulerKey)
		aCoder.encodeObject(npcDotaGoodguysTower1Bot, forKey: kDMDamageNpcDotaGoodguysTower1BotKey)
		aCoder.encodeObject(npcDotaNeutralGraniteGolem, forKey: kDMDamageNpcDotaNeutralGraniteGolemKey)
		aCoder.encodeObject(npcDotaNeutralFelBeast, forKey: kDMDamageNpcDotaNeutralFelBeastKey)
		aCoder.encodeObject(npcDotaGoodguysTower1Top, forKey: kDMDamageNpcDotaGoodguysTower1TopKey)
		aCoder.encodeObject(npcDotaNeutralGnollAssassin, forKey: kDMDamageNpcDotaNeutralGnollAssassinKey)
		aCoder.encodeObject(npcDotaNeutralBlackDragon, forKey: kDMDamageNpcDotaNeutralBlackDragonKey)
		aCoder.encodeObject(npcDotaNeutralMudGolem, forKey: kDMDamageNpcDotaNeutralMudGolemKey)
		aCoder.encodeObject(npcDotaSentryWards, forKey: kDMDamageNpcDotaSentryWardsKey)
		aCoder.encodeObject(npcDotaNeutralCentaurKhan, forKey: kDMDamageNpcDotaNeutralCentaurKhanKey)
		aCoder.encodeObject(npcDotaHeroViper, forKey: kDMDamageNpcDotaHeroViperKey)
		aCoder.encodeObject(npcDotaNeutralPolarFurbolgChampion, forKey: kDMDamageNpcDotaNeutralPolarFurbolgChampionKey)
		aCoder.encodeObject(npcDotaNeutralBigThunderLizard, forKey: kDMDamageNpcDotaNeutralBigThunderLizardKey)
		aCoder.encodeObject(npcDotaNeutralAlphaWolf, forKey: kDMDamageNpcDotaNeutralAlphaWolfKey)
		aCoder.encodeObject(npcDotaNeutralForestTrollHighPriest, forKey: kDMDamageNpcDotaNeutralForestTrollHighPriestKey)
		aCoder.encodeObject(npcDotaGoodguysTower3Mid, forKey: kDMDamageNpcDotaGoodguysTower3MidKey)
		aCoder.encodeObject(npcDotaCreepBadguysRangedUpgraded, forKey: kDMDamageNpcDotaCreepBadguysRangedUpgradedKey)
		aCoder.encodeObject(illusionNpcDotaHeroEmberSpirit, forKey: kDMDamageIllusionNpcDotaHeroEmberSpiritKey)
		aCoder.encodeObject(npcDotaNeutralCentaurOutrunner, forKey: kDMDamageNpcDotaNeutralCentaurOutrunnerKey)
		aCoder.encodeObject(illusionNpcDotaHeroCrystalMaiden, forKey: kDMDamageIllusionNpcDotaHeroCrystalMaidenKey)
		aCoder.encodeObject(npcDotaGoodguysTower2Top, forKey: kDMDamageNpcDotaGoodguysTower2TopKey)
		aCoder.encodeObject(npcDotaGoodguysFillers, forKey: kDMDamageNpcDotaGoodguysFillersKey)
		aCoder.encodeObject(npcDotaDarkTrollWarlordSkeletonWarrior, forKey: kDMDamageNpcDotaDarkTrollWarlordSkeletonWarriorKey)
		aCoder.encodeObject(npcDotaNeutralWildkin, forKey: kDMDamageNpcDotaNeutralWildkinKey)
		aCoder.encodeObject(npcDotaBadguysTower1Top, forKey: kDMDamageNpcDotaBadguysTower1TopKey)
		aCoder.encodeObject(npcDotaNeutralHarpyScout, forKey: kDMDamageNpcDotaNeutralHarpyScoutKey)
		aCoder.encodeObject(npcDotaGoodguysTower2Mid, forKey: kDMDamageNpcDotaGoodguysTower2MidKey)
		aCoder.encodeObject(npcDotaNeutralSatyrSoulstealer, forKey: kDMDamageNpcDotaNeutralSatyrSoulstealerKey)
		aCoder.encodeObject(npcDotaGoodguysTower1Mid, forKey: kDMDamageNpcDotaGoodguysTower1MidKey)
		aCoder.encodeObject(illusionNpcDotaHeroJuggernaut, forKey: kDMDamageIllusionNpcDotaHeroJuggernautKey)
		aCoder.encodeObject(npcDotaBadguysTower2Bot, forKey: kDMDamageNpcDotaBadguysTower2BotKey)
		aCoder.encodeObject(npcDotaNeutralSatyrHellcaller, forKey: kDMDamageNpcDotaNeutralSatyrHellcallerKey)
		aCoder.encodeObject(npcDotaCreepGoodguysMelee, forKey: kDMDamageNpcDotaCreepGoodguysMeleeKey)
		aCoder.encodeObject(npcDotaGoodguysRangeRaxMid, forKey: kDMDamageNpcDotaGoodguysRangeRaxMidKey)
		aCoder.encodeObject(npcDotaCreepBadguysRanged, forKey: kDMDamageNpcDotaCreepBadguysRangedKey)
		aCoder.encodeObject(npcDotaJuggernautHealingWard, forKey: kDMDamageNpcDotaJuggernautHealingWardKey)
		aCoder.encodeObject(npcDotaObserverWards, forKey: kDMDamageNpcDotaObserverWardsKey)
		aCoder.encodeObject(npcDotaNeutralSmallThunderLizard, forKey: kDMDamageNpcDotaNeutralSmallThunderLizardKey)
		aCoder.encodeObject(npcDotaNeutralDarkTrollWarlord, forKey: kDMDamageNpcDotaNeutralDarkTrollWarlordKey)
		aCoder.encodeObject(npcDotaBadguysTower2Top, forKey: kDMDamageNpcDotaBadguysTower2TopKey)
		aCoder.encodeObject(npcDotaBadguysSiegeUpgraded, forKey: kDMDamageNpcDotaBadguysSiegeUpgradedKey)
		aCoder.encodeObject(npcDotaGoodguysSiege, forKey: kDMDamageNpcDotaGoodguysSiegeKey)
		aCoder.encodeObject(illusionNpcDotaHeroViper, forKey: kDMDamageIllusionNpcDotaHeroViperKey)
		aCoder.encodeObject(npcDotaGoodguysTower4, forKey: kDMDamageNpcDotaGoodguysTower4Key)
		aCoder.encodeObject(npcDotaRoshan, forKey: kDMDamageNpcDotaRoshanKey)
		aCoder.encodeObject(npcDotaHeroJuggernaut, forKey: kDMDamageNpcDotaHeroJuggernautKey)
		aCoder.encodeObject(npcDotaBadguysSiege, forKey: kDMDamageNpcDotaBadguysSiegeKey)
		aCoder.encodeObject(npcDotaNeutralOgreMagi, forKey: kDMDamageNpcDotaNeutralOgreMagiKey)
		aCoder.encodeObject(npcDotaNeutralForestTrollBerserker, forKey: kDMDamageNpcDotaNeutralForestTrollBerserkerKey)
		aCoder.encodeObject(npcDotaBadguysMeleeRaxMid, forKey: kDMDamageNpcDotaBadguysMeleeRaxMidKey)
		aCoder.encodeObject(npcDotaHeroArcWarden, forKey: kDMDamageNpcDotaHeroArcWardenKey)
		aCoder.encodeObject(npcDotaCreepGoodguysRanged, forKey: kDMDamageNpcDotaCreepGoodguysRangedKey)
		aCoder.encodeObject(npcDotaNeutralDarkTroll, forKey: kDMDamageNpcDotaNeutralDarkTrollKey)

    }

}
