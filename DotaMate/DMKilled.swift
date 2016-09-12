//
//  DMKilled.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMKilled: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMKilledNpcDotaHeroBristlebackKey: String = "npc_dota_hero_bristleback"
	internal let kDMKilledNpcDotaHeroAbaddonKey: String = "npc_dota_hero_abaddon"
	internal let kDMKilledNpcDotaNeutralDarkTrollKey: String = "npc_dota_neutral_dark_troll"
	internal let kDMKilledNpcDotaHeroCrystalMaidenKey: String = "npc_dota_hero_crystal_maiden"
	internal let kDMKilledNpcDotaNeutralGiantWolfKey: String = "npc_dota_neutral_giant_wolf"
	internal let kDMKilledNpcDotaHeroNevermoreKey: String = "npc_dota_hero_nevermore"
	internal let kDMKilledNpcDotaNeutralKoboldTunnelerKey: String = "npc_dota_neutral_kobold_tunneler"
	internal let kDMKilledNpcDotaNeutralMudGolemSplitKey: String = "npc_dota_neutral_mud_golem_split"
	internal let kDMKilledNpcDotaCourierKey: String = "npc_dota_courier"
	internal let kDMKilledNpcDotaNeutralKoboldTaskmasterKey: String = "npc_dota_neutral_kobold_taskmaster"
	internal let kDMKilledNpcDotaGoodguysFortKey: String = "npc_dota_goodguys_fort"
	internal let kDMKilledNpcDotaNeutralGhostKey: String = "npc_dota_neutral_ghost"
	internal let kDMKilledNpcDotaNeutralPolarFurbolgUrsaWarriorKey: String = "npc_dota_neutral_polar_furbolg_ursa_warrior"
	internal let kDMKilledNpcDotaHeroKunkkaKey: String = "npc_dota_hero_kunkka"
	internal let kDMKilledNpcDotaBadguysTower1MidKey: String = "npc_dota_badguys_tower1_mid"
	internal let kDMKilledNpcDotaNeutralRockGolemKey: String = "npc_dota_neutral_rock_golem"
	internal let kDMKilledNpcDotaNeutralKoboldKey: String = "npc_dota_neutral_kobold"
	internal let kDMKilledNpcDotaBadguysTower1BotKey: String = "npc_dota_badguys_tower1_bot"
	internal let kDMKilledNpcDotaNeutralSatyrTricksterKey: String = "npc_dota_neutral_satyr_trickster"
	internal let kDMKilledNpcDotaNeutralEnragedWildkinKey: String = "npc_dota_neutral_enraged_wildkin"
	internal let kDMKilledNpcDotaNeutralBlackDrakeKey: String = "npc_dota_neutral_black_drake"
	internal let kDMKilledNpcDotaHeroVengefulspiritKey: String = "npc_dota_hero_vengefulspirit"
	internal let kDMKilledNpcDotaGoodguysMeleeRaxMidKey: String = "npc_dota_goodguys_melee_rax_mid"
	internal let kDMKilledNpcDotaBadguysTower3MidKey: String = "npc_dota_badguys_tower3_mid"
	internal let kDMKilledNpcDotaNeutralHarpyStormKey: String = "npc_dota_neutral_harpy_storm"
	internal let kDMKilledNpcDotaBadguysTower2MidKey: String = "npc_dota_badguys_tower2_mid"
	internal let kDMKilledNpcDotaCreepBadguysMeleeKey: String = "npc_dota_creep_badguys_melee"
	internal let kDMKilledNpcDotaNeutralOgreMaulerKey: String = "npc_dota_neutral_ogre_mauler"
	internal let kDMKilledNpcDotaGoodguysTower1BotKey: String = "npc_dota_goodguys_tower1_bot"
	internal let kDMKilledNpcDotaNeutralGraniteGolemKey: String = "npc_dota_neutral_granite_golem"
	internal let kDMKilledNpcDotaNeutralFelBeastKey: String = "npc_dota_neutral_fel_beast"
	internal let kDMKilledNpcDotaNeutralGnollAssassinKey: String = "npc_dota_neutral_gnoll_assassin"
	internal let kDMKilledNpcDotaNeutralBlackDragonKey: String = "npc_dota_neutral_black_dragon"
	internal let kDMKilledNpcDotaNeutralMudGolemKey: String = "npc_dota_neutral_mud_golem"
	internal let kDMKilledNpcDotaSentryWardsKey: String = "npc_dota_sentry_wards"
	internal let kDMKilledNpcDotaNeutralCentaurKhanKey: String = "npc_dota_neutral_centaur_khan"
	internal let kDMKilledNpcDotaHeroViperKey: String = "npc_dota_hero_viper"
	internal let kDMKilledNpcDotaNeutralBigThunderLizardKey: String = "npc_dota_neutral_big_thunder_lizard"
	internal let kDMKilledNpcDotaNeutralPolarFurbolgChampionKey: String = "npc_dota_neutral_polar_furbolg_champion"
	internal let kDMKilledNpcDotaNeutralAlphaWolfKey: String = "npc_dota_neutral_alpha_wolf"
	internal let kDMKilledNpcDotaNeutralForestTrollHighPriestKey: String = "npc_dota_neutral_forest_troll_high_priest"
	internal let kDMKilledNpcDotaGoodguysTower3MidKey: String = "npc_dota_goodguys_tower3_mid"
	internal let kDMKilledNpcDotaCreepBadguysRangedUpgradedKey: String = "npc_dota_creep_badguys_ranged_upgraded"
	internal let kDMKilledNpcDotaNeutralCentaurOutrunnerKey: String = "npc_dota_neutral_centaur_outrunner"
	internal let kDMKilledNpcDotaGoodguysTower2TopKey: String = "npc_dota_goodguys_tower2_top"
	internal let kDMKilledNpcDotaGoodguysFillersKey: String = "npc_dota_goodguys_fillers"
	internal let kDMKilledNpcDotaDarkTrollWarlordSkeletonWarriorKey: String = "npc_dota_dark_troll_warlord_skeleton_warrior"
	internal let kDMKilledNpcDotaNeutralWildkinKey: String = "npc_dota_neutral_wildkin"
	internal let kDMKilledNpcDotaNeutralHarpyScoutKey: String = "npc_dota_neutral_harpy_scout"
	internal let kDMKilledNpcDotaGoodguysTower2MidKey: String = "npc_dota_goodguys_tower2_mid"
	internal let kDMKilledNpcDotaNeutralSatyrSoulstealerKey: String = "npc_dota_neutral_satyr_soulstealer"
	internal let kDMKilledNpcDotaGoodguysTower1MidKey: String = "npc_dota_goodguys_tower1_mid"
	internal let kDMKilledNpcDotaBadguysTower2BotKey: String = "npc_dota_badguys_tower2_bot"
	internal let kDMKilledNpcDotaNeutralSatyrHellcallerKey: String = "npc_dota_neutral_satyr_hellcaller"
	internal let kDMKilledNpcDotaCreepGoodguysMeleeKey: String = "npc_dota_creep_goodguys_melee"
	internal let kDMKilledNpcDotaGoodguysRangeRaxMidKey: String = "npc_dota_goodguys_range_rax_mid"
	internal let kDMKilledNpcDotaCreepBadguysRangedKey: String = "npc_dota_creep_badguys_ranged"
	internal let kDMKilledNpcDotaJuggernautHealingWardKey: String = "npc_dota_juggernaut_healing_ward"
	internal let kDMKilledNpcDotaObserverWardsKey: String = "npc_dota_observer_wards"
	internal let kDMKilledNpcDotaNeutralSmallThunderLizardKey: String = "npc_dota_neutral_small_thunder_lizard"
	internal let kDMKilledNpcDotaNeutralDarkTrollWarlordKey: String = "npc_dota_neutral_dark_troll_warlord"
	internal let kDMKilledNpcDotaBadguysTower2TopKey: String = "npc_dota_badguys_tower2_top"
	internal let kDMKilledNpcDotaBadguysSiegeUpgradedKey: String = "npc_dota_badguys_siege_upgraded"
	internal let kDMKilledNpcDotaGoodguysSiegeKey: String = "npc_dota_goodguys_siege"
	internal let kDMKilledNpcDotaGoodguysTower4Key: String = "npc_dota_goodguys_tower4"
	internal let kDMKilledNpcDotaRoshanKey: String = "npc_dota_roshan"
	internal let kDMKilledNpcDotaHeroJuggernautKey: String = "npc_dota_hero_juggernaut"
	internal let kDMKilledNpcDotaBadguysSiegeKey: String = "npc_dota_badguys_siege"
	internal let kDMKilledNpcDotaNeutralOgreMagiKey: String = "npc_dota_neutral_ogre_magi"
	internal let kDMKilledNpcDotaNeutralForestTrollBerserkerKey: String = "npc_dota_neutral_forest_troll_berserker"
	internal let kDMKilledNpcDotaCreepGoodguysRangedKey: String = "npc_dota_creep_goodguys_ranged"
	internal let kDMKilledNpcDotaHeroArcWardenKey: String = "npc_dota_hero_arc_warden"
	internal let kDMKilledNpcDotaHeroEmberSpiritKey: String = "npc_dota_hero_ember_spirit"


    // MARK: Properties
	public var npcDotaHeroBristleback: Int?
	public var npcDotaHeroAbaddon: Int?
	public var npcDotaNeutralDarkTroll: Int?
	public var npcDotaHeroCrystalMaiden: Int?
	public var npcDotaNeutralGiantWolf: Int?
	public var npcDotaHeroNevermore: Int?
	public var npcDotaNeutralKoboldTunneler: Int?
	public var npcDotaNeutralMudGolemSplit: Int?
	public var npcDotaCourier: Int?
	public var npcDotaNeutralKoboldTaskmaster: Int?
	public var npcDotaGoodguysFort: Int?
	public var npcDotaNeutralGhost: Int?
	public var npcDotaNeutralPolarFurbolgUrsaWarrior: Int?
	public var npcDotaHeroKunkka: Int?
	public var npcDotaBadguysTower1Mid: Int?
	public var npcDotaNeutralRockGolem: Int?
	public var npcDotaNeutralKobold: Int?
	public var npcDotaBadguysTower1Bot: Int?
	public var npcDotaNeutralSatyrTrickster: Int?
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
	public var npcDotaNeutralGnollAssassin: Int?
	public var npcDotaNeutralBlackDragon: Int?
	public var npcDotaNeutralMudGolem: Int?
	public var npcDotaSentryWards: Int?
	public var npcDotaNeutralCentaurKhan: Int?
	public var npcDotaHeroViper: Int?
	public var npcDotaNeutralBigThunderLizard: Int?
	public var npcDotaNeutralPolarFurbolgChampion: Int?
	public var npcDotaNeutralAlphaWolf: Int?
	public var npcDotaNeutralForestTrollHighPriest: Int?
	public var npcDotaGoodguysTower3Mid: Int?
	public var npcDotaCreepBadguysRangedUpgraded: Int?
	public var npcDotaNeutralCentaurOutrunner: Int?
	public var npcDotaGoodguysTower2Top: Int?
	public var npcDotaGoodguysFillers: Int?
	public var npcDotaDarkTrollWarlordSkeletonWarrior: Int?
	public var npcDotaNeutralWildkin: Int?
	public var npcDotaNeutralHarpyScout: Int?
	public var npcDotaGoodguysTower2Mid: Int?
	public var npcDotaNeutralSatyrSoulstealer: Int?
	public var npcDotaGoodguysTower1Mid: Int?
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
	public var npcDotaGoodguysTower4: Int?
	public var npcDotaRoshan: Int?
	public var npcDotaHeroJuggernaut: Int?
	public var npcDotaBadguysSiege: Int?
	public var npcDotaNeutralOgreMagi: Int?
	public var npcDotaNeutralForestTrollBerserker: Int?
	public var npcDotaCreepGoodguysRanged: Int?
	public var npcDotaHeroArcWarden: Int?
	public var npcDotaHeroEmberSpirit: Int?


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
		npcDotaHeroBristleback = json[kDMKilledNpcDotaHeroBristlebackKey].int
		npcDotaHeroAbaddon = json[kDMKilledNpcDotaHeroAbaddonKey].int
		npcDotaNeutralDarkTroll = json[kDMKilledNpcDotaNeutralDarkTrollKey].int
		npcDotaHeroCrystalMaiden = json[kDMKilledNpcDotaHeroCrystalMaidenKey].int
		npcDotaNeutralGiantWolf = json[kDMKilledNpcDotaNeutralGiantWolfKey].int
		npcDotaHeroNevermore = json[kDMKilledNpcDotaHeroNevermoreKey].int
		npcDotaNeutralKoboldTunneler = json[kDMKilledNpcDotaNeutralKoboldTunnelerKey].int
		npcDotaNeutralMudGolemSplit = json[kDMKilledNpcDotaNeutralMudGolemSplitKey].int
		npcDotaCourier = json[kDMKilledNpcDotaCourierKey].int
		npcDotaNeutralKoboldTaskmaster = json[kDMKilledNpcDotaNeutralKoboldTaskmasterKey].int
		npcDotaGoodguysFort = json[kDMKilledNpcDotaGoodguysFortKey].int
		npcDotaNeutralGhost = json[kDMKilledNpcDotaNeutralGhostKey].int
		npcDotaNeutralPolarFurbolgUrsaWarrior = json[kDMKilledNpcDotaNeutralPolarFurbolgUrsaWarriorKey].int
		npcDotaHeroKunkka = json[kDMKilledNpcDotaHeroKunkkaKey].int
		npcDotaBadguysTower1Mid = json[kDMKilledNpcDotaBadguysTower1MidKey].int
		npcDotaNeutralRockGolem = json[kDMKilledNpcDotaNeutralRockGolemKey].int
		npcDotaNeutralKobold = json[kDMKilledNpcDotaNeutralKoboldKey].int
		npcDotaBadguysTower1Bot = json[kDMKilledNpcDotaBadguysTower1BotKey].int
		npcDotaNeutralSatyrTrickster = json[kDMKilledNpcDotaNeutralSatyrTricksterKey].int
		npcDotaNeutralEnragedWildkin = json[kDMKilledNpcDotaNeutralEnragedWildkinKey].int
		npcDotaNeutralBlackDrake = json[kDMKilledNpcDotaNeutralBlackDrakeKey].int
		npcDotaHeroVengefulspirit = json[kDMKilledNpcDotaHeroVengefulspiritKey].int
		npcDotaGoodguysMeleeRaxMid = json[kDMKilledNpcDotaGoodguysMeleeRaxMidKey].int
		npcDotaBadguysTower3Mid = json[kDMKilledNpcDotaBadguysTower3MidKey].int
		npcDotaNeutralHarpyStorm = json[kDMKilledNpcDotaNeutralHarpyStormKey].int
		npcDotaBadguysTower2Mid = json[kDMKilledNpcDotaBadguysTower2MidKey].int
		npcDotaCreepBadguysMelee = json[kDMKilledNpcDotaCreepBadguysMeleeKey].int
		npcDotaNeutralOgreMauler = json[kDMKilledNpcDotaNeutralOgreMaulerKey].int
		npcDotaGoodguysTower1Bot = json[kDMKilledNpcDotaGoodguysTower1BotKey].int
		npcDotaNeutralGraniteGolem = json[kDMKilledNpcDotaNeutralGraniteGolemKey].int
		npcDotaNeutralFelBeast = json[kDMKilledNpcDotaNeutralFelBeastKey].int
		npcDotaNeutralGnollAssassin = json[kDMKilledNpcDotaNeutralGnollAssassinKey].int
		npcDotaNeutralBlackDragon = json[kDMKilledNpcDotaNeutralBlackDragonKey].int
		npcDotaNeutralMudGolem = json[kDMKilledNpcDotaNeutralMudGolemKey].int
		npcDotaSentryWards = json[kDMKilledNpcDotaSentryWardsKey].int
		npcDotaNeutralCentaurKhan = json[kDMKilledNpcDotaNeutralCentaurKhanKey].int
		npcDotaHeroViper = json[kDMKilledNpcDotaHeroViperKey].int
		npcDotaNeutralBigThunderLizard = json[kDMKilledNpcDotaNeutralBigThunderLizardKey].int
		npcDotaNeutralPolarFurbolgChampion = json[kDMKilledNpcDotaNeutralPolarFurbolgChampionKey].int
		npcDotaNeutralAlphaWolf = json[kDMKilledNpcDotaNeutralAlphaWolfKey].int
		npcDotaNeutralForestTrollHighPriest = json[kDMKilledNpcDotaNeutralForestTrollHighPriestKey].int
		npcDotaGoodguysTower3Mid = json[kDMKilledNpcDotaGoodguysTower3MidKey].int
		npcDotaCreepBadguysRangedUpgraded = json[kDMKilledNpcDotaCreepBadguysRangedUpgradedKey].int
		npcDotaNeutralCentaurOutrunner = json[kDMKilledNpcDotaNeutralCentaurOutrunnerKey].int
		npcDotaGoodguysTower2Top = json[kDMKilledNpcDotaGoodguysTower2TopKey].int
		npcDotaGoodguysFillers = json[kDMKilledNpcDotaGoodguysFillersKey].int
		npcDotaDarkTrollWarlordSkeletonWarrior = json[kDMKilledNpcDotaDarkTrollWarlordSkeletonWarriorKey].int
		npcDotaNeutralWildkin = json[kDMKilledNpcDotaNeutralWildkinKey].int
		npcDotaNeutralHarpyScout = json[kDMKilledNpcDotaNeutralHarpyScoutKey].int
		npcDotaGoodguysTower2Mid = json[kDMKilledNpcDotaGoodguysTower2MidKey].int
		npcDotaNeutralSatyrSoulstealer = json[kDMKilledNpcDotaNeutralSatyrSoulstealerKey].int
		npcDotaGoodguysTower1Mid = json[kDMKilledNpcDotaGoodguysTower1MidKey].int
		npcDotaBadguysTower2Bot = json[kDMKilledNpcDotaBadguysTower2BotKey].int
		npcDotaNeutralSatyrHellcaller = json[kDMKilledNpcDotaNeutralSatyrHellcallerKey].int
		npcDotaCreepGoodguysMelee = json[kDMKilledNpcDotaCreepGoodguysMeleeKey].int
		npcDotaGoodguysRangeRaxMid = json[kDMKilledNpcDotaGoodguysRangeRaxMidKey].int
		npcDotaCreepBadguysRanged = json[kDMKilledNpcDotaCreepBadguysRangedKey].int
		npcDotaJuggernautHealingWard = json[kDMKilledNpcDotaJuggernautHealingWardKey].int
		npcDotaObserverWards = json[kDMKilledNpcDotaObserverWardsKey].int
		npcDotaNeutralSmallThunderLizard = json[kDMKilledNpcDotaNeutralSmallThunderLizardKey].int
		npcDotaNeutralDarkTrollWarlord = json[kDMKilledNpcDotaNeutralDarkTrollWarlordKey].int
		npcDotaBadguysTower2Top = json[kDMKilledNpcDotaBadguysTower2TopKey].int
		npcDotaBadguysSiegeUpgraded = json[kDMKilledNpcDotaBadguysSiegeUpgradedKey].int
		npcDotaGoodguysSiege = json[kDMKilledNpcDotaGoodguysSiegeKey].int
		npcDotaGoodguysTower4 = json[kDMKilledNpcDotaGoodguysTower4Key].int
		npcDotaRoshan = json[kDMKilledNpcDotaRoshanKey].int
		npcDotaHeroJuggernaut = json[kDMKilledNpcDotaHeroJuggernautKey].int
		npcDotaBadguysSiege = json[kDMKilledNpcDotaBadguysSiegeKey].int
		npcDotaNeutralOgreMagi = json[kDMKilledNpcDotaNeutralOgreMagiKey].int
		npcDotaNeutralForestTrollBerserker = json[kDMKilledNpcDotaNeutralForestTrollBerserkerKey].int
		npcDotaCreepGoodguysRanged = json[kDMKilledNpcDotaCreepGoodguysRangedKey].int
		npcDotaHeroArcWarden = json[kDMKilledNpcDotaHeroArcWardenKey].int
		npcDotaHeroEmberSpirit = json[kDMKilledNpcDotaHeroEmberSpiritKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if npcDotaHeroBristleback != nil {
			dictionary.updateValue(npcDotaHeroBristleback!, forKey: kDMKilledNpcDotaHeroBristlebackKey)
		}
		if npcDotaHeroAbaddon != nil {
			dictionary.updateValue(npcDotaHeroAbaddon!, forKey: kDMKilledNpcDotaHeroAbaddonKey)
		}
		if npcDotaNeutralDarkTroll != nil {
			dictionary.updateValue(npcDotaNeutralDarkTroll!, forKey: kDMKilledNpcDotaNeutralDarkTrollKey)
		}
		if npcDotaHeroCrystalMaiden != nil {
			dictionary.updateValue(npcDotaHeroCrystalMaiden!, forKey: kDMKilledNpcDotaHeroCrystalMaidenKey)
		}
		if npcDotaNeutralGiantWolf != nil {
			dictionary.updateValue(npcDotaNeutralGiantWolf!, forKey: kDMKilledNpcDotaNeutralGiantWolfKey)
		}
		if npcDotaHeroNevermore != nil {
			dictionary.updateValue(npcDotaHeroNevermore!, forKey: kDMKilledNpcDotaHeroNevermoreKey)
		}
		if npcDotaNeutralKoboldTunneler != nil {
			dictionary.updateValue(npcDotaNeutralKoboldTunneler!, forKey: kDMKilledNpcDotaNeutralKoboldTunnelerKey)
		}
		if npcDotaNeutralMudGolemSplit != nil {
			dictionary.updateValue(npcDotaNeutralMudGolemSplit!, forKey: kDMKilledNpcDotaNeutralMudGolemSplitKey)
		}
		if npcDotaCourier != nil {
			dictionary.updateValue(npcDotaCourier!, forKey: kDMKilledNpcDotaCourierKey)
		}
		if npcDotaNeutralKoboldTaskmaster != nil {
			dictionary.updateValue(npcDotaNeutralKoboldTaskmaster!, forKey: kDMKilledNpcDotaNeutralKoboldTaskmasterKey)
		}
		if npcDotaGoodguysFort != nil {
			dictionary.updateValue(npcDotaGoodguysFort!, forKey: kDMKilledNpcDotaGoodguysFortKey)
		}
		if npcDotaNeutralGhost != nil {
			dictionary.updateValue(npcDotaNeutralGhost!, forKey: kDMKilledNpcDotaNeutralGhostKey)
		}
		if npcDotaNeutralPolarFurbolgUrsaWarrior != nil {
			dictionary.updateValue(npcDotaNeutralPolarFurbolgUrsaWarrior!, forKey: kDMKilledNpcDotaNeutralPolarFurbolgUrsaWarriorKey)
		}
		if npcDotaHeroKunkka != nil {
			dictionary.updateValue(npcDotaHeroKunkka!, forKey: kDMKilledNpcDotaHeroKunkkaKey)
		}
		if npcDotaBadguysTower1Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower1Mid!, forKey: kDMKilledNpcDotaBadguysTower1MidKey)
		}
		if npcDotaNeutralRockGolem != nil {
			dictionary.updateValue(npcDotaNeutralRockGolem!, forKey: kDMKilledNpcDotaNeutralRockGolemKey)
		}
		if npcDotaNeutralKobold != nil {
			dictionary.updateValue(npcDotaNeutralKobold!, forKey: kDMKilledNpcDotaNeutralKoboldKey)
		}
		if npcDotaBadguysTower1Bot != nil {
			dictionary.updateValue(npcDotaBadguysTower1Bot!, forKey: kDMKilledNpcDotaBadguysTower1BotKey)
		}
		if npcDotaNeutralSatyrTrickster != nil {
			dictionary.updateValue(npcDotaNeutralSatyrTrickster!, forKey: kDMKilledNpcDotaNeutralSatyrTricksterKey)
		}
		if npcDotaNeutralEnragedWildkin != nil {
			dictionary.updateValue(npcDotaNeutralEnragedWildkin!, forKey: kDMKilledNpcDotaNeutralEnragedWildkinKey)
		}
		if npcDotaNeutralBlackDrake != nil {
			dictionary.updateValue(npcDotaNeutralBlackDrake!, forKey: kDMKilledNpcDotaNeutralBlackDrakeKey)
		}
		if npcDotaHeroVengefulspirit != nil {
			dictionary.updateValue(npcDotaHeroVengefulspirit!, forKey: kDMKilledNpcDotaHeroVengefulspiritKey)
		}
		if npcDotaGoodguysMeleeRaxMid != nil {
			dictionary.updateValue(npcDotaGoodguysMeleeRaxMid!, forKey: kDMKilledNpcDotaGoodguysMeleeRaxMidKey)
		}
		if npcDotaBadguysTower3Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower3Mid!, forKey: kDMKilledNpcDotaBadguysTower3MidKey)
		}
		if npcDotaNeutralHarpyStorm != nil {
			dictionary.updateValue(npcDotaNeutralHarpyStorm!, forKey: kDMKilledNpcDotaNeutralHarpyStormKey)
		}
		if npcDotaBadguysTower2Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower2Mid!, forKey: kDMKilledNpcDotaBadguysTower2MidKey)
		}
		if npcDotaCreepBadguysMelee != nil {
			dictionary.updateValue(npcDotaCreepBadguysMelee!, forKey: kDMKilledNpcDotaCreepBadguysMeleeKey)
		}
		if npcDotaNeutralOgreMauler != nil {
			dictionary.updateValue(npcDotaNeutralOgreMauler!, forKey: kDMKilledNpcDotaNeutralOgreMaulerKey)
		}
		if npcDotaGoodguysTower1Bot != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Bot!, forKey: kDMKilledNpcDotaGoodguysTower1BotKey)
		}
		if npcDotaNeutralGraniteGolem != nil {
			dictionary.updateValue(npcDotaNeutralGraniteGolem!, forKey: kDMKilledNpcDotaNeutralGraniteGolemKey)
		}
		if npcDotaNeutralFelBeast != nil {
			dictionary.updateValue(npcDotaNeutralFelBeast!, forKey: kDMKilledNpcDotaNeutralFelBeastKey)
		}
		if npcDotaNeutralGnollAssassin != nil {
			dictionary.updateValue(npcDotaNeutralGnollAssassin!, forKey: kDMKilledNpcDotaNeutralGnollAssassinKey)
		}
		if npcDotaNeutralBlackDragon != nil {
			dictionary.updateValue(npcDotaNeutralBlackDragon!, forKey: kDMKilledNpcDotaNeutralBlackDragonKey)
		}
		if npcDotaNeutralMudGolem != nil {
			dictionary.updateValue(npcDotaNeutralMudGolem!, forKey: kDMKilledNpcDotaNeutralMudGolemKey)
		}
		if npcDotaSentryWards != nil {
			dictionary.updateValue(npcDotaSentryWards!, forKey: kDMKilledNpcDotaSentryWardsKey)
		}
		if npcDotaNeutralCentaurKhan != nil {
			dictionary.updateValue(npcDotaNeutralCentaurKhan!, forKey: kDMKilledNpcDotaNeutralCentaurKhanKey)
		}
		if npcDotaHeroViper != nil {
			dictionary.updateValue(npcDotaHeroViper!, forKey: kDMKilledNpcDotaHeroViperKey)
		}
		if npcDotaNeutralBigThunderLizard != nil {
			dictionary.updateValue(npcDotaNeutralBigThunderLizard!, forKey: kDMKilledNpcDotaNeutralBigThunderLizardKey)
		}
		if npcDotaNeutralPolarFurbolgChampion != nil {
			dictionary.updateValue(npcDotaNeutralPolarFurbolgChampion!, forKey: kDMKilledNpcDotaNeutralPolarFurbolgChampionKey)
		}
		if npcDotaNeutralAlphaWolf != nil {
			dictionary.updateValue(npcDotaNeutralAlphaWolf!, forKey: kDMKilledNpcDotaNeutralAlphaWolfKey)
		}
		if npcDotaNeutralForestTrollHighPriest != nil {
			dictionary.updateValue(npcDotaNeutralForestTrollHighPriest!, forKey: kDMKilledNpcDotaNeutralForestTrollHighPriestKey)
		}
		if npcDotaGoodguysTower3Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower3Mid!, forKey: kDMKilledNpcDotaGoodguysTower3MidKey)
		}
		if npcDotaCreepBadguysRangedUpgraded != nil {
			dictionary.updateValue(npcDotaCreepBadguysRangedUpgraded!, forKey: kDMKilledNpcDotaCreepBadguysRangedUpgradedKey)
		}
		if npcDotaNeutralCentaurOutrunner != nil {
			dictionary.updateValue(npcDotaNeutralCentaurOutrunner!, forKey: kDMKilledNpcDotaNeutralCentaurOutrunnerKey)
		}
		if npcDotaGoodguysTower2Top != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Top!, forKey: kDMKilledNpcDotaGoodguysTower2TopKey)
		}
		if npcDotaGoodguysFillers != nil {
			dictionary.updateValue(npcDotaGoodguysFillers!, forKey: kDMKilledNpcDotaGoodguysFillersKey)
		}
		if npcDotaDarkTrollWarlordSkeletonWarrior != nil {
			dictionary.updateValue(npcDotaDarkTrollWarlordSkeletonWarrior!, forKey: kDMKilledNpcDotaDarkTrollWarlordSkeletonWarriorKey)
		}
		if npcDotaNeutralWildkin != nil {
			dictionary.updateValue(npcDotaNeutralWildkin!, forKey: kDMKilledNpcDotaNeutralWildkinKey)
		}
		if npcDotaNeutralHarpyScout != nil {
			dictionary.updateValue(npcDotaNeutralHarpyScout!, forKey: kDMKilledNpcDotaNeutralHarpyScoutKey)
		}
		if npcDotaGoodguysTower2Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Mid!, forKey: kDMKilledNpcDotaGoodguysTower2MidKey)
		}
		if npcDotaNeutralSatyrSoulstealer != nil {
			dictionary.updateValue(npcDotaNeutralSatyrSoulstealer!, forKey: kDMKilledNpcDotaNeutralSatyrSoulstealerKey)
		}
		if npcDotaGoodguysTower1Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Mid!, forKey: kDMKilledNpcDotaGoodguysTower1MidKey)
		}
		if npcDotaBadguysTower2Bot != nil {
			dictionary.updateValue(npcDotaBadguysTower2Bot!, forKey: kDMKilledNpcDotaBadguysTower2BotKey)
		}
		if npcDotaNeutralSatyrHellcaller != nil {
			dictionary.updateValue(npcDotaNeutralSatyrHellcaller!, forKey: kDMKilledNpcDotaNeutralSatyrHellcallerKey)
		}
		if npcDotaCreepGoodguysMelee != nil {
			dictionary.updateValue(npcDotaCreepGoodguysMelee!, forKey: kDMKilledNpcDotaCreepGoodguysMeleeKey)
		}
		if npcDotaGoodguysRangeRaxMid != nil {
			dictionary.updateValue(npcDotaGoodguysRangeRaxMid!, forKey: kDMKilledNpcDotaGoodguysRangeRaxMidKey)
		}
		if npcDotaCreepBadguysRanged != nil {
			dictionary.updateValue(npcDotaCreepBadguysRanged!, forKey: kDMKilledNpcDotaCreepBadguysRangedKey)
		}
		if npcDotaJuggernautHealingWard != nil {
			dictionary.updateValue(npcDotaJuggernautHealingWard!, forKey: kDMKilledNpcDotaJuggernautHealingWardKey)
		}
		if npcDotaObserverWards != nil {
			dictionary.updateValue(npcDotaObserverWards!, forKey: kDMKilledNpcDotaObserverWardsKey)
		}
		if npcDotaNeutralSmallThunderLizard != nil {
			dictionary.updateValue(npcDotaNeutralSmallThunderLizard!, forKey: kDMKilledNpcDotaNeutralSmallThunderLizardKey)
		}
		if npcDotaNeutralDarkTrollWarlord != nil {
			dictionary.updateValue(npcDotaNeutralDarkTrollWarlord!, forKey: kDMKilledNpcDotaNeutralDarkTrollWarlordKey)
		}
		if npcDotaBadguysTower2Top != nil {
			dictionary.updateValue(npcDotaBadguysTower2Top!, forKey: kDMKilledNpcDotaBadguysTower2TopKey)
		}
		if npcDotaBadguysSiegeUpgraded != nil {
			dictionary.updateValue(npcDotaBadguysSiegeUpgraded!, forKey: kDMKilledNpcDotaBadguysSiegeUpgradedKey)
		}
		if npcDotaGoodguysSiege != nil {
			dictionary.updateValue(npcDotaGoodguysSiege!, forKey: kDMKilledNpcDotaGoodguysSiegeKey)
		}
		if npcDotaGoodguysTower4 != nil {
			dictionary.updateValue(npcDotaGoodguysTower4!, forKey: kDMKilledNpcDotaGoodguysTower4Key)
		}
		if npcDotaRoshan != nil {
			dictionary.updateValue(npcDotaRoshan!, forKey: kDMKilledNpcDotaRoshanKey)
		}
		if npcDotaHeroJuggernaut != nil {
			dictionary.updateValue(npcDotaHeroJuggernaut!, forKey: kDMKilledNpcDotaHeroJuggernautKey)
		}
		if npcDotaBadguysSiege != nil {
			dictionary.updateValue(npcDotaBadguysSiege!, forKey: kDMKilledNpcDotaBadguysSiegeKey)
		}
		if npcDotaNeutralOgreMagi != nil {
			dictionary.updateValue(npcDotaNeutralOgreMagi!, forKey: kDMKilledNpcDotaNeutralOgreMagiKey)
		}
		if npcDotaNeutralForestTrollBerserker != nil {
			dictionary.updateValue(npcDotaNeutralForestTrollBerserker!, forKey: kDMKilledNpcDotaNeutralForestTrollBerserkerKey)
		}
		if npcDotaCreepGoodguysRanged != nil {
			dictionary.updateValue(npcDotaCreepGoodguysRanged!, forKey: kDMKilledNpcDotaCreepGoodguysRangedKey)
		}
		if npcDotaHeroArcWarden != nil {
			dictionary.updateValue(npcDotaHeroArcWarden!, forKey: kDMKilledNpcDotaHeroArcWardenKey)
		}
		if npcDotaHeroEmberSpirit != nil {
			dictionary.updateValue(npcDotaHeroEmberSpirit!, forKey: kDMKilledNpcDotaHeroEmberSpiritKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.npcDotaHeroBristleback = aDecoder.decodeObjectForKey(kDMKilledNpcDotaHeroBristlebackKey) as? Int
		self.npcDotaHeroAbaddon = aDecoder.decodeObjectForKey(kDMKilledNpcDotaHeroAbaddonKey) as? Int
		self.npcDotaNeutralDarkTroll = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralDarkTrollKey) as? Int
		self.npcDotaHeroCrystalMaiden = aDecoder.decodeObjectForKey(kDMKilledNpcDotaHeroCrystalMaidenKey) as? Int
		self.npcDotaNeutralGiantWolf = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralGiantWolfKey) as? Int
		self.npcDotaHeroNevermore = aDecoder.decodeObjectForKey(kDMKilledNpcDotaHeroNevermoreKey) as? Int
		self.npcDotaNeutralKoboldTunneler = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralKoboldTunnelerKey) as? Int
		self.npcDotaNeutralMudGolemSplit = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralMudGolemSplitKey) as? Int
		self.npcDotaCourier = aDecoder.decodeObjectForKey(kDMKilledNpcDotaCourierKey) as? Int
		self.npcDotaNeutralKoboldTaskmaster = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralKoboldTaskmasterKey) as? Int
		self.npcDotaGoodguysFort = aDecoder.decodeObjectForKey(kDMKilledNpcDotaGoodguysFortKey) as? Int
		self.npcDotaNeutralGhost = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralGhostKey) as? Int
		self.npcDotaNeutralPolarFurbolgUrsaWarrior = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralPolarFurbolgUrsaWarriorKey) as? Int
		self.npcDotaHeroKunkka = aDecoder.decodeObjectForKey(kDMKilledNpcDotaHeroKunkkaKey) as? Int
		self.npcDotaBadguysTower1Mid = aDecoder.decodeObjectForKey(kDMKilledNpcDotaBadguysTower1MidKey) as? Int
		self.npcDotaNeutralRockGolem = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralRockGolemKey) as? Int
		self.npcDotaNeutralKobold = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralKoboldKey) as? Int
		self.npcDotaBadguysTower1Bot = aDecoder.decodeObjectForKey(kDMKilledNpcDotaBadguysTower1BotKey) as? Int
		self.npcDotaNeutralSatyrTrickster = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralSatyrTricksterKey) as? Int
		self.npcDotaNeutralEnragedWildkin = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralEnragedWildkinKey) as? Int
		self.npcDotaNeutralBlackDrake = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralBlackDrakeKey) as? Int
		self.npcDotaHeroVengefulspirit = aDecoder.decodeObjectForKey(kDMKilledNpcDotaHeroVengefulspiritKey) as? Int
		self.npcDotaGoodguysMeleeRaxMid = aDecoder.decodeObjectForKey(kDMKilledNpcDotaGoodguysMeleeRaxMidKey) as? Int
		self.npcDotaBadguysTower3Mid = aDecoder.decodeObjectForKey(kDMKilledNpcDotaBadguysTower3MidKey) as? Int
		self.npcDotaNeutralHarpyStorm = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralHarpyStormKey) as? Int
		self.npcDotaBadguysTower2Mid = aDecoder.decodeObjectForKey(kDMKilledNpcDotaBadguysTower2MidKey) as? Int
		self.npcDotaCreepBadguysMelee = aDecoder.decodeObjectForKey(kDMKilledNpcDotaCreepBadguysMeleeKey) as? Int
		self.npcDotaNeutralOgreMauler = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralOgreMaulerKey) as? Int
		self.npcDotaGoodguysTower1Bot = aDecoder.decodeObjectForKey(kDMKilledNpcDotaGoodguysTower1BotKey) as? Int
		self.npcDotaNeutralGraniteGolem = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralGraniteGolemKey) as? Int
		self.npcDotaNeutralFelBeast = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralFelBeastKey) as? Int
		self.npcDotaNeutralGnollAssassin = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralGnollAssassinKey) as? Int
		self.npcDotaNeutralBlackDragon = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralBlackDragonKey) as? Int
		self.npcDotaNeutralMudGolem = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralMudGolemKey) as? Int
		self.npcDotaSentryWards = aDecoder.decodeObjectForKey(kDMKilledNpcDotaSentryWardsKey) as? Int
		self.npcDotaNeutralCentaurKhan = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralCentaurKhanKey) as? Int
		self.npcDotaHeroViper = aDecoder.decodeObjectForKey(kDMKilledNpcDotaHeroViperKey) as? Int
		self.npcDotaNeutralBigThunderLizard = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralBigThunderLizardKey) as? Int
		self.npcDotaNeutralPolarFurbolgChampion = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralPolarFurbolgChampionKey) as? Int
		self.npcDotaNeutralAlphaWolf = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralAlphaWolfKey) as? Int
		self.npcDotaNeutralForestTrollHighPriest = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralForestTrollHighPriestKey) as? Int
		self.npcDotaGoodguysTower3Mid = aDecoder.decodeObjectForKey(kDMKilledNpcDotaGoodguysTower3MidKey) as? Int
		self.npcDotaCreepBadguysRangedUpgraded = aDecoder.decodeObjectForKey(kDMKilledNpcDotaCreepBadguysRangedUpgradedKey) as? Int
		self.npcDotaNeutralCentaurOutrunner = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralCentaurOutrunnerKey) as? Int
		self.npcDotaGoodguysTower2Top = aDecoder.decodeObjectForKey(kDMKilledNpcDotaGoodguysTower2TopKey) as? Int
		self.npcDotaGoodguysFillers = aDecoder.decodeObjectForKey(kDMKilledNpcDotaGoodguysFillersKey) as? Int
		self.npcDotaDarkTrollWarlordSkeletonWarrior = aDecoder.decodeObjectForKey(kDMKilledNpcDotaDarkTrollWarlordSkeletonWarriorKey) as? Int
		self.npcDotaNeutralWildkin = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralWildkinKey) as? Int
		self.npcDotaNeutralHarpyScout = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralHarpyScoutKey) as? Int
		self.npcDotaGoodguysTower2Mid = aDecoder.decodeObjectForKey(kDMKilledNpcDotaGoodguysTower2MidKey) as? Int
		self.npcDotaNeutralSatyrSoulstealer = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralSatyrSoulstealerKey) as? Int
		self.npcDotaGoodguysTower1Mid = aDecoder.decodeObjectForKey(kDMKilledNpcDotaGoodguysTower1MidKey) as? Int
		self.npcDotaBadguysTower2Bot = aDecoder.decodeObjectForKey(kDMKilledNpcDotaBadguysTower2BotKey) as? Int
		self.npcDotaNeutralSatyrHellcaller = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralSatyrHellcallerKey) as? Int
		self.npcDotaCreepGoodguysMelee = aDecoder.decodeObjectForKey(kDMKilledNpcDotaCreepGoodguysMeleeKey) as? Int
		self.npcDotaGoodguysRangeRaxMid = aDecoder.decodeObjectForKey(kDMKilledNpcDotaGoodguysRangeRaxMidKey) as? Int
		self.npcDotaCreepBadguysRanged = aDecoder.decodeObjectForKey(kDMKilledNpcDotaCreepBadguysRangedKey) as? Int
		self.npcDotaJuggernautHealingWard = aDecoder.decodeObjectForKey(kDMKilledNpcDotaJuggernautHealingWardKey) as? Int
		self.npcDotaObserverWards = aDecoder.decodeObjectForKey(kDMKilledNpcDotaObserverWardsKey) as? Int
		self.npcDotaNeutralSmallThunderLizard = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralSmallThunderLizardKey) as? Int
		self.npcDotaNeutralDarkTrollWarlord = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralDarkTrollWarlordKey) as? Int
		self.npcDotaBadguysTower2Top = aDecoder.decodeObjectForKey(kDMKilledNpcDotaBadguysTower2TopKey) as? Int
		self.npcDotaBadguysSiegeUpgraded = aDecoder.decodeObjectForKey(kDMKilledNpcDotaBadguysSiegeUpgradedKey) as? Int
		self.npcDotaGoodguysSiege = aDecoder.decodeObjectForKey(kDMKilledNpcDotaGoodguysSiegeKey) as? Int
		self.npcDotaGoodguysTower4 = aDecoder.decodeObjectForKey(kDMKilledNpcDotaGoodguysTower4Key) as? Int
		self.npcDotaRoshan = aDecoder.decodeObjectForKey(kDMKilledNpcDotaRoshanKey) as? Int
		self.npcDotaHeroJuggernaut = aDecoder.decodeObjectForKey(kDMKilledNpcDotaHeroJuggernautKey) as? Int
		self.npcDotaBadguysSiege = aDecoder.decodeObjectForKey(kDMKilledNpcDotaBadguysSiegeKey) as? Int
		self.npcDotaNeutralOgreMagi = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralOgreMagiKey) as? Int
		self.npcDotaNeutralForestTrollBerserker = aDecoder.decodeObjectForKey(kDMKilledNpcDotaNeutralForestTrollBerserkerKey) as? Int
		self.npcDotaCreepGoodguysRanged = aDecoder.decodeObjectForKey(kDMKilledNpcDotaCreepGoodguysRangedKey) as? Int
		self.npcDotaHeroArcWarden = aDecoder.decodeObjectForKey(kDMKilledNpcDotaHeroArcWardenKey) as? Int
		self.npcDotaHeroEmberSpirit = aDecoder.decodeObjectForKey(kDMKilledNpcDotaHeroEmberSpiritKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(npcDotaHeroBristleback, forKey: kDMKilledNpcDotaHeroBristlebackKey)
		aCoder.encodeObject(npcDotaHeroAbaddon, forKey: kDMKilledNpcDotaHeroAbaddonKey)
		aCoder.encodeObject(npcDotaNeutralDarkTroll, forKey: kDMKilledNpcDotaNeutralDarkTrollKey)
		aCoder.encodeObject(npcDotaHeroCrystalMaiden, forKey: kDMKilledNpcDotaHeroCrystalMaidenKey)
		aCoder.encodeObject(npcDotaNeutralGiantWolf, forKey: kDMKilledNpcDotaNeutralGiantWolfKey)
		aCoder.encodeObject(npcDotaHeroNevermore, forKey: kDMKilledNpcDotaHeroNevermoreKey)
		aCoder.encodeObject(npcDotaNeutralKoboldTunneler, forKey: kDMKilledNpcDotaNeutralKoboldTunnelerKey)
		aCoder.encodeObject(npcDotaNeutralMudGolemSplit, forKey: kDMKilledNpcDotaNeutralMudGolemSplitKey)
		aCoder.encodeObject(npcDotaCourier, forKey: kDMKilledNpcDotaCourierKey)
		aCoder.encodeObject(npcDotaNeutralKoboldTaskmaster, forKey: kDMKilledNpcDotaNeutralKoboldTaskmasterKey)
		aCoder.encodeObject(npcDotaGoodguysFort, forKey: kDMKilledNpcDotaGoodguysFortKey)
		aCoder.encodeObject(npcDotaNeutralGhost, forKey: kDMKilledNpcDotaNeutralGhostKey)
		aCoder.encodeObject(npcDotaNeutralPolarFurbolgUrsaWarrior, forKey: kDMKilledNpcDotaNeutralPolarFurbolgUrsaWarriorKey)
		aCoder.encodeObject(npcDotaHeroKunkka, forKey: kDMKilledNpcDotaHeroKunkkaKey)
		aCoder.encodeObject(npcDotaBadguysTower1Mid, forKey: kDMKilledNpcDotaBadguysTower1MidKey)
		aCoder.encodeObject(npcDotaNeutralRockGolem, forKey: kDMKilledNpcDotaNeutralRockGolemKey)
		aCoder.encodeObject(npcDotaNeutralKobold, forKey: kDMKilledNpcDotaNeutralKoboldKey)
		aCoder.encodeObject(npcDotaBadguysTower1Bot, forKey: kDMKilledNpcDotaBadguysTower1BotKey)
		aCoder.encodeObject(npcDotaNeutralSatyrTrickster, forKey: kDMKilledNpcDotaNeutralSatyrTricksterKey)
		aCoder.encodeObject(npcDotaNeutralEnragedWildkin, forKey: kDMKilledNpcDotaNeutralEnragedWildkinKey)
		aCoder.encodeObject(npcDotaNeutralBlackDrake, forKey: kDMKilledNpcDotaNeutralBlackDrakeKey)
		aCoder.encodeObject(npcDotaHeroVengefulspirit, forKey: kDMKilledNpcDotaHeroVengefulspiritKey)
		aCoder.encodeObject(npcDotaGoodguysMeleeRaxMid, forKey: kDMKilledNpcDotaGoodguysMeleeRaxMidKey)
		aCoder.encodeObject(npcDotaBadguysTower3Mid, forKey: kDMKilledNpcDotaBadguysTower3MidKey)
		aCoder.encodeObject(npcDotaNeutralHarpyStorm, forKey: kDMKilledNpcDotaNeutralHarpyStormKey)
		aCoder.encodeObject(npcDotaBadguysTower2Mid, forKey: kDMKilledNpcDotaBadguysTower2MidKey)
		aCoder.encodeObject(npcDotaCreepBadguysMelee, forKey: kDMKilledNpcDotaCreepBadguysMeleeKey)
		aCoder.encodeObject(npcDotaNeutralOgreMauler, forKey: kDMKilledNpcDotaNeutralOgreMaulerKey)
		aCoder.encodeObject(npcDotaGoodguysTower1Bot, forKey: kDMKilledNpcDotaGoodguysTower1BotKey)
		aCoder.encodeObject(npcDotaNeutralGraniteGolem, forKey: kDMKilledNpcDotaNeutralGraniteGolemKey)
		aCoder.encodeObject(npcDotaNeutralFelBeast, forKey: kDMKilledNpcDotaNeutralFelBeastKey)
		aCoder.encodeObject(npcDotaNeutralGnollAssassin, forKey: kDMKilledNpcDotaNeutralGnollAssassinKey)
		aCoder.encodeObject(npcDotaNeutralBlackDragon, forKey: kDMKilledNpcDotaNeutralBlackDragonKey)
		aCoder.encodeObject(npcDotaNeutralMudGolem, forKey: kDMKilledNpcDotaNeutralMudGolemKey)
		aCoder.encodeObject(npcDotaSentryWards, forKey: kDMKilledNpcDotaSentryWardsKey)
		aCoder.encodeObject(npcDotaNeutralCentaurKhan, forKey: kDMKilledNpcDotaNeutralCentaurKhanKey)
		aCoder.encodeObject(npcDotaHeroViper, forKey: kDMKilledNpcDotaHeroViperKey)
		aCoder.encodeObject(npcDotaNeutralBigThunderLizard, forKey: kDMKilledNpcDotaNeutralBigThunderLizardKey)
		aCoder.encodeObject(npcDotaNeutralPolarFurbolgChampion, forKey: kDMKilledNpcDotaNeutralPolarFurbolgChampionKey)
		aCoder.encodeObject(npcDotaNeutralAlphaWolf, forKey: kDMKilledNpcDotaNeutralAlphaWolfKey)
		aCoder.encodeObject(npcDotaNeutralForestTrollHighPriest, forKey: kDMKilledNpcDotaNeutralForestTrollHighPriestKey)
		aCoder.encodeObject(npcDotaGoodguysTower3Mid, forKey: kDMKilledNpcDotaGoodguysTower3MidKey)
		aCoder.encodeObject(npcDotaCreepBadguysRangedUpgraded, forKey: kDMKilledNpcDotaCreepBadguysRangedUpgradedKey)
		aCoder.encodeObject(npcDotaNeutralCentaurOutrunner, forKey: kDMKilledNpcDotaNeutralCentaurOutrunnerKey)
		aCoder.encodeObject(npcDotaGoodguysTower2Top, forKey: kDMKilledNpcDotaGoodguysTower2TopKey)
		aCoder.encodeObject(npcDotaGoodguysFillers, forKey: kDMKilledNpcDotaGoodguysFillersKey)
		aCoder.encodeObject(npcDotaDarkTrollWarlordSkeletonWarrior, forKey: kDMKilledNpcDotaDarkTrollWarlordSkeletonWarriorKey)
		aCoder.encodeObject(npcDotaNeutralWildkin, forKey: kDMKilledNpcDotaNeutralWildkinKey)
		aCoder.encodeObject(npcDotaNeutralHarpyScout, forKey: kDMKilledNpcDotaNeutralHarpyScoutKey)
		aCoder.encodeObject(npcDotaGoodguysTower2Mid, forKey: kDMKilledNpcDotaGoodguysTower2MidKey)
		aCoder.encodeObject(npcDotaNeutralSatyrSoulstealer, forKey: kDMKilledNpcDotaNeutralSatyrSoulstealerKey)
		aCoder.encodeObject(npcDotaGoodguysTower1Mid, forKey: kDMKilledNpcDotaGoodguysTower1MidKey)
		aCoder.encodeObject(npcDotaBadguysTower2Bot, forKey: kDMKilledNpcDotaBadguysTower2BotKey)
		aCoder.encodeObject(npcDotaNeutralSatyrHellcaller, forKey: kDMKilledNpcDotaNeutralSatyrHellcallerKey)
		aCoder.encodeObject(npcDotaCreepGoodguysMelee, forKey: kDMKilledNpcDotaCreepGoodguysMeleeKey)
		aCoder.encodeObject(npcDotaGoodguysRangeRaxMid, forKey: kDMKilledNpcDotaGoodguysRangeRaxMidKey)
		aCoder.encodeObject(npcDotaCreepBadguysRanged, forKey: kDMKilledNpcDotaCreepBadguysRangedKey)
		aCoder.encodeObject(npcDotaJuggernautHealingWard, forKey: kDMKilledNpcDotaJuggernautHealingWardKey)
		aCoder.encodeObject(npcDotaObserverWards, forKey: kDMKilledNpcDotaObserverWardsKey)
		aCoder.encodeObject(npcDotaNeutralSmallThunderLizard, forKey: kDMKilledNpcDotaNeutralSmallThunderLizardKey)
		aCoder.encodeObject(npcDotaNeutralDarkTrollWarlord, forKey: kDMKilledNpcDotaNeutralDarkTrollWarlordKey)
		aCoder.encodeObject(npcDotaBadguysTower2Top, forKey: kDMKilledNpcDotaBadguysTower2TopKey)
		aCoder.encodeObject(npcDotaBadguysSiegeUpgraded, forKey: kDMKilledNpcDotaBadguysSiegeUpgradedKey)
		aCoder.encodeObject(npcDotaGoodguysSiege, forKey: kDMKilledNpcDotaGoodguysSiegeKey)
		aCoder.encodeObject(npcDotaGoodguysTower4, forKey: kDMKilledNpcDotaGoodguysTower4Key)
		aCoder.encodeObject(npcDotaRoshan, forKey: kDMKilledNpcDotaRoshanKey)
		aCoder.encodeObject(npcDotaHeroJuggernaut, forKey: kDMKilledNpcDotaHeroJuggernautKey)
		aCoder.encodeObject(npcDotaBadguysSiege, forKey: kDMKilledNpcDotaBadguysSiegeKey)
		aCoder.encodeObject(npcDotaNeutralOgreMagi, forKey: kDMKilledNpcDotaNeutralOgreMagiKey)
		aCoder.encodeObject(npcDotaNeutralForestTrollBerserker, forKey: kDMKilledNpcDotaNeutralForestTrollBerserkerKey)
		aCoder.encodeObject(npcDotaCreepGoodguysRanged, forKey: kDMKilledNpcDotaCreepGoodguysRangedKey)
		aCoder.encodeObject(npcDotaHeroArcWarden, forKey: kDMKilledNpcDotaHeroArcWardenKey)
		aCoder.encodeObject(npcDotaHeroEmberSpirit, forKey: kDMKilledNpcDotaHeroEmberSpiritKey)

    }

}
