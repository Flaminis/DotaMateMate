//
//  DMDamageTaken.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMDamageTaken: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMDamageTakenNpcDotaHeroBristlebackKey: String = "npc_dota_hero_bristleback"
	internal let kDMDamageTakenNpcDotaHeroAbaddonKey: String = "npc_dota_hero_abaddon"
	internal let kDMDamageTakenNpcDotaNeutralDarkTrollKey: String = "npc_dota_neutral_dark_troll"
	internal let kDMDamageTakenNpcDotaHeroCrystalMaidenKey: String = "npc_dota_hero_crystal_maiden"
	internal let kDMDamageTakenNpcDotaNeutralGiantWolfKey: String = "npc_dota_neutral_giant_wolf"
	internal let kDMDamageTakenNpcDotaHeroNevermoreKey: String = "npc_dota_hero_nevermore"
	internal let kDMDamageTakenNpcDotaNeutralMudGolemSplitKey: String = "npc_dota_neutral_mud_golem_split"
	internal let kDMDamageTakenNpcDotaNeutralKoboldTunnelerKey: String = "npc_dota_neutral_kobold_tunneler"
	internal let kDMDamageTakenNpcDotaBadguysTower1MidKey: String = "npc_dota_badguys_tower1_mid"
	internal let kDMDamageTakenNpcDotaNeutralKoboldTaskmasterKey: String = "npc_dota_neutral_kobold_taskmaster"
	internal let kDMDamageTakenNpcDotaNeutralGhostKey: String = "npc_dota_neutral_ghost"
	internal let kDMDamageTakenNpcDotaHeroKunkkaKey: String = "npc_dota_hero_kunkka"
	internal let kDMDamageTakenNpcDotaNeutralPolarFurbolgUrsaWarriorKey: String = "npc_dota_neutral_polar_furbolg_ursa_warrior"
	internal let kDMDamageTakenNpcDotaNeutralKoboldKey: String = "npc_dota_neutral_kobold"
	internal let kDMDamageTakenNpcDotaNeutralRockGolemKey: String = "npc_dota_neutral_rock_golem"
	internal let kDMDamageTakenNpcDotaBadguysTower1BotKey: String = "npc_dota_badguys_tower1_bot"
	internal let kDMDamageTakenNpcDotaNeutralSatyrTricksterKey: String = "npc_dota_neutral_satyr_trickster"
	internal let kDMDamageTakenNpcDotaGoodguysTower2BotKey: String = "npc_dota_goodguys_tower2_bot"
	internal let kDMDamageTakenNpcDotaNeutralEnragedWildkinKey: String = "npc_dota_neutral_enraged_wildkin"
	internal let kDMDamageTakenNpcDotaNeutralBlackDrakeKey: String = "npc_dota_neutral_black_drake"
	internal let kDMDamageTakenNpcDotaHeroVengefulspiritKey: String = "npc_dota_hero_vengefulspirit"
	internal let kDMDamageTakenNpcDotaBadguysTower3MidKey: String = "npc_dota_badguys_tower3_mid"
	internal let kDMDamageTakenNpcDotaNeutralHarpyStormKey: String = "npc_dota_neutral_harpy_storm"
	internal let kDMDamageTakenNpcDotaNeutralBlackDragonKey: String = "npc_dota_neutral_black_dragon"
	internal let kDMDamageTakenNpcDotaNeutralOgreMaulerKey: String = "npc_dota_neutral_ogre_mauler"
	internal let kDMDamageTakenNpcDotaGoodguysTower1BotKey: String = "npc_dota_goodguys_tower1_bot"
	internal let kDMDamageTakenNpcDotaGoodguysTower1TopKey: String = "npc_dota_goodguys_tower1_top"
	internal let kDMDamageTakenNpcDotaNeutralGraniteGolemKey: String = "npc_dota_neutral_granite_golem"
	internal let kDMDamageTakenNpcDotaNeutralFelBeastKey: String = "npc_dota_neutral_fel_beast"
	internal let kDMDamageTakenNpcDotaNeutralGnollAssassinKey: String = "npc_dota_neutral_gnoll_assassin"
	internal let kDMDamageTakenNpcDotaCreepBadguysMeleeKey: String = "npc_dota_creep_badguys_melee"
	internal let kDMDamageTakenNpcDotaNeutralMudGolemKey: String = "npc_dota_neutral_mud_golem"
	internal let kDMDamageTakenNpcDotaNeutralCentaurKhanKey: String = "npc_dota_neutral_centaur_khan"
	internal let kDMDamageTakenNpcDotaHeroViperKey: String = "npc_dota_hero_viper"
	internal let kDMDamageTakenNpcDotaNeutralPolarFurbolgChampionKey: String = "npc_dota_neutral_polar_furbolg_champion"
	internal let kDMDamageTakenNpcDotaNeutralBigThunderLizardKey: String = "npc_dota_neutral_big_thunder_lizard"
	internal let kDMDamageTakenNpcDotaNeutralAlphaWolfKey: String = "npc_dota_neutral_alpha_wolf"
	internal let kDMDamageTakenNpcDotaNeutralForestTrollHighPriestKey: String = "npc_dota_neutral_forest_troll_high_priest"
	internal let kDMDamageTakenNpcDotaGoodguysTower3MidKey: String = "npc_dota_goodguys_tower3_mid"
	internal let kDMDamageTakenNpcDotaCreepBadguysRangedUpgradedKey: String = "npc_dota_creep_badguys_ranged_upgraded"
	internal let kDMDamageTakenNpcDotaNeutralCentaurOutrunnerKey: String = "npc_dota_neutral_centaur_outrunner"
	internal let kDMDamageTakenNpcDotaGoodguysTower2TopKey: String = "npc_dota_goodguys_tower2_top"
	internal let kDMDamageTakenNpcDotaDarkTrollWarlordSkeletonWarriorKey: String = "npc_dota_dark_troll_warlord_skeleton_warrior"
	internal let kDMDamageTakenNpcDotaNeutralWildkinKey: String = "npc_dota_neutral_wildkin"
	internal let kDMDamageTakenNpcDotaBadguysTower1TopKey: String = "npc_dota_badguys_tower1_top"
	internal let kDMDamageTakenNpcDotaNeutralHarpyScoutKey: String = "npc_dota_neutral_harpy_scout"
	internal let kDMDamageTakenNpcDotaGoodguysTower2MidKey: String = "npc_dota_goodguys_tower2_mid"
	internal let kDMDamageTakenNpcDotaNeutralSatyrSoulstealerKey: String = "npc_dota_neutral_satyr_soulstealer"
	internal let kDMDamageTakenNpcDotaGoodguysTower1MidKey: String = "npc_dota_goodguys_tower1_mid"
	internal let kDMDamageTakenNpcDotaNeutralSatyrHellcallerKey: String = "npc_dota_neutral_satyr_hellcaller"
	internal let kDMDamageTakenNpcDotaCreepGoodguysMeleeKey: String = "npc_dota_creep_goodguys_melee"
	internal let kDMDamageTakenNpcDotaCreepBadguysRangedKey: String = "npc_dota_creep_badguys_ranged"
	internal let kDMDamageTakenNpcDotaNeutralSmallThunderLizardKey: String = "npc_dota_neutral_small_thunder_lizard"
	internal let kDMDamageTakenNpcDotaNeutralDarkTrollWarlordKey: String = "npc_dota_neutral_dark_troll_warlord"
	internal let kDMDamageTakenNpcDotaBadguysTower2TopKey: String = "npc_dota_badguys_tower2_top"
	internal let kDMDamageTakenNpcDotaBadguysSiegeUpgradedKey: String = "npc_dota_badguys_siege_upgraded"
	internal let kDMDamageTakenNpcDotaGoodguysSiegeKey: String = "npc_dota_goodguys_siege"
	internal let kDMDamageTakenNpcDotaGoodguysTower4Key: String = "npc_dota_goodguys_tower4"
	internal let kDMDamageTakenNpcDotaRoshanKey: String = "npc_dota_roshan"
	internal let kDMDamageTakenNpcDotaHeroJuggernautKey: String = "npc_dota_hero_juggernaut"
	internal let kDMDamageTakenNpcDotaBadguysTower4Key: String = "npc_dota_badguys_tower4"
	internal let kDMDamageTakenNpcDotaBadguysSiegeKey: String = "npc_dota_badguys_siege"
	internal let kDMDamageTakenDotaUnknownKey: String = "dota_unknown"
	internal let kDMDamageTakenNpcDotaNeutralOgreMagiKey: String = "npc_dota_neutral_ogre_magi"
	internal let kDMDamageTakenNpcDotaNeutralForestTrollBerserkerKey: String = "npc_dota_neutral_forest_troll_berserker"
	internal let kDMDamageTakenNpcDotaHeroArcWardenKey: String = "npc_dota_hero_arc_warden"
	internal let kDMDamageTakenNpcDotaCreepGoodguysRangedKey: String = "npc_dota_creep_goodguys_ranged"
	internal let kDMDamageTakenNpcDotaHeroEmberSpiritKey: String = "npc_dota_hero_ember_spirit"


    // MARK: Properties
	public var npcDotaHeroBristleback: Int?
	public var npcDotaHeroAbaddon: Int?
	public var npcDotaNeutralDarkTroll: Int?
	public var npcDotaHeroCrystalMaiden: Int?
	public var npcDotaNeutralGiantWolf: Int?
	public var npcDotaHeroNevermore: Int?
	public var npcDotaNeutralMudGolemSplit: Int?
	public var npcDotaNeutralKoboldTunneler: Int?
	public var npcDotaBadguysTower1Mid: Int?
	public var npcDotaNeutralKoboldTaskmaster: Int?
	public var npcDotaNeutralGhost: Int?
	public var npcDotaHeroKunkka: Int?
	public var npcDotaNeutralPolarFurbolgUrsaWarrior: Int?
	public var npcDotaNeutralKobold: Int?
	public var npcDotaNeutralRockGolem: Int?
	public var npcDotaBadguysTower1Bot: Int?
	public var npcDotaNeutralSatyrTrickster: Int?
	public var npcDotaGoodguysTower2Bot: Int?
	public var npcDotaNeutralEnragedWildkin: Int?
	public var npcDotaNeutralBlackDrake: Int?
	public var npcDotaHeroVengefulspirit: Int?
	public var npcDotaBadguysTower3Mid: Int?
	public var npcDotaNeutralHarpyStorm: Int?
	public var npcDotaNeutralBlackDragon: Int?
	public var npcDotaNeutralOgreMauler: Int?
	public var npcDotaGoodguysTower1Bot: Int?
	public var npcDotaGoodguysTower1Top: Int?
	public var npcDotaNeutralGraniteGolem: Int?
	public var npcDotaNeutralFelBeast: Int?
	public var npcDotaNeutralGnollAssassin: Int?
	public var npcDotaCreepBadguysMelee: Int?
	public var npcDotaNeutralMudGolem: Int?
	public var npcDotaNeutralCentaurKhan: Int?
	public var npcDotaHeroViper: Int?
	public var npcDotaNeutralPolarFurbolgChampion: Int?
	public var npcDotaNeutralBigThunderLizard: Int?
	public var npcDotaNeutralAlphaWolf: Int?
	public var npcDotaNeutralForestTrollHighPriest: Int?
	public var npcDotaGoodguysTower3Mid: Int?
	public var npcDotaCreepBadguysRangedUpgraded: Int?
	public var npcDotaNeutralCentaurOutrunner: Int?
	public var npcDotaGoodguysTower2Top: Int?
	public var npcDotaDarkTrollWarlordSkeletonWarrior: Int?
	public var npcDotaNeutralWildkin: Int?
	public var npcDotaBadguysTower1Top: Int?
	public var npcDotaNeutralHarpyScout: Int?
	public var npcDotaGoodguysTower2Mid: Int?
	public var npcDotaNeutralSatyrSoulstealer: Int?
	public var npcDotaGoodguysTower1Mid: Int?
	public var npcDotaNeutralSatyrHellcaller: Int?
	public var npcDotaCreepGoodguysMelee: Int?
	public var npcDotaCreepBadguysRanged: Int?
	public var npcDotaNeutralSmallThunderLizard: Int?
	public var npcDotaNeutralDarkTrollWarlord: Int?
	public var npcDotaBadguysTower2Top: Int?
	public var npcDotaBadguysSiegeUpgraded: Int?
	public var npcDotaGoodguysSiege: Int?
	public var npcDotaGoodguysTower4: Int?
	public var npcDotaRoshan: Int?
	public var npcDotaHeroJuggernaut: Int?
	public var npcDotaBadguysTower4: Int?
	public var npcDotaBadguysSiege: Int?
	public var dotaUnknown: Int?
	public var npcDotaNeutralOgreMagi: Int?
	public var npcDotaNeutralForestTrollBerserker: Int?
	public var npcDotaHeroArcWarden: Int?
	public var npcDotaCreepGoodguysRanged: Int?
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
		npcDotaHeroBristleback = json[kDMDamageTakenNpcDotaHeroBristlebackKey].int
		npcDotaHeroAbaddon = json[kDMDamageTakenNpcDotaHeroAbaddonKey].int
		npcDotaNeutralDarkTroll = json[kDMDamageTakenNpcDotaNeutralDarkTrollKey].int
		npcDotaHeroCrystalMaiden = json[kDMDamageTakenNpcDotaHeroCrystalMaidenKey].int
		npcDotaNeutralGiantWolf = json[kDMDamageTakenNpcDotaNeutralGiantWolfKey].int
		npcDotaHeroNevermore = json[kDMDamageTakenNpcDotaHeroNevermoreKey].int
		npcDotaNeutralMudGolemSplit = json[kDMDamageTakenNpcDotaNeutralMudGolemSplitKey].int
		npcDotaNeutralKoboldTunneler = json[kDMDamageTakenNpcDotaNeutralKoboldTunnelerKey].int
		npcDotaBadguysTower1Mid = json[kDMDamageTakenNpcDotaBadguysTower1MidKey].int
		npcDotaNeutralKoboldTaskmaster = json[kDMDamageTakenNpcDotaNeutralKoboldTaskmasterKey].int
		npcDotaNeutralGhost = json[kDMDamageTakenNpcDotaNeutralGhostKey].int
		npcDotaHeroKunkka = json[kDMDamageTakenNpcDotaHeroKunkkaKey].int
		npcDotaNeutralPolarFurbolgUrsaWarrior = json[kDMDamageTakenNpcDotaNeutralPolarFurbolgUrsaWarriorKey].int
		npcDotaNeutralKobold = json[kDMDamageTakenNpcDotaNeutralKoboldKey].int
		npcDotaNeutralRockGolem = json[kDMDamageTakenNpcDotaNeutralRockGolemKey].int
		npcDotaBadguysTower1Bot = json[kDMDamageTakenNpcDotaBadguysTower1BotKey].int
		npcDotaNeutralSatyrTrickster = json[kDMDamageTakenNpcDotaNeutralSatyrTricksterKey].int
		npcDotaGoodguysTower2Bot = json[kDMDamageTakenNpcDotaGoodguysTower2BotKey].int
		npcDotaNeutralEnragedWildkin = json[kDMDamageTakenNpcDotaNeutralEnragedWildkinKey].int
		npcDotaNeutralBlackDrake = json[kDMDamageTakenNpcDotaNeutralBlackDrakeKey].int
		npcDotaHeroVengefulspirit = json[kDMDamageTakenNpcDotaHeroVengefulspiritKey].int
		npcDotaBadguysTower3Mid = json[kDMDamageTakenNpcDotaBadguysTower3MidKey].int
		npcDotaNeutralHarpyStorm = json[kDMDamageTakenNpcDotaNeutralHarpyStormKey].int
		npcDotaNeutralBlackDragon = json[kDMDamageTakenNpcDotaNeutralBlackDragonKey].int
		npcDotaNeutralOgreMauler = json[kDMDamageTakenNpcDotaNeutralOgreMaulerKey].int
		npcDotaGoodguysTower1Bot = json[kDMDamageTakenNpcDotaGoodguysTower1BotKey].int
		npcDotaGoodguysTower1Top = json[kDMDamageTakenNpcDotaGoodguysTower1TopKey].int
		npcDotaNeutralGraniteGolem = json[kDMDamageTakenNpcDotaNeutralGraniteGolemKey].int
		npcDotaNeutralFelBeast = json[kDMDamageTakenNpcDotaNeutralFelBeastKey].int
		npcDotaNeutralGnollAssassin = json[kDMDamageTakenNpcDotaNeutralGnollAssassinKey].int
		npcDotaCreepBadguysMelee = json[kDMDamageTakenNpcDotaCreepBadguysMeleeKey].int
		npcDotaNeutralMudGolem = json[kDMDamageTakenNpcDotaNeutralMudGolemKey].int
		npcDotaNeutralCentaurKhan = json[kDMDamageTakenNpcDotaNeutralCentaurKhanKey].int
		npcDotaHeroViper = json[kDMDamageTakenNpcDotaHeroViperKey].int
		npcDotaNeutralPolarFurbolgChampion = json[kDMDamageTakenNpcDotaNeutralPolarFurbolgChampionKey].int
		npcDotaNeutralBigThunderLizard = json[kDMDamageTakenNpcDotaNeutralBigThunderLizardKey].int
		npcDotaNeutralAlphaWolf = json[kDMDamageTakenNpcDotaNeutralAlphaWolfKey].int
		npcDotaNeutralForestTrollHighPriest = json[kDMDamageTakenNpcDotaNeutralForestTrollHighPriestKey].int
		npcDotaGoodguysTower3Mid = json[kDMDamageTakenNpcDotaGoodguysTower3MidKey].int
		npcDotaCreepBadguysRangedUpgraded = json[kDMDamageTakenNpcDotaCreepBadguysRangedUpgradedKey].int
		npcDotaNeutralCentaurOutrunner = json[kDMDamageTakenNpcDotaNeutralCentaurOutrunnerKey].int
		npcDotaGoodguysTower2Top = json[kDMDamageTakenNpcDotaGoodguysTower2TopKey].int
		npcDotaDarkTrollWarlordSkeletonWarrior = json[kDMDamageTakenNpcDotaDarkTrollWarlordSkeletonWarriorKey].int
		npcDotaNeutralWildkin = json[kDMDamageTakenNpcDotaNeutralWildkinKey].int
		npcDotaBadguysTower1Top = json[kDMDamageTakenNpcDotaBadguysTower1TopKey].int
		npcDotaNeutralHarpyScout = json[kDMDamageTakenNpcDotaNeutralHarpyScoutKey].int
		npcDotaGoodguysTower2Mid = json[kDMDamageTakenNpcDotaGoodguysTower2MidKey].int
		npcDotaNeutralSatyrSoulstealer = json[kDMDamageTakenNpcDotaNeutralSatyrSoulstealerKey].int
		npcDotaGoodguysTower1Mid = json[kDMDamageTakenNpcDotaGoodguysTower1MidKey].int
		npcDotaNeutralSatyrHellcaller = json[kDMDamageTakenNpcDotaNeutralSatyrHellcallerKey].int
		npcDotaCreepGoodguysMelee = json[kDMDamageTakenNpcDotaCreepGoodguysMeleeKey].int
		npcDotaCreepBadguysRanged = json[kDMDamageTakenNpcDotaCreepBadguysRangedKey].int
		npcDotaNeutralSmallThunderLizard = json[kDMDamageTakenNpcDotaNeutralSmallThunderLizardKey].int
		npcDotaNeutralDarkTrollWarlord = json[kDMDamageTakenNpcDotaNeutralDarkTrollWarlordKey].int
		npcDotaBadguysTower2Top = json[kDMDamageTakenNpcDotaBadguysTower2TopKey].int
		npcDotaBadguysSiegeUpgraded = json[kDMDamageTakenNpcDotaBadguysSiegeUpgradedKey].int
		npcDotaGoodguysSiege = json[kDMDamageTakenNpcDotaGoodguysSiegeKey].int
		npcDotaGoodguysTower4 = json[kDMDamageTakenNpcDotaGoodguysTower4Key].int
		npcDotaRoshan = json[kDMDamageTakenNpcDotaRoshanKey].int
		npcDotaHeroJuggernaut = json[kDMDamageTakenNpcDotaHeroJuggernautKey].int
		npcDotaBadguysTower4 = json[kDMDamageTakenNpcDotaBadguysTower4Key].int
		npcDotaBadguysSiege = json[kDMDamageTakenNpcDotaBadguysSiegeKey].int
		dotaUnknown = json[kDMDamageTakenDotaUnknownKey].int
		npcDotaNeutralOgreMagi = json[kDMDamageTakenNpcDotaNeutralOgreMagiKey].int
		npcDotaNeutralForestTrollBerserker = json[kDMDamageTakenNpcDotaNeutralForestTrollBerserkerKey].int
		npcDotaHeroArcWarden = json[kDMDamageTakenNpcDotaHeroArcWardenKey].int
		npcDotaCreepGoodguysRanged = json[kDMDamageTakenNpcDotaCreepGoodguysRangedKey].int
		npcDotaHeroEmberSpirit = json[kDMDamageTakenNpcDotaHeroEmberSpiritKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if npcDotaHeroBristleback != nil {
			dictionary.updateValue(npcDotaHeroBristleback!, forKey: kDMDamageTakenNpcDotaHeroBristlebackKey)
		}
		if npcDotaHeroAbaddon != nil {
			dictionary.updateValue(npcDotaHeroAbaddon!, forKey: kDMDamageTakenNpcDotaHeroAbaddonKey)
		}
		if npcDotaNeutralDarkTroll != nil {
			dictionary.updateValue(npcDotaNeutralDarkTroll!, forKey: kDMDamageTakenNpcDotaNeutralDarkTrollKey)
		}
		if npcDotaHeroCrystalMaiden != nil {
			dictionary.updateValue(npcDotaHeroCrystalMaiden!, forKey: kDMDamageTakenNpcDotaHeroCrystalMaidenKey)
		}
		if npcDotaNeutralGiantWolf != nil {
			dictionary.updateValue(npcDotaNeutralGiantWolf!, forKey: kDMDamageTakenNpcDotaNeutralGiantWolfKey)
		}
		if npcDotaHeroNevermore != nil {
			dictionary.updateValue(npcDotaHeroNevermore!, forKey: kDMDamageTakenNpcDotaHeroNevermoreKey)
		}
		if npcDotaNeutralMudGolemSplit != nil {
			dictionary.updateValue(npcDotaNeutralMudGolemSplit!, forKey: kDMDamageTakenNpcDotaNeutralMudGolemSplitKey)
		}
		if npcDotaNeutralKoboldTunneler != nil {
			dictionary.updateValue(npcDotaNeutralKoboldTunneler!, forKey: kDMDamageTakenNpcDotaNeutralKoboldTunnelerKey)
		}
		if npcDotaBadguysTower1Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower1Mid!, forKey: kDMDamageTakenNpcDotaBadguysTower1MidKey)
		}
		if npcDotaNeutralKoboldTaskmaster != nil {
			dictionary.updateValue(npcDotaNeutralKoboldTaskmaster!, forKey: kDMDamageTakenNpcDotaNeutralKoboldTaskmasterKey)
		}
		if npcDotaNeutralGhost != nil {
			dictionary.updateValue(npcDotaNeutralGhost!, forKey: kDMDamageTakenNpcDotaNeutralGhostKey)
		}
		if npcDotaHeroKunkka != nil {
			dictionary.updateValue(npcDotaHeroKunkka!, forKey: kDMDamageTakenNpcDotaHeroKunkkaKey)
		}
		if npcDotaNeutralPolarFurbolgUrsaWarrior != nil {
			dictionary.updateValue(npcDotaNeutralPolarFurbolgUrsaWarrior!, forKey: kDMDamageTakenNpcDotaNeutralPolarFurbolgUrsaWarriorKey)
		}
		if npcDotaNeutralKobold != nil {
			dictionary.updateValue(npcDotaNeutralKobold!, forKey: kDMDamageTakenNpcDotaNeutralKoboldKey)
		}
		if npcDotaNeutralRockGolem != nil {
			dictionary.updateValue(npcDotaNeutralRockGolem!, forKey: kDMDamageTakenNpcDotaNeutralRockGolemKey)
		}
		if npcDotaBadguysTower1Bot != nil {
			dictionary.updateValue(npcDotaBadguysTower1Bot!, forKey: kDMDamageTakenNpcDotaBadguysTower1BotKey)
		}
		if npcDotaNeutralSatyrTrickster != nil {
			dictionary.updateValue(npcDotaNeutralSatyrTrickster!, forKey: kDMDamageTakenNpcDotaNeutralSatyrTricksterKey)
		}
		if npcDotaGoodguysTower2Bot != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Bot!, forKey: kDMDamageTakenNpcDotaGoodguysTower2BotKey)
		}
		if npcDotaNeutralEnragedWildkin != nil {
			dictionary.updateValue(npcDotaNeutralEnragedWildkin!, forKey: kDMDamageTakenNpcDotaNeutralEnragedWildkinKey)
		}
		if npcDotaNeutralBlackDrake != nil {
			dictionary.updateValue(npcDotaNeutralBlackDrake!, forKey: kDMDamageTakenNpcDotaNeutralBlackDrakeKey)
		}
		if npcDotaHeroVengefulspirit != nil {
			dictionary.updateValue(npcDotaHeroVengefulspirit!, forKey: kDMDamageTakenNpcDotaHeroVengefulspiritKey)
		}
		if npcDotaBadguysTower3Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower3Mid!, forKey: kDMDamageTakenNpcDotaBadguysTower3MidKey)
		}
		if npcDotaNeutralHarpyStorm != nil {
			dictionary.updateValue(npcDotaNeutralHarpyStorm!, forKey: kDMDamageTakenNpcDotaNeutralHarpyStormKey)
		}
		if npcDotaNeutralBlackDragon != nil {
			dictionary.updateValue(npcDotaNeutralBlackDragon!, forKey: kDMDamageTakenNpcDotaNeutralBlackDragonKey)
		}
		if npcDotaNeutralOgreMauler != nil {
			dictionary.updateValue(npcDotaNeutralOgreMauler!, forKey: kDMDamageTakenNpcDotaNeutralOgreMaulerKey)
		}
		if npcDotaGoodguysTower1Bot != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Bot!, forKey: kDMDamageTakenNpcDotaGoodguysTower1BotKey)
		}
		if npcDotaGoodguysTower1Top != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Top!, forKey: kDMDamageTakenNpcDotaGoodguysTower1TopKey)
		}
		if npcDotaNeutralGraniteGolem != nil {
			dictionary.updateValue(npcDotaNeutralGraniteGolem!, forKey: kDMDamageTakenNpcDotaNeutralGraniteGolemKey)
		}
		if npcDotaNeutralFelBeast != nil {
			dictionary.updateValue(npcDotaNeutralFelBeast!, forKey: kDMDamageTakenNpcDotaNeutralFelBeastKey)
		}
		if npcDotaNeutralGnollAssassin != nil {
			dictionary.updateValue(npcDotaNeutralGnollAssassin!, forKey: kDMDamageTakenNpcDotaNeutralGnollAssassinKey)
		}
		if npcDotaCreepBadguysMelee != nil {
			dictionary.updateValue(npcDotaCreepBadguysMelee!, forKey: kDMDamageTakenNpcDotaCreepBadguysMeleeKey)
		}
		if npcDotaNeutralMudGolem != nil {
			dictionary.updateValue(npcDotaNeutralMudGolem!, forKey: kDMDamageTakenNpcDotaNeutralMudGolemKey)
		}
		if npcDotaNeutralCentaurKhan != nil {
			dictionary.updateValue(npcDotaNeutralCentaurKhan!, forKey: kDMDamageTakenNpcDotaNeutralCentaurKhanKey)
		}
		if npcDotaHeroViper != nil {
			dictionary.updateValue(npcDotaHeroViper!, forKey: kDMDamageTakenNpcDotaHeroViperKey)
		}
		if npcDotaNeutralPolarFurbolgChampion != nil {
			dictionary.updateValue(npcDotaNeutralPolarFurbolgChampion!, forKey: kDMDamageTakenNpcDotaNeutralPolarFurbolgChampionKey)
		}
		if npcDotaNeutralBigThunderLizard != nil {
			dictionary.updateValue(npcDotaNeutralBigThunderLizard!, forKey: kDMDamageTakenNpcDotaNeutralBigThunderLizardKey)
		}
		if npcDotaNeutralAlphaWolf != nil {
			dictionary.updateValue(npcDotaNeutralAlphaWolf!, forKey: kDMDamageTakenNpcDotaNeutralAlphaWolfKey)
		}
		if npcDotaNeutralForestTrollHighPriest != nil {
			dictionary.updateValue(npcDotaNeutralForestTrollHighPriest!, forKey: kDMDamageTakenNpcDotaNeutralForestTrollHighPriestKey)
		}
		if npcDotaGoodguysTower3Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower3Mid!, forKey: kDMDamageTakenNpcDotaGoodguysTower3MidKey)
		}
		if npcDotaCreepBadguysRangedUpgraded != nil {
			dictionary.updateValue(npcDotaCreepBadguysRangedUpgraded!, forKey: kDMDamageTakenNpcDotaCreepBadguysRangedUpgradedKey)
		}
		if npcDotaNeutralCentaurOutrunner != nil {
			dictionary.updateValue(npcDotaNeutralCentaurOutrunner!, forKey: kDMDamageTakenNpcDotaNeutralCentaurOutrunnerKey)
		}
		if npcDotaGoodguysTower2Top != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Top!, forKey: kDMDamageTakenNpcDotaGoodguysTower2TopKey)
		}
		if npcDotaDarkTrollWarlordSkeletonWarrior != nil {
			dictionary.updateValue(npcDotaDarkTrollWarlordSkeletonWarrior!, forKey: kDMDamageTakenNpcDotaDarkTrollWarlordSkeletonWarriorKey)
		}
		if npcDotaNeutralWildkin != nil {
			dictionary.updateValue(npcDotaNeutralWildkin!, forKey: kDMDamageTakenNpcDotaNeutralWildkinKey)
		}
		if npcDotaBadguysTower1Top != nil {
			dictionary.updateValue(npcDotaBadguysTower1Top!, forKey: kDMDamageTakenNpcDotaBadguysTower1TopKey)
		}
		if npcDotaNeutralHarpyScout != nil {
			dictionary.updateValue(npcDotaNeutralHarpyScout!, forKey: kDMDamageTakenNpcDotaNeutralHarpyScoutKey)
		}
		if npcDotaGoodguysTower2Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Mid!, forKey: kDMDamageTakenNpcDotaGoodguysTower2MidKey)
		}
		if npcDotaNeutralSatyrSoulstealer != nil {
			dictionary.updateValue(npcDotaNeutralSatyrSoulstealer!, forKey: kDMDamageTakenNpcDotaNeutralSatyrSoulstealerKey)
		}
		if npcDotaGoodguysTower1Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Mid!, forKey: kDMDamageTakenNpcDotaGoodguysTower1MidKey)
		}
		if npcDotaNeutralSatyrHellcaller != nil {
			dictionary.updateValue(npcDotaNeutralSatyrHellcaller!, forKey: kDMDamageTakenNpcDotaNeutralSatyrHellcallerKey)
		}
		if npcDotaCreepGoodguysMelee != nil {
			dictionary.updateValue(npcDotaCreepGoodguysMelee!, forKey: kDMDamageTakenNpcDotaCreepGoodguysMeleeKey)
		}
		if npcDotaCreepBadguysRanged != nil {
			dictionary.updateValue(npcDotaCreepBadguysRanged!, forKey: kDMDamageTakenNpcDotaCreepBadguysRangedKey)
		}
		if npcDotaNeutralSmallThunderLizard != nil {
			dictionary.updateValue(npcDotaNeutralSmallThunderLizard!, forKey: kDMDamageTakenNpcDotaNeutralSmallThunderLizardKey)
		}
		if npcDotaNeutralDarkTrollWarlord != nil {
			dictionary.updateValue(npcDotaNeutralDarkTrollWarlord!, forKey: kDMDamageTakenNpcDotaNeutralDarkTrollWarlordKey)
		}
		if npcDotaBadguysTower2Top != nil {
			dictionary.updateValue(npcDotaBadguysTower2Top!, forKey: kDMDamageTakenNpcDotaBadguysTower2TopKey)
		}
		if npcDotaBadguysSiegeUpgraded != nil {
			dictionary.updateValue(npcDotaBadguysSiegeUpgraded!, forKey: kDMDamageTakenNpcDotaBadguysSiegeUpgradedKey)
		}
		if npcDotaGoodguysSiege != nil {
			dictionary.updateValue(npcDotaGoodguysSiege!, forKey: kDMDamageTakenNpcDotaGoodguysSiegeKey)
		}
		if npcDotaGoodguysTower4 != nil {
			dictionary.updateValue(npcDotaGoodguysTower4!, forKey: kDMDamageTakenNpcDotaGoodguysTower4Key)
		}
		if npcDotaRoshan != nil {
			dictionary.updateValue(npcDotaRoshan!, forKey: kDMDamageTakenNpcDotaRoshanKey)
		}
		if npcDotaHeroJuggernaut != nil {
			dictionary.updateValue(npcDotaHeroJuggernaut!, forKey: kDMDamageTakenNpcDotaHeroJuggernautKey)
		}
		if npcDotaBadguysTower4 != nil {
			dictionary.updateValue(npcDotaBadguysTower4!, forKey: kDMDamageTakenNpcDotaBadguysTower4Key)
		}
		if npcDotaBadguysSiege != nil {
			dictionary.updateValue(npcDotaBadguysSiege!, forKey: kDMDamageTakenNpcDotaBadguysSiegeKey)
		}
		if dotaUnknown != nil {
			dictionary.updateValue(dotaUnknown!, forKey: kDMDamageTakenDotaUnknownKey)
		}
		if npcDotaNeutralOgreMagi != nil {
			dictionary.updateValue(npcDotaNeutralOgreMagi!, forKey: kDMDamageTakenNpcDotaNeutralOgreMagiKey)
		}
		if npcDotaNeutralForestTrollBerserker != nil {
			dictionary.updateValue(npcDotaNeutralForestTrollBerserker!, forKey: kDMDamageTakenNpcDotaNeutralForestTrollBerserkerKey)
		}
		if npcDotaHeroArcWarden != nil {
			dictionary.updateValue(npcDotaHeroArcWarden!, forKey: kDMDamageTakenNpcDotaHeroArcWardenKey)
		}
		if npcDotaCreepGoodguysRanged != nil {
			dictionary.updateValue(npcDotaCreepGoodguysRanged!, forKey: kDMDamageTakenNpcDotaCreepGoodguysRangedKey)
		}
		if npcDotaHeroEmberSpirit != nil {
			dictionary.updateValue(npcDotaHeroEmberSpirit!, forKey: kDMDamageTakenNpcDotaHeroEmberSpiritKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.npcDotaHeroBristleback = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaHeroBristlebackKey) as? Int
		self.npcDotaHeroAbaddon = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaHeroAbaddonKey) as? Int
		self.npcDotaNeutralDarkTroll = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralDarkTrollKey) as? Int
		self.npcDotaHeroCrystalMaiden = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaHeroCrystalMaidenKey) as? Int
		self.npcDotaNeutralGiantWolf = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralGiantWolfKey) as? Int
		self.npcDotaHeroNevermore = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaHeroNevermoreKey) as? Int
		self.npcDotaNeutralMudGolemSplit = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralMudGolemSplitKey) as? Int
		self.npcDotaNeutralKoboldTunneler = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralKoboldTunnelerKey) as? Int
		self.npcDotaBadguysTower1Mid = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaBadguysTower1MidKey) as? Int
		self.npcDotaNeutralKoboldTaskmaster = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralKoboldTaskmasterKey) as? Int
		self.npcDotaNeutralGhost = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralGhostKey) as? Int
		self.npcDotaHeroKunkka = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaHeroKunkkaKey) as? Int
		self.npcDotaNeutralPolarFurbolgUrsaWarrior = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralPolarFurbolgUrsaWarriorKey) as? Int
		self.npcDotaNeutralKobold = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralKoboldKey) as? Int
		self.npcDotaNeutralRockGolem = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralRockGolemKey) as? Int
		self.npcDotaBadguysTower1Bot = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaBadguysTower1BotKey) as? Int
		self.npcDotaNeutralSatyrTrickster = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralSatyrTricksterKey) as? Int
		self.npcDotaGoodguysTower2Bot = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaGoodguysTower2BotKey) as? Int
		self.npcDotaNeutralEnragedWildkin = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralEnragedWildkinKey) as? Int
		self.npcDotaNeutralBlackDrake = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralBlackDrakeKey) as? Int
		self.npcDotaHeroVengefulspirit = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaHeroVengefulspiritKey) as? Int
		self.npcDotaBadguysTower3Mid = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaBadguysTower3MidKey) as? Int
		self.npcDotaNeutralHarpyStorm = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralHarpyStormKey) as? Int
		self.npcDotaNeutralBlackDragon = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralBlackDragonKey) as? Int
		self.npcDotaNeutralOgreMauler = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralOgreMaulerKey) as? Int
		self.npcDotaGoodguysTower1Bot = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaGoodguysTower1BotKey) as? Int
		self.npcDotaGoodguysTower1Top = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaGoodguysTower1TopKey) as? Int
		self.npcDotaNeutralGraniteGolem = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralGraniteGolemKey) as? Int
		self.npcDotaNeutralFelBeast = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralFelBeastKey) as? Int
		self.npcDotaNeutralGnollAssassin = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralGnollAssassinKey) as? Int
		self.npcDotaCreepBadguysMelee = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaCreepBadguysMeleeKey) as? Int
		self.npcDotaNeutralMudGolem = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralMudGolemKey) as? Int
		self.npcDotaNeutralCentaurKhan = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralCentaurKhanKey) as? Int
		self.npcDotaHeroViper = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaHeroViperKey) as? Int
		self.npcDotaNeutralPolarFurbolgChampion = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralPolarFurbolgChampionKey) as? Int
		self.npcDotaNeutralBigThunderLizard = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralBigThunderLizardKey) as? Int
		self.npcDotaNeutralAlphaWolf = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralAlphaWolfKey) as? Int
		self.npcDotaNeutralForestTrollHighPriest = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralForestTrollHighPriestKey) as? Int
		self.npcDotaGoodguysTower3Mid = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaGoodguysTower3MidKey) as? Int
		self.npcDotaCreepBadguysRangedUpgraded = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaCreepBadguysRangedUpgradedKey) as? Int
		self.npcDotaNeutralCentaurOutrunner = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralCentaurOutrunnerKey) as? Int
		self.npcDotaGoodguysTower2Top = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaGoodguysTower2TopKey) as? Int
		self.npcDotaDarkTrollWarlordSkeletonWarrior = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaDarkTrollWarlordSkeletonWarriorKey) as? Int
		self.npcDotaNeutralWildkin = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralWildkinKey) as? Int
		self.npcDotaBadguysTower1Top = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaBadguysTower1TopKey) as? Int
		self.npcDotaNeutralHarpyScout = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralHarpyScoutKey) as? Int
		self.npcDotaGoodguysTower2Mid = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaGoodguysTower2MidKey) as? Int
		self.npcDotaNeutralSatyrSoulstealer = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralSatyrSoulstealerKey) as? Int
		self.npcDotaGoodguysTower1Mid = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaGoodguysTower1MidKey) as? Int
		self.npcDotaNeutralSatyrHellcaller = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralSatyrHellcallerKey) as? Int
		self.npcDotaCreepGoodguysMelee = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaCreepGoodguysMeleeKey) as? Int
		self.npcDotaCreepBadguysRanged = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaCreepBadguysRangedKey) as? Int
		self.npcDotaNeutralSmallThunderLizard = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralSmallThunderLizardKey) as? Int
		self.npcDotaNeutralDarkTrollWarlord = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralDarkTrollWarlordKey) as? Int
		self.npcDotaBadguysTower2Top = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaBadguysTower2TopKey) as? Int
		self.npcDotaBadguysSiegeUpgraded = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaBadguysSiegeUpgradedKey) as? Int
		self.npcDotaGoodguysSiege = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaGoodguysSiegeKey) as? Int
		self.npcDotaGoodguysTower4 = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaGoodguysTower4Key) as? Int
		self.npcDotaRoshan = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaRoshanKey) as? Int
		self.npcDotaHeroJuggernaut = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaHeroJuggernautKey) as? Int
		self.npcDotaBadguysTower4 = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaBadguysTower4Key) as? Int
		self.npcDotaBadguysSiege = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaBadguysSiegeKey) as? Int
		self.dotaUnknown = aDecoder.decodeObjectForKey(kDMDamageTakenDotaUnknownKey) as? Int
		self.npcDotaNeutralOgreMagi = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralOgreMagiKey) as? Int
		self.npcDotaNeutralForestTrollBerserker = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaNeutralForestTrollBerserkerKey) as? Int
		self.npcDotaHeroArcWarden = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaHeroArcWardenKey) as? Int
		self.npcDotaCreepGoodguysRanged = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaCreepGoodguysRangedKey) as? Int
		self.npcDotaHeroEmberSpirit = aDecoder.decodeObjectForKey(kDMDamageTakenNpcDotaHeroEmberSpiritKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(npcDotaHeroBristleback, forKey: kDMDamageTakenNpcDotaHeroBristlebackKey)
		aCoder.encodeObject(npcDotaHeroAbaddon, forKey: kDMDamageTakenNpcDotaHeroAbaddonKey)
		aCoder.encodeObject(npcDotaNeutralDarkTroll, forKey: kDMDamageTakenNpcDotaNeutralDarkTrollKey)
		aCoder.encodeObject(npcDotaHeroCrystalMaiden, forKey: kDMDamageTakenNpcDotaHeroCrystalMaidenKey)
		aCoder.encodeObject(npcDotaNeutralGiantWolf, forKey: kDMDamageTakenNpcDotaNeutralGiantWolfKey)
		aCoder.encodeObject(npcDotaHeroNevermore, forKey: kDMDamageTakenNpcDotaHeroNevermoreKey)
		aCoder.encodeObject(npcDotaNeutralMudGolemSplit, forKey: kDMDamageTakenNpcDotaNeutralMudGolemSplitKey)
		aCoder.encodeObject(npcDotaNeutralKoboldTunneler, forKey: kDMDamageTakenNpcDotaNeutralKoboldTunnelerKey)
		aCoder.encodeObject(npcDotaBadguysTower1Mid, forKey: kDMDamageTakenNpcDotaBadguysTower1MidKey)
		aCoder.encodeObject(npcDotaNeutralKoboldTaskmaster, forKey: kDMDamageTakenNpcDotaNeutralKoboldTaskmasterKey)
		aCoder.encodeObject(npcDotaNeutralGhost, forKey: kDMDamageTakenNpcDotaNeutralGhostKey)
		aCoder.encodeObject(npcDotaHeroKunkka, forKey: kDMDamageTakenNpcDotaHeroKunkkaKey)
		aCoder.encodeObject(npcDotaNeutralPolarFurbolgUrsaWarrior, forKey: kDMDamageTakenNpcDotaNeutralPolarFurbolgUrsaWarriorKey)
		aCoder.encodeObject(npcDotaNeutralKobold, forKey: kDMDamageTakenNpcDotaNeutralKoboldKey)
		aCoder.encodeObject(npcDotaNeutralRockGolem, forKey: kDMDamageTakenNpcDotaNeutralRockGolemKey)
		aCoder.encodeObject(npcDotaBadguysTower1Bot, forKey: kDMDamageTakenNpcDotaBadguysTower1BotKey)
		aCoder.encodeObject(npcDotaNeutralSatyrTrickster, forKey: kDMDamageTakenNpcDotaNeutralSatyrTricksterKey)
		aCoder.encodeObject(npcDotaGoodguysTower2Bot, forKey: kDMDamageTakenNpcDotaGoodguysTower2BotKey)
		aCoder.encodeObject(npcDotaNeutralEnragedWildkin, forKey: kDMDamageTakenNpcDotaNeutralEnragedWildkinKey)
		aCoder.encodeObject(npcDotaNeutralBlackDrake, forKey: kDMDamageTakenNpcDotaNeutralBlackDrakeKey)
		aCoder.encodeObject(npcDotaHeroVengefulspirit, forKey: kDMDamageTakenNpcDotaHeroVengefulspiritKey)
		aCoder.encodeObject(npcDotaBadguysTower3Mid, forKey: kDMDamageTakenNpcDotaBadguysTower3MidKey)
		aCoder.encodeObject(npcDotaNeutralHarpyStorm, forKey: kDMDamageTakenNpcDotaNeutralHarpyStormKey)
		aCoder.encodeObject(npcDotaNeutralBlackDragon, forKey: kDMDamageTakenNpcDotaNeutralBlackDragonKey)
		aCoder.encodeObject(npcDotaNeutralOgreMauler, forKey: kDMDamageTakenNpcDotaNeutralOgreMaulerKey)
		aCoder.encodeObject(npcDotaGoodguysTower1Bot, forKey: kDMDamageTakenNpcDotaGoodguysTower1BotKey)
		aCoder.encodeObject(npcDotaGoodguysTower1Top, forKey: kDMDamageTakenNpcDotaGoodguysTower1TopKey)
		aCoder.encodeObject(npcDotaNeutralGraniteGolem, forKey: kDMDamageTakenNpcDotaNeutralGraniteGolemKey)
		aCoder.encodeObject(npcDotaNeutralFelBeast, forKey: kDMDamageTakenNpcDotaNeutralFelBeastKey)
		aCoder.encodeObject(npcDotaNeutralGnollAssassin, forKey: kDMDamageTakenNpcDotaNeutralGnollAssassinKey)
		aCoder.encodeObject(npcDotaCreepBadguysMelee, forKey: kDMDamageTakenNpcDotaCreepBadguysMeleeKey)
		aCoder.encodeObject(npcDotaNeutralMudGolem, forKey: kDMDamageTakenNpcDotaNeutralMudGolemKey)
		aCoder.encodeObject(npcDotaNeutralCentaurKhan, forKey: kDMDamageTakenNpcDotaNeutralCentaurKhanKey)
		aCoder.encodeObject(npcDotaHeroViper, forKey: kDMDamageTakenNpcDotaHeroViperKey)
		aCoder.encodeObject(npcDotaNeutralPolarFurbolgChampion, forKey: kDMDamageTakenNpcDotaNeutralPolarFurbolgChampionKey)
		aCoder.encodeObject(npcDotaNeutralBigThunderLizard, forKey: kDMDamageTakenNpcDotaNeutralBigThunderLizardKey)
		aCoder.encodeObject(npcDotaNeutralAlphaWolf, forKey: kDMDamageTakenNpcDotaNeutralAlphaWolfKey)
		aCoder.encodeObject(npcDotaNeutralForestTrollHighPriest, forKey: kDMDamageTakenNpcDotaNeutralForestTrollHighPriestKey)
		aCoder.encodeObject(npcDotaGoodguysTower3Mid, forKey: kDMDamageTakenNpcDotaGoodguysTower3MidKey)
		aCoder.encodeObject(npcDotaCreepBadguysRangedUpgraded, forKey: kDMDamageTakenNpcDotaCreepBadguysRangedUpgradedKey)
		aCoder.encodeObject(npcDotaNeutralCentaurOutrunner, forKey: kDMDamageTakenNpcDotaNeutralCentaurOutrunnerKey)
		aCoder.encodeObject(npcDotaGoodguysTower2Top, forKey: kDMDamageTakenNpcDotaGoodguysTower2TopKey)
		aCoder.encodeObject(npcDotaDarkTrollWarlordSkeletonWarrior, forKey: kDMDamageTakenNpcDotaDarkTrollWarlordSkeletonWarriorKey)
		aCoder.encodeObject(npcDotaNeutralWildkin, forKey: kDMDamageTakenNpcDotaNeutralWildkinKey)
		aCoder.encodeObject(npcDotaBadguysTower1Top, forKey: kDMDamageTakenNpcDotaBadguysTower1TopKey)
		aCoder.encodeObject(npcDotaNeutralHarpyScout, forKey: kDMDamageTakenNpcDotaNeutralHarpyScoutKey)
		aCoder.encodeObject(npcDotaGoodguysTower2Mid, forKey: kDMDamageTakenNpcDotaGoodguysTower2MidKey)
		aCoder.encodeObject(npcDotaNeutralSatyrSoulstealer, forKey: kDMDamageTakenNpcDotaNeutralSatyrSoulstealerKey)
		aCoder.encodeObject(npcDotaGoodguysTower1Mid, forKey: kDMDamageTakenNpcDotaGoodguysTower1MidKey)
		aCoder.encodeObject(npcDotaNeutralSatyrHellcaller, forKey: kDMDamageTakenNpcDotaNeutralSatyrHellcallerKey)
		aCoder.encodeObject(npcDotaCreepGoodguysMelee, forKey: kDMDamageTakenNpcDotaCreepGoodguysMeleeKey)
		aCoder.encodeObject(npcDotaCreepBadguysRanged, forKey: kDMDamageTakenNpcDotaCreepBadguysRangedKey)
		aCoder.encodeObject(npcDotaNeutralSmallThunderLizard, forKey: kDMDamageTakenNpcDotaNeutralSmallThunderLizardKey)
		aCoder.encodeObject(npcDotaNeutralDarkTrollWarlord, forKey: kDMDamageTakenNpcDotaNeutralDarkTrollWarlordKey)
		aCoder.encodeObject(npcDotaBadguysTower2Top, forKey: kDMDamageTakenNpcDotaBadguysTower2TopKey)
		aCoder.encodeObject(npcDotaBadguysSiegeUpgraded, forKey: kDMDamageTakenNpcDotaBadguysSiegeUpgradedKey)
		aCoder.encodeObject(npcDotaGoodguysSiege, forKey: kDMDamageTakenNpcDotaGoodguysSiegeKey)
		aCoder.encodeObject(npcDotaGoodguysTower4, forKey: kDMDamageTakenNpcDotaGoodguysTower4Key)
		aCoder.encodeObject(npcDotaRoshan, forKey: kDMDamageTakenNpcDotaRoshanKey)
		aCoder.encodeObject(npcDotaHeroJuggernaut, forKey: kDMDamageTakenNpcDotaHeroJuggernautKey)
		aCoder.encodeObject(npcDotaBadguysTower4, forKey: kDMDamageTakenNpcDotaBadguysTower4Key)
		aCoder.encodeObject(npcDotaBadguysSiege, forKey: kDMDamageTakenNpcDotaBadguysSiegeKey)
		aCoder.encodeObject(dotaUnknown, forKey: kDMDamageTakenDotaUnknownKey)
		aCoder.encodeObject(npcDotaNeutralOgreMagi, forKey: kDMDamageTakenNpcDotaNeutralOgreMagiKey)
		aCoder.encodeObject(npcDotaNeutralForestTrollBerserker, forKey: kDMDamageTakenNpcDotaNeutralForestTrollBerserkerKey)
		aCoder.encodeObject(npcDotaHeroArcWarden, forKey: kDMDamageTakenNpcDotaHeroArcWardenKey)
		aCoder.encodeObject(npcDotaCreepGoodguysRanged, forKey: kDMDamageTakenNpcDotaCreepGoodguysRangedKey)
		aCoder.encodeObject(npcDotaHeroEmberSpirit, forKey: kDMDamageTakenNpcDotaHeroEmberSpiritKey)

    }

}
