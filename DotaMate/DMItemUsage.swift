//
//  DMItemUsage.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMItemUsage: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMItemUsageEnergyBoosterKey: String = "energy_booster"
	internal let kDMItemUsageTangoKey: String = "tango"
	internal let kDMItemUsageAetherLensKey: String = "aether_lens"
	internal let kDMItemUsageEnchantedMangoKey: String = "enchanted_mango"
	internal let kDMItemUsageRiverPainter5Key: String = "river_painter5"
	internal let kDMItemUsageSkadiKey: String = "skadi"
	internal let kDMItemUsageBfuryKey: String = "bfury"
	internal let kDMItemUsageTranquilBootsKey: String = "tranquil_boots"
	internal let kDMItemUsageMjollnirKey: String = "mjollnir"
	internal let kDMItemUsagePersKey: String = "pers"
	internal let kDMItemUsageClaymoreKey: String = "claymore"
	internal let kDMItemUsageLifestealKey: String = "lifesteal"
	internal let kDMItemUsageBlightStoneKey: String = "blight_stone"
	internal let kDMItemUsageMonkeyKingBarKey: String = "monkey_king_bar"
	internal let kDMItemUsageUltimateOrbKey: String = "ultimate_orb"
	internal let kDMItemUsageFlaskKey: String = "flask"
	internal let kDMItemUsageDesolatorKey: String = "desolator"
	internal let kDMItemUsageStoutShieldKey: String = "stout_shield"
	internal let kDMItemUsageOrchidKey: String = "orchid"
	internal let kDMItemUsageAncientJanggoKey: String = "ancient_janggo"
	internal let kDMItemUsageMagicStickKey: String = "magic_stick"
	internal let kDMItemUsagePoorMansShieldKey: String = "poor_mans_shield"
	internal let kDMItemUsageAssaultKey: String = "assault"
	internal let kDMItemUsageBranchesKey: String = "branches"
	internal let kDMItemUsageBladesOfAttackKey: String = "blades_of_attack"
	internal let kDMItemUsageRingOfBasiliusKey: String = "ring_of_basilius"
	internal let kDMItemUsageMaelstromKey: String = "maelstrom"
	internal let kDMItemUsageBeltOfStrengthKey: String = "belt_of_strength"
	internal let kDMItemUsageRingOfRegenKey: String = "ring_of_regen"
	internal let kDMItemUsageCrimsonGuardKey: String = "crimson_guard"
	internal let kDMItemUsageMedallionOfCourageKey: String = "medallion_of_courage"
	internal let kDMItemUsageDemonEdgeKey: String = "demon_edge"
	internal let kDMItemUsageUrnOfShadowsKey: String = "urn_of_shadows"
	internal let kDMItemUsageOgreAxeKey: String = "ogre_axe"
	internal let kDMItemUsageCircletKey: String = "circlet"
	internal let kDMItemUsageBucklerKey: String = "buckler"
	internal let kDMItemUsageTomeOfKnowledgeKey: String = "tome_of_knowledge"
	internal let kDMItemUsageDustKey: String = "dust"
	internal let kDMItemUsageUltimateScepterKey: String = "ultimate_scepter"
	internal let kDMItemUsageVitalityBoosterKey: String = "vitality_booster"
	internal let kDMItemUsageRingOfProtectionKey: String = "ring_of_protection"
	internal let kDMItemUsagePlatemailKey: String = "platemail"
	internal let kDMItemUsageSangeAndYashaKey: String = "sange_and_yasha"
	internal let kDMItemUsageHyperstoneKey: String = "hyperstone"
	internal let kDMItemUsageAbyssalBladeKey: String = "abyssal_blade"
	internal let kDMItemUsageBasherKey: String = "basher"
	internal let kDMItemUsageWardSentryKey: String = "ward_sentry"
	internal let kDMItemUsageHeaddressKey: String = "headdress"
	internal let kDMItemUsageBootsKey: String = "boots"
	internal let kDMItemUsageSangeKey: String = "sange"
	internal let kDMItemUsageTpscrollKey: String = "tpscroll"
	internal let kDMItemUsageBroadswordKey: String = "broadsword"
	internal let kDMItemUsageQuellingBladeKey: String = "quelling_blade"
	internal let kDMItemUsageOrbOfVenomKey: String = "orb_of_venom"
	internal let kDMItemUsageGlovesKey: String = "gloves"
	internal let kDMItemUsageHandOfMidasKey: String = "hand_of_midas"
	internal let kDMItemUsageArmletKey: String = "armlet"
	internal let kDMItemUsageMoonShardKey: String = "moon_shard"
	internal let kDMItemUsageCourierKey: String = "courier"
	internal let kDMItemUsageShadowAmuletKey: String = "shadow_amulet"
	internal let kDMItemUsagePowerTreadsKey: String = "power_treads"
	internal let kDMItemUsagePipeKey: String = "pipe"
	internal let kDMItemUsageBootsOfElvesKey: String = "boots_of_elves"
	internal let kDMItemUsageInvisSwordKey: String = "invis_sword"
	internal let kDMItemUsageGauntletsKey: String = "gauntlets"
	internal let kDMItemUsageTalismanOfEvasionKey: String = "talisman_of_evasion"
	internal let kDMItemUsageHelmOfIronWillKey: String = "helm_of_iron_will"
	internal let kDMItemUsageVoidStoneKey: String = "void_stone"
	internal let kDMItemUsageSilverEdgeKey: String = "silver_edge"
	internal let kDMItemUsageReaverKey: String = "reaver"
	internal let kDMItemUsageRingOfHealthKey: String = "ring_of_health"
	internal let kDMItemUsageHoodOfDefianceKey: String = "hood_of_defiance"
	internal let kDMItemUsageMantaKey: String = "manta"
	internal let kDMItemUsagePointBoosterKey: String = "point_booster"
	internal let kDMItemUsageVanguardKey: String = "vanguard"
	internal let kDMItemUsageBladeOfAlacrityKey: String = "blade_of_alacrity"
	internal let kDMItemUsageStaffOfWizardryKey: String = "staff_of_wizardry"
	internal let kDMItemUsageInfusedRaindropKey: String = "infused_raindrop"
	internal let kDMItemUsageWardObserverKey: String = "ward_observer"
	internal let kDMItemUsageTravelBootsKey: String = "travel_boots"
	internal let kDMItemUsageBlackKingBarKey: String = "black_king_bar"
	internal let kDMItemUsagePhaseBootsKey: String = "phase_boots"
	internal let kDMItemUsageFaerieFireKey: String = "faerie_fire"
	internal let kDMItemUsageVladmirKey: String = "vladmir"
	internal let kDMItemUsageSobiMaskKey: String = "sobi_mask"
	internal let kDMItemUsageWindLaceKey: String = "wind_lace"
	internal let kDMItemUsageGreaterCritKey: String = "greater_crit"
	internal let kDMItemUsageSolarCrestKey: String = "solar_crest"
	internal let kDMItemUsageFlyingCourierKey: String = "flying_courier"
	internal let kDMItemUsageMithrilHammerKey: String = "mithril_hammer"
	internal let kDMItemUsageYashaKey: String = "yasha"
	internal let kDMItemUsageWraithBandKey: String = "wraith_band"
	internal let kDMItemUsageHeartKey: String = "heart"
	internal let kDMItemUsageClarityKey: String = "clarity"
	internal let kDMItemUsageBloodthornKey: String = "bloodthorn"
	internal let kDMItemUsageTravelBoots2Key: String = "travel_boots_2"
	internal let kDMItemUsageQuarterstaffKey: String = "quarterstaff"
	internal let kDMItemUsageOblivionStaffKey: String = "oblivion_staff"
	internal let kDMItemUsageMagicWandKey: String = "magic_wand"
	internal let kDMItemUsageGlimmerCapeKey: String = "glimmer_cape"
	internal let kDMItemUsageRingOfAquilaKey: String = "ring_of_aquila"
	internal let kDMItemUsageSlippersKey: String = "slippers"
	internal let kDMItemUsageLesserCritKey: String = "lesser_crit"
	internal let kDMItemUsageJavelinKey: String = "javelin"
	internal let kDMItemUsageHelmOfTheDominatorKey: String = "helm_of_the_dominator"
	internal let kDMItemUsageCloakKey: String = "cloak"
	internal let kDMItemUsageGemKey: String = "gem"
	internal let kDMItemUsageBracerKey: String = "bracer"
	internal let kDMItemUsageRobeKey: String = "robe"
	internal let kDMItemUsageBottleKey: String = "bottle"
	internal let kDMItemUsageChainmailKey: String = "chainmail"


    // MARK: Properties
	public var energyBooster: Int?
	public var tango: Int?
	public var aetherLens: Int?
	public var enchantedMango: Int?
	public var riverPainter5: Int?
	public var skadi: Int?
	public var bfury: Int?
	public var tranquilBoots: Int?
	public var mjollnir: Int?
	public var pers: Int?
	public var claymore: Int?
	public var lifesteal: Int?
	public var blightStone: Int?
	public var monkeyKingBar: Int?
	public var ultimateOrb: Int?
	public var flask: Int?
	public var desolator: Int?
	public var stoutShield: Int?
	public var orchid: Int?
	public var ancientJanggo: Int?
	public var magicStick: Int?
	public var poorMansShield: Int?
	public var assault: Int?
	public var branches: Int?
	public var bladesOfAttack: Int?
	public var ringOfBasilius: Int?
	public var maelstrom: Int?
	public var beltOfStrength: Int?
	public var ringOfRegen: Int?
	public var crimsonGuard: Int?
	public var medallionOfCourage: Int?
	public var demonEdge: Int?
	public var urnOfShadows: Int?
	public var ogreAxe: Int?
	public var circlet: Int?
	public var buckler: Int?
	public var tomeOfKnowledge: Int?
	public var dust: Int?
	public var ultimateScepter: Int?
	public var vitalityBooster: Int?
	public var ringOfProtection: Int?
	public var platemail: Int?
	public var sangeAndYasha: Int?
	public var hyperstone: Int?
	public var abyssalBlade: Int?
	public var basher: Int?
	public var wardSentry: Int?
	public var headdress: Int?
	public var boots: Int?
	public var sange: Int?
	public var tpscroll: Int?
	public var broadsword: Int?
	public var quellingBlade: Int?
	public var orbOfVenom: Int?
	public var gloves: Int?
	public var handOfMidas: Int?
	public var armlet: Int?
	public var moonShard: Int?
	public var courier: Int?
	public var shadowAmulet: Int?
	public var powerTreads: Int?
	public var pipe: Int?
	public var bootsOfElves: Int?
	public var invisSword: Int?
	public var gauntlets: Int?
	public var talismanOfEvasion: Int?
	public var helmOfIronWill: Int?
	public var voidStone: Int?
	public var silverEdge: Int?
	public var reaver: Int?
	public var ringOfHealth: Int?
	public var hoodOfDefiance: Int?
	public var manta: Int?
	public var pointBooster: Int?
	public var vanguard: Int?
	public var bladeOfAlacrity: Int?
	public var staffOfWizardry: Int?
	public var infusedRaindrop: Int?
	public var wardObserver: Int?
	public var travelBoots: Int?
	public var blackKingBar: Int?
	public var phaseBoots: Int?
	public var faerieFire: Int?
	public var vladmir: Int?
	public var sobiMask: Int?
	public var windLace: Int?
	public var greaterCrit: Int?
	public var solarCrest: Int?
	public var flyingCourier: Int?
	public var mithrilHammer: Int?
	public var yasha: Int?
	public var wraithBand: Int?
	public var heart: Int?
	public var clarity: Int?
	public var bloodthorn: Int?
	public var travelBoots2: Int?
	public var quarterstaff: Int?
	public var oblivionStaff: Int?
	public var magicWand: Int?
	public var glimmerCape: Int?
	public var ringOfAquila: Int?
	public var slippers: Int?
	public var lesserCrit: Int?
	public var javelin: Int?
	public var helmOfTheDominator: Int?
	public var cloak: Int?
	public var gem: Int?
	public var bracer: Int?
	public var robe: Int?
	public var bottle: Int?
	public var chainmail: Int?


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
		energyBooster = json[kDMItemUsageEnergyBoosterKey].int
		tango = json[kDMItemUsageTangoKey].int
		aetherLens = json[kDMItemUsageAetherLensKey].int
		enchantedMango = json[kDMItemUsageEnchantedMangoKey].int
		riverPainter5 = json[kDMItemUsageRiverPainter5Key].int
		skadi = json[kDMItemUsageSkadiKey].int
		bfury = json[kDMItemUsageBfuryKey].int
		tranquilBoots = json[kDMItemUsageTranquilBootsKey].int
		mjollnir = json[kDMItemUsageMjollnirKey].int
		pers = json[kDMItemUsagePersKey].int
		claymore = json[kDMItemUsageClaymoreKey].int
		lifesteal = json[kDMItemUsageLifestealKey].int
		blightStone = json[kDMItemUsageBlightStoneKey].int
		monkeyKingBar = json[kDMItemUsageMonkeyKingBarKey].int
		ultimateOrb = json[kDMItemUsageUltimateOrbKey].int
		flask = json[kDMItemUsageFlaskKey].int
		desolator = json[kDMItemUsageDesolatorKey].int
		stoutShield = json[kDMItemUsageStoutShieldKey].int
		orchid = json[kDMItemUsageOrchidKey].int
		ancientJanggo = json[kDMItemUsageAncientJanggoKey].int
		magicStick = json[kDMItemUsageMagicStickKey].int
		poorMansShield = json[kDMItemUsagePoorMansShieldKey].int
		assault = json[kDMItemUsageAssaultKey].int
		branches = json[kDMItemUsageBranchesKey].int
		bladesOfAttack = json[kDMItemUsageBladesOfAttackKey].int
		ringOfBasilius = json[kDMItemUsageRingOfBasiliusKey].int
		maelstrom = json[kDMItemUsageMaelstromKey].int
		beltOfStrength = json[kDMItemUsageBeltOfStrengthKey].int
		ringOfRegen = json[kDMItemUsageRingOfRegenKey].int
		crimsonGuard = json[kDMItemUsageCrimsonGuardKey].int
		medallionOfCourage = json[kDMItemUsageMedallionOfCourageKey].int
		demonEdge = json[kDMItemUsageDemonEdgeKey].int
		urnOfShadows = json[kDMItemUsageUrnOfShadowsKey].int
		ogreAxe = json[kDMItemUsageOgreAxeKey].int
		circlet = json[kDMItemUsageCircletKey].int
		buckler = json[kDMItemUsageBucklerKey].int
		tomeOfKnowledge = json[kDMItemUsageTomeOfKnowledgeKey].int
		dust = json[kDMItemUsageDustKey].int
		ultimateScepter = json[kDMItemUsageUltimateScepterKey].int
		vitalityBooster = json[kDMItemUsageVitalityBoosterKey].int
		ringOfProtection = json[kDMItemUsageRingOfProtectionKey].int
		platemail = json[kDMItemUsagePlatemailKey].int
		sangeAndYasha = json[kDMItemUsageSangeAndYashaKey].int
		hyperstone = json[kDMItemUsageHyperstoneKey].int
		abyssalBlade = json[kDMItemUsageAbyssalBladeKey].int
		basher = json[kDMItemUsageBasherKey].int
		wardSentry = json[kDMItemUsageWardSentryKey].int
		headdress = json[kDMItemUsageHeaddressKey].int
		boots = json[kDMItemUsageBootsKey].int
		sange = json[kDMItemUsageSangeKey].int
		tpscroll = json[kDMItemUsageTpscrollKey].int
		broadsword = json[kDMItemUsageBroadswordKey].int
		quellingBlade = json[kDMItemUsageQuellingBladeKey].int
		orbOfVenom = json[kDMItemUsageOrbOfVenomKey].int
		gloves = json[kDMItemUsageGlovesKey].int
		handOfMidas = json[kDMItemUsageHandOfMidasKey].int
		armlet = json[kDMItemUsageArmletKey].int
		moonShard = json[kDMItemUsageMoonShardKey].int
		courier = json[kDMItemUsageCourierKey].int
		shadowAmulet = json[kDMItemUsageShadowAmuletKey].int
		powerTreads = json[kDMItemUsagePowerTreadsKey].int
		pipe = json[kDMItemUsagePipeKey].int
		bootsOfElves = json[kDMItemUsageBootsOfElvesKey].int
		invisSword = json[kDMItemUsageInvisSwordKey].int
		gauntlets = json[kDMItemUsageGauntletsKey].int
		talismanOfEvasion = json[kDMItemUsageTalismanOfEvasionKey].int
		helmOfIronWill = json[kDMItemUsageHelmOfIronWillKey].int
		voidStone = json[kDMItemUsageVoidStoneKey].int
		silverEdge = json[kDMItemUsageSilverEdgeKey].int
		reaver = json[kDMItemUsageReaverKey].int
		ringOfHealth = json[kDMItemUsageRingOfHealthKey].int
		hoodOfDefiance = json[kDMItemUsageHoodOfDefianceKey].int
		manta = json[kDMItemUsageMantaKey].int
		pointBooster = json[kDMItemUsagePointBoosterKey].int
		vanguard = json[kDMItemUsageVanguardKey].int
		bladeOfAlacrity = json[kDMItemUsageBladeOfAlacrityKey].int
		staffOfWizardry = json[kDMItemUsageStaffOfWizardryKey].int
		infusedRaindrop = json[kDMItemUsageInfusedRaindropKey].int
		wardObserver = json[kDMItemUsageWardObserverKey].int
		travelBoots = json[kDMItemUsageTravelBootsKey].int
		blackKingBar = json[kDMItemUsageBlackKingBarKey].int
		phaseBoots = json[kDMItemUsagePhaseBootsKey].int
		faerieFire = json[kDMItemUsageFaerieFireKey].int
		vladmir = json[kDMItemUsageVladmirKey].int
		sobiMask = json[kDMItemUsageSobiMaskKey].int
		windLace = json[kDMItemUsageWindLaceKey].int
		greaterCrit = json[kDMItemUsageGreaterCritKey].int
		solarCrest = json[kDMItemUsageSolarCrestKey].int
		flyingCourier = json[kDMItemUsageFlyingCourierKey].int
		mithrilHammer = json[kDMItemUsageMithrilHammerKey].int
		yasha = json[kDMItemUsageYashaKey].int
		wraithBand = json[kDMItemUsageWraithBandKey].int
		heart = json[kDMItemUsageHeartKey].int
		clarity = json[kDMItemUsageClarityKey].int
		bloodthorn = json[kDMItemUsageBloodthornKey].int
		travelBoots2 = json[kDMItemUsageTravelBoots2Key].int
		quarterstaff = json[kDMItemUsageQuarterstaffKey].int
		oblivionStaff = json[kDMItemUsageOblivionStaffKey].int
		magicWand = json[kDMItemUsageMagicWandKey].int
		glimmerCape = json[kDMItemUsageGlimmerCapeKey].int
		ringOfAquila = json[kDMItemUsageRingOfAquilaKey].int
		slippers = json[kDMItemUsageSlippersKey].int
		lesserCrit = json[kDMItemUsageLesserCritKey].int
		javelin = json[kDMItemUsageJavelinKey].int
		helmOfTheDominator = json[kDMItemUsageHelmOfTheDominatorKey].int
		cloak = json[kDMItemUsageCloakKey].int
		gem = json[kDMItemUsageGemKey].int
		bracer = json[kDMItemUsageBracerKey].int
		robe = json[kDMItemUsageRobeKey].int
		bottle = json[kDMItemUsageBottleKey].int
		chainmail = json[kDMItemUsageChainmailKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if energyBooster != nil {
			dictionary.updateValue(energyBooster!, forKey: kDMItemUsageEnergyBoosterKey)
		}
		if tango != nil {
			dictionary.updateValue(tango!, forKey: kDMItemUsageTangoKey)
		}
		if aetherLens != nil {
			dictionary.updateValue(aetherLens!, forKey: kDMItemUsageAetherLensKey)
		}
		if enchantedMango != nil {
			dictionary.updateValue(enchantedMango!, forKey: kDMItemUsageEnchantedMangoKey)
		}
		if riverPainter5 != nil {
			dictionary.updateValue(riverPainter5!, forKey: kDMItemUsageRiverPainter5Key)
		}
		if skadi != nil {
			dictionary.updateValue(skadi!, forKey: kDMItemUsageSkadiKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury!, forKey: kDMItemUsageBfuryKey)
		}
		if tranquilBoots != nil {
			dictionary.updateValue(tranquilBoots!, forKey: kDMItemUsageTranquilBootsKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir!, forKey: kDMItemUsageMjollnirKey)
		}
		if pers != nil {
			dictionary.updateValue(pers!, forKey: kDMItemUsagePersKey)
		}
		if claymore != nil {
			dictionary.updateValue(claymore!, forKey: kDMItemUsageClaymoreKey)
		}
		if lifesteal != nil {
			dictionary.updateValue(lifesteal!, forKey: kDMItemUsageLifestealKey)
		}
		if blightStone != nil {
			dictionary.updateValue(blightStone!, forKey: kDMItemUsageBlightStoneKey)
		}
		if monkeyKingBar != nil {
			dictionary.updateValue(monkeyKingBar!, forKey: kDMItemUsageMonkeyKingBarKey)
		}
		if ultimateOrb != nil {
			dictionary.updateValue(ultimateOrb!, forKey: kDMItemUsageUltimateOrbKey)
		}
		if flask != nil {
			dictionary.updateValue(flask!, forKey: kDMItemUsageFlaskKey)
		}
		if desolator != nil {
			dictionary.updateValue(desolator!, forKey: kDMItemUsageDesolatorKey)
		}
		if stoutShield != nil {
			dictionary.updateValue(stoutShield!, forKey: kDMItemUsageStoutShieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid!, forKey: kDMItemUsageOrchidKey)
		}
		if ancientJanggo != nil {
			dictionary.updateValue(ancientJanggo!, forKey: kDMItemUsageAncientJanggoKey)
		}
		if magicStick != nil {
			dictionary.updateValue(magicStick!, forKey: kDMItemUsageMagicStickKey)
		}
		if poorMansShield != nil {
			dictionary.updateValue(poorMansShield!, forKey: kDMItemUsagePoorMansShieldKey)
		}
		if assault != nil {
			dictionary.updateValue(assault!, forKey: kDMItemUsageAssaultKey)
		}
		if branches != nil {
			dictionary.updateValue(branches!, forKey: kDMItemUsageBranchesKey)
		}
		if bladesOfAttack != nil {
			dictionary.updateValue(bladesOfAttack!, forKey: kDMItemUsageBladesOfAttackKey)
		}
		if ringOfBasilius != nil {
			dictionary.updateValue(ringOfBasilius!, forKey: kDMItemUsageRingOfBasiliusKey)
		}
		if maelstrom != nil {
			dictionary.updateValue(maelstrom!, forKey: kDMItemUsageMaelstromKey)
		}
		if beltOfStrength != nil {
			dictionary.updateValue(beltOfStrength!, forKey: kDMItemUsageBeltOfStrengthKey)
		}
		if ringOfRegen != nil {
			dictionary.updateValue(ringOfRegen!, forKey: kDMItemUsageRingOfRegenKey)
		}
		if crimsonGuard != nil {
			dictionary.updateValue(crimsonGuard!, forKey: kDMItemUsageCrimsonGuardKey)
		}
		if medallionOfCourage != nil {
			dictionary.updateValue(medallionOfCourage!, forKey: kDMItemUsageMedallionOfCourageKey)
		}
		if demonEdge != nil {
			dictionary.updateValue(demonEdge!, forKey: kDMItemUsageDemonEdgeKey)
		}
		if urnOfShadows != nil {
			dictionary.updateValue(urnOfShadows!, forKey: kDMItemUsageUrnOfShadowsKey)
		}
		if ogreAxe != nil {
			dictionary.updateValue(ogreAxe!, forKey: kDMItemUsageOgreAxeKey)
		}
		if circlet != nil {
			dictionary.updateValue(circlet!, forKey: kDMItemUsageCircletKey)
		}
		if buckler != nil {
			dictionary.updateValue(buckler!, forKey: kDMItemUsageBucklerKey)
		}
		if tomeOfKnowledge != nil {
			dictionary.updateValue(tomeOfKnowledge!, forKey: kDMItemUsageTomeOfKnowledgeKey)
		}
		if dust != nil {
			dictionary.updateValue(dust!, forKey: kDMItemUsageDustKey)
		}
		if ultimateScepter != nil {
			dictionary.updateValue(ultimateScepter!, forKey: kDMItemUsageUltimateScepterKey)
		}
		if vitalityBooster != nil {
			dictionary.updateValue(vitalityBooster!, forKey: kDMItemUsageVitalityBoosterKey)
		}
		if ringOfProtection != nil {
			dictionary.updateValue(ringOfProtection!, forKey: kDMItemUsageRingOfProtectionKey)
		}
		if platemail != nil {
			dictionary.updateValue(platemail!, forKey: kDMItemUsagePlatemailKey)
		}
		if sangeAndYasha != nil {
			dictionary.updateValue(sangeAndYasha!, forKey: kDMItemUsageSangeAndYashaKey)
		}
		if hyperstone != nil {
			dictionary.updateValue(hyperstone!, forKey: kDMItemUsageHyperstoneKey)
		}
		if abyssalBlade != nil {
			dictionary.updateValue(abyssalBlade!, forKey: kDMItemUsageAbyssalBladeKey)
		}
		if basher != nil {
			dictionary.updateValue(basher!, forKey: kDMItemUsageBasherKey)
		}
		if wardSentry != nil {
			dictionary.updateValue(wardSentry!, forKey: kDMItemUsageWardSentryKey)
		}
		if headdress != nil {
			dictionary.updateValue(headdress!, forKey: kDMItemUsageHeaddressKey)
		}
		if boots != nil {
			dictionary.updateValue(boots!, forKey: kDMItemUsageBootsKey)
		}
		if sange != nil {
			dictionary.updateValue(sange!, forKey: kDMItemUsageSangeKey)
		}
		if tpscroll != nil {
			dictionary.updateValue(tpscroll!, forKey: kDMItemUsageTpscrollKey)
		}
		if broadsword != nil {
			dictionary.updateValue(broadsword!, forKey: kDMItemUsageBroadswordKey)
		}
		if quellingBlade != nil {
			dictionary.updateValue(quellingBlade!, forKey: kDMItemUsageQuellingBladeKey)
		}
		if orbOfVenom != nil {
			dictionary.updateValue(orbOfVenom!, forKey: kDMItemUsageOrbOfVenomKey)
		}
		if gloves != nil {
			dictionary.updateValue(gloves!, forKey: kDMItemUsageGlovesKey)
		}
		if handOfMidas != nil {
			dictionary.updateValue(handOfMidas!, forKey: kDMItemUsageHandOfMidasKey)
		}
		if armlet != nil {
			dictionary.updateValue(armlet!, forKey: kDMItemUsageArmletKey)
		}
		if moonShard != nil {
			dictionary.updateValue(moonShard!, forKey: kDMItemUsageMoonShardKey)
		}
		if courier != nil {
			dictionary.updateValue(courier!, forKey: kDMItemUsageCourierKey)
		}
		if shadowAmulet != nil {
			dictionary.updateValue(shadowAmulet!, forKey: kDMItemUsageShadowAmuletKey)
		}
		if powerTreads != nil {
			dictionary.updateValue(powerTreads!, forKey: kDMItemUsagePowerTreadsKey)
		}
		if pipe != nil {
			dictionary.updateValue(pipe!, forKey: kDMItemUsagePipeKey)
		}
		if bootsOfElves != nil {
			dictionary.updateValue(bootsOfElves!, forKey: kDMItemUsageBootsOfElvesKey)
		}
		if invisSword != nil {
			dictionary.updateValue(invisSword!, forKey: kDMItemUsageInvisSwordKey)
		}
		if gauntlets != nil {
			dictionary.updateValue(gauntlets!, forKey: kDMItemUsageGauntletsKey)
		}
		if talismanOfEvasion != nil {
			dictionary.updateValue(talismanOfEvasion!, forKey: kDMItemUsageTalismanOfEvasionKey)
		}
		if helmOfIronWill != nil {
			dictionary.updateValue(helmOfIronWill!, forKey: kDMItemUsageHelmOfIronWillKey)
		}
		if voidStone != nil {
			dictionary.updateValue(voidStone!, forKey: kDMItemUsageVoidStoneKey)
		}
		if silverEdge != nil {
			dictionary.updateValue(silverEdge!, forKey: kDMItemUsageSilverEdgeKey)
		}
		if reaver != nil {
			dictionary.updateValue(reaver!, forKey: kDMItemUsageReaverKey)
		}
		if ringOfHealth != nil {
			dictionary.updateValue(ringOfHealth!, forKey: kDMItemUsageRingOfHealthKey)
		}
		if hoodOfDefiance != nil {
			dictionary.updateValue(hoodOfDefiance!, forKey: kDMItemUsageHoodOfDefianceKey)
		}
		if manta != nil {
			dictionary.updateValue(manta!, forKey: kDMItemUsageMantaKey)
		}
		if pointBooster != nil {
			dictionary.updateValue(pointBooster!, forKey: kDMItemUsagePointBoosterKey)
		}
		if vanguard != nil {
			dictionary.updateValue(vanguard!, forKey: kDMItemUsageVanguardKey)
		}
		if bladeOfAlacrity != nil {
			dictionary.updateValue(bladeOfAlacrity!, forKey: kDMItemUsageBladeOfAlacrityKey)
		}
		if staffOfWizardry != nil {
			dictionary.updateValue(staffOfWizardry!, forKey: kDMItemUsageStaffOfWizardryKey)
		}
		if infusedRaindrop != nil {
			dictionary.updateValue(infusedRaindrop!, forKey: kDMItemUsageInfusedRaindropKey)
		}
		if wardObserver != nil {
			dictionary.updateValue(wardObserver!, forKey: kDMItemUsageWardObserverKey)
		}
		if travelBoots != nil {
			dictionary.updateValue(travelBoots!, forKey: kDMItemUsageTravelBootsKey)
		}
		if blackKingBar != nil {
			dictionary.updateValue(blackKingBar!, forKey: kDMItemUsageBlackKingBarKey)
		}
		if phaseBoots != nil {
			dictionary.updateValue(phaseBoots!, forKey: kDMItemUsagePhaseBootsKey)
		}
		if faerieFire != nil {
			dictionary.updateValue(faerieFire!, forKey: kDMItemUsageFaerieFireKey)
		}
		if vladmir != nil {
			dictionary.updateValue(vladmir!, forKey: kDMItemUsageVladmirKey)
		}
		if sobiMask != nil {
			dictionary.updateValue(sobiMask!, forKey: kDMItemUsageSobiMaskKey)
		}
		if windLace != nil {
			dictionary.updateValue(windLace!, forKey: kDMItemUsageWindLaceKey)
		}
		if greaterCrit != nil {
			dictionary.updateValue(greaterCrit!, forKey: kDMItemUsageGreaterCritKey)
		}
		if solarCrest != nil {
			dictionary.updateValue(solarCrest!, forKey: kDMItemUsageSolarCrestKey)
		}
		if flyingCourier != nil {
			dictionary.updateValue(flyingCourier!, forKey: kDMItemUsageFlyingCourierKey)
		}
		if mithrilHammer != nil {
			dictionary.updateValue(mithrilHammer!, forKey: kDMItemUsageMithrilHammerKey)
		}
		if yasha != nil {
			dictionary.updateValue(yasha!, forKey: kDMItemUsageYashaKey)
		}
		if wraithBand != nil {
			dictionary.updateValue(wraithBand!, forKey: kDMItemUsageWraithBandKey)
		}
		if heart != nil {
			dictionary.updateValue(heart!, forKey: kDMItemUsageHeartKey)
		}
		if clarity != nil {
			dictionary.updateValue(clarity!, forKey: kDMItemUsageClarityKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn!, forKey: kDMItemUsageBloodthornKey)
		}
		if travelBoots2 != nil {
			dictionary.updateValue(travelBoots2!, forKey: kDMItemUsageTravelBoots2Key)
		}
		if quarterstaff != nil {
			dictionary.updateValue(quarterstaff!, forKey: kDMItemUsageQuarterstaffKey)
		}
		if oblivionStaff != nil {
			dictionary.updateValue(oblivionStaff!, forKey: kDMItemUsageOblivionStaffKey)
		}
		if magicWand != nil {
			dictionary.updateValue(magicWand!, forKey: kDMItemUsageMagicWandKey)
		}
		if glimmerCape != nil {
			dictionary.updateValue(glimmerCape!, forKey: kDMItemUsageGlimmerCapeKey)
		}
		if ringOfAquila != nil {
			dictionary.updateValue(ringOfAquila!, forKey: kDMItemUsageRingOfAquilaKey)
		}
		if slippers != nil {
			dictionary.updateValue(slippers!, forKey: kDMItemUsageSlippersKey)
		}
		if lesserCrit != nil {
			dictionary.updateValue(lesserCrit!, forKey: kDMItemUsageLesserCritKey)
		}
		if javelin != nil {
			dictionary.updateValue(javelin!, forKey: kDMItemUsageJavelinKey)
		}
		if helmOfTheDominator != nil {
			dictionary.updateValue(helmOfTheDominator!, forKey: kDMItemUsageHelmOfTheDominatorKey)
		}
		if cloak != nil {
			dictionary.updateValue(cloak!, forKey: kDMItemUsageCloakKey)
		}
		if gem != nil {
			dictionary.updateValue(gem!, forKey: kDMItemUsageGemKey)
		}
		if bracer != nil {
			dictionary.updateValue(bracer!, forKey: kDMItemUsageBracerKey)
		}
		if robe != nil {
			dictionary.updateValue(robe!, forKey: kDMItemUsageRobeKey)
		}
		if bottle != nil {
			dictionary.updateValue(bottle!, forKey: kDMItemUsageBottleKey)
		}
		if chainmail != nil {
			dictionary.updateValue(chainmail!, forKey: kDMItemUsageChainmailKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.energyBooster = aDecoder.decodeObjectForKey(kDMItemUsageEnergyBoosterKey) as? Int
		self.tango = aDecoder.decodeObjectForKey(kDMItemUsageTangoKey) as? Int
		self.aetherLens = aDecoder.decodeObjectForKey(kDMItemUsageAetherLensKey) as? Int
		self.enchantedMango = aDecoder.decodeObjectForKey(kDMItemUsageEnchantedMangoKey) as? Int
		self.riverPainter5 = aDecoder.decodeObjectForKey(kDMItemUsageRiverPainter5Key) as? Int
		self.skadi = aDecoder.decodeObjectForKey(kDMItemUsageSkadiKey) as? Int
		self.bfury = aDecoder.decodeObjectForKey(kDMItemUsageBfuryKey) as? Int
		self.tranquilBoots = aDecoder.decodeObjectForKey(kDMItemUsageTranquilBootsKey) as? Int
		self.mjollnir = aDecoder.decodeObjectForKey(kDMItemUsageMjollnirKey) as? Int
		self.pers = aDecoder.decodeObjectForKey(kDMItemUsagePersKey) as? Int
		self.claymore = aDecoder.decodeObjectForKey(kDMItemUsageClaymoreKey) as? Int
		self.lifesteal = aDecoder.decodeObjectForKey(kDMItemUsageLifestealKey) as? Int
		self.blightStone = aDecoder.decodeObjectForKey(kDMItemUsageBlightStoneKey) as? Int
		self.monkeyKingBar = aDecoder.decodeObjectForKey(kDMItemUsageMonkeyKingBarKey) as? Int
		self.ultimateOrb = aDecoder.decodeObjectForKey(kDMItemUsageUltimateOrbKey) as? Int
		self.flask = aDecoder.decodeObjectForKey(kDMItemUsageFlaskKey) as? Int
		self.desolator = aDecoder.decodeObjectForKey(kDMItemUsageDesolatorKey) as? Int
		self.stoutShield = aDecoder.decodeObjectForKey(kDMItemUsageStoutShieldKey) as? Int
		self.orchid = aDecoder.decodeObjectForKey(kDMItemUsageOrchidKey) as? Int
		self.ancientJanggo = aDecoder.decodeObjectForKey(kDMItemUsageAncientJanggoKey) as? Int
		self.magicStick = aDecoder.decodeObjectForKey(kDMItemUsageMagicStickKey) as? Int
		self.poorMansShield = aDecoder.decodeObjectForKey(kDMItemUsagePoorMansShieldKey) as? Int
		self.assault = aDecoder.decodeObjectForKey(kDMItemUsageAssaultKey) as? Int
		self.branches = aDecoder.decodeObjectForKey(kDMItemUsageBranchesKey) as? Int
		self.bladesOfAttack = aDecoder.decodeObjectForKey(kDMItemUsageBladesOfAttackKey) as? Int
		self.ringOfBasilius = aDecoder.decodeObjectForKey(kDMItemUsageRingOfBasiliusKey) as? Int
		self.maelstrom = aDecoder.decodeObjectForKey(kDMItemUsageMaelstromKey) as? Int
		self.beltOfStrength = aDecoder.decodeObjectForKey(kDMItemUsageBeltOfStrengthKey) as? Int
		self.ringOfRegen = aDecoder.decodeObjectForKey(kDMItemUsageRingOfRegenKey) as? Int
		self.crimsonGuard = aDecoder.decodeObjectForKey(kDMItemUsageCrimsonGuardKey) as? Int
		self.medallionOfCourage = aDecoder.decodeObjectForKey(kDMItemUsageMedallionOfCourageKey) as? Int
		self.demonEdge = aDecoder.decodeObjectForKey(kDMItemUsageDemonEdgeKey) as? Int
		self.urnOfShadows = aDecoder.decodeObjectForKey(kDMItemUsageUrnOfShadowsKey) as? Int
		self.ogreAxe = aDecoder.decodeObjectForKey(kDMItemUsageOgreAxeKey) as? Int
		self.circlet = aDecoder.decodeObjectForKey(kDMItemUsageCircletKey) as? Int
		self.buckler = aDecoder.decodeObjectForKey(kDMItemUsageBucklerKey) as? Int
		self.tomeOfKnowledge = aDecoder.decodeObjectForKey(kDMItemUsageTomeOfKnowledgeKey) as? Int
		self.dust = aDecoder.decodeObjectForKey(kDMItemUsageDustKey) as? Int
		self.ultimateScepter = aDecoder.decodeObjectForKey(kDMItemUsageUltimateScepterKey) as? Int
		self.vitalityBooster = aDecoder.decodeObjectForKey(kDMItemUsageVitalityBoosterKey) as? Int
		self.ringOfProtection = aDecoder.decodeObjectForKey(kDMItemUsageRingOfProtectionKey) as? Int
		self.platemail = aDecoder.decodeObjectForKey(kDMItemUsagePlatemailKey) as? Int
		self.sangeAndYasha = aDecoder.decodeObjectForKey(kDMItemUsageSangeAndYashaKey) as? Int
		self.hyperstone = aDecoder.decodeObjectForKey(kDMItemUsageHyperstoneKey) as? Int
		self.abyssalBlade = aDecoder.decodeObjectForKey(kDMItemUsageAbyssalBladeKey) as? Int
		self.basher = aDecoder.decodeObjectForKey(kDMItemUsageBasherKey) as? Int
		self.wardSentry = aDecoder.decodeObjectForKey(kDMItemUsageWardSentryKey) as? Int
		self.headdress = aDecoder.decodeObjectForKey(kDMItemUsageHeaddressKey) as? Int
		self.boots = aDecoder.decodeObjectForKey(kDMItemUsageBootsKey) as? Int
		self.sange = aDecoder.decodeObjectForKey(kDMItemUsageSangeKey) as? Int
		self.tpscroll = aDecoder.decodeObjectForKey(kDMItemUsageTpscrollKey) as? Int
		self.broadsword = aDecoder.decodeObjectForKey(kDMItemUsageBroadswordKey) as? Int
		self.quellingBlade = aDecoder.decodeObjectForKey(kDMItemUsageQuellingBladeKey) as? Int
		self.orbOfVenom = aDecoder.decodeObjectForKey(kDMItemUsageOrbOfVenomKey) as? Int
		self.gloves = aDecoder.decodeObjectForKey(kDMItemUsageGlovesKey) as? Int
		self.handOfMidas = aDecoder.decodeObjectForKey(kDMItemUsageHandOfMidasKey) as? Int
		self.armlet = aDecoder.decodeObjectForKey(kDMItemUsageArmletKey) as? Int
		self.moonShard = aDecoder.decodeObjectForKey(kDMItemUsageMoonShardKey) as? Int
		self.courier = aDecoder.decodeObjectForKey(kDMItemUsageCourierKey) as? Int
		self.shadowAmulet = aDecoder.decodeObjectForKey(kDMItemUsageShadowAmuletKey) as? Int
		self.powerTreads = aDecoder.decodeObjectForKey(kDMItemUsagePowerTreadsKey) as? Int
		self.pipe = aDecoder.decodeObjectForKey(kDMItemUsagePipeKey) as? Int
		self.bootsOfElves = aDecoder.decodeObjectForKey(kDMItemUsageBootsOfElvesKey) as? Int
		self.invisSword = aDecoder.decodeObjectForKey(kDMItemUsageInvisSwordKey) as? Int
		self.gauntlets = aDecoder.decodeObjectForKey(kDMItemUsageGauntletsKey) as? Int
		self.talismanOfEvasion = aDecoder.decodeObjectForKey(kDMItemUsageTalismanOfEvasionKey) as? Int
		self.helmOfIronWill = aDecoder.decodeObjectForKey(kDMItemUsageHelmOfIronWillKey) as? Int
		self.voidStone = aDecoder.decodeObjectForKey(kDMItemUsageVoidStoneKey) as? Int
		self.silverEdge = aDecoder.decodeObjectForKey(kDMItemUsageSilverEdgeKey) as? Int
		self.reaver = aDecoder.decodeObjectForKey(kDMItemUsageReaverKey) as? Int
		self.ringOfHealth = aDecoder.decodeObjectForKey(kDMItemUsageRingOfHealthKey) as? Int
		self.hoodOfDefiance = aDecoder.decodeObjectForKey(kDMItemUsageHoodOfDefianceKey) as? Int
		self.manta = aDecoder.decodeObjectForKey(kDMItemUsageMantaKey) as? Int
		self.pointBooster = aDecoder.decodeObjectForKey(kDMItemUsagePointBoosterKey) as? Int
		self.vanguard = aDecoder.decodeObjectForKey(kDMItemUsageVanguardKey) as? Int
		self.bladeOfAlacrity = aDecoder.decodeObjectForKey(kDMItemUsageBladeOfAlacrityKey) as? Int
		self.staffOfWizardry = aDecoder.decodeObjectForKey(kDMItemUsageStaffOfWizardryKey) as? Int
		self.infusedRaindrop = aDecoder.decodeObjectForKey(kDMItemUsageInfusedRaindropKey) as? Int
		self.wardObserver = aDecoder.decodeObjectForKey(kDMItemUsageWardObserverKey) as? Int
		self.travelBoots = aDecoder.decodeObjectForKey(kDMItemUsageTravelBootsKey) as? Int
		self.blackKingBar = aDecoder.decodeObjectForKey(kDMItemUsageBlackKingBarKey) as? Int
		self.phaseBoots = aDecoder.decodeObjectForKey(kDMItemUsagePhaseBootsKey) as? Int
		self.faerieFire = aDecoder.decodeObjectForKey(kDMItemUsageFaerieFireKey) as? Int
		self.vladmir = aDecoder.decodeObjectForKey(kDMItemUsageVladmirKey) as? Int
		self.sobiMask = aDecoder.decodeObjectForKey(kDMItemUsageSobiMaskKey) as? Int
		self.windLace = aDecoder.decodeObjectForKey(kDMItemUsageWindLaceKey) as? Int
		self.greaterCrit = aDecoder.decodeObjectForKey(kDMItemUsageGreaterCritKey) as? Int
		self.solarCrest = aDecoder.decodeObjectForKey(kDMItemUsageSolarCrestKey) as? Int
		self.flyingCourier = aDecoder.decodeObjectForKey(kDMItemUsageFlyingCourierKey) as? Int
		self.mithrilHammer = aDecoder.decodeObjectForKey(kDMItemUsageMithrilHammerKey) as? Int
		self.yasha = aDecoder.decodeObjectForKey(kDMItemUsageYashaKey) as? Int
		self.wraithBand = aDecoder.decodeObjectForKey(kDMItemUsageWraithBandKey) as? Int
		self.heart = aDecoder.decodeObjectForKey(kDMItemUsageHeartKey) as? Int
		self.clarity = aDecoder.decodeObjectForKey(kDMItemUsageClarityKey) as? Int
		self.bloodthorn = aDecoder.decodeObjectForKey(kDMItemUsageBloodthornKey) as? Int
		self.travelBoots2 = aDecoder.decodeObjectForKey(kDMItemUsageTravelBoots2Key) as? Int
		self.quarterstaff = aDecoder.decodeObjectForKey(kDMItemUsageQuarterstaffKey) as? Int
		self.oblivionStaff = aDecoder.decodeObjectForKey(kDMItemUsageOblivionStaffKey) as? Int
		self.magicWand = aDecoder.decodeObjectForKey(kDMItemUsageMagicWandKey) as? Int
		self.glimmerCape = aDecoder.decodeObjectForKey(kDMItemUsageGlimmerCapeKey) as? Int
		self.ringOfAquila = aDecoder.decodeObjectForKey(kDMItemUsageRingOfAquilaKey) as? Int
		self.slippers = aDecoder.decodeObjectForKey(kDMItemUsageSlippersKey) as? Int
		self.lesserCrit = aDecoder.decodeObjectForKey(kDMItemUsageLesserCritKey) as? Int
		self.javelin = aDecoder.decodeObjectForKey(kDMItemUsageJavelinKey) as? Int
		self.helmOfTheDominator = aDecoder.decodeObjectForKey(kDMItemUsageHelmOfTheDominatorKey) as? Int
		self.cloak = aDecoder.decodeObjectForKey(kDMItemUsageCloakKey) as? Int
		self.gem = aDecoder.decodeObjectForKey(kDMItemUsageGemKey) as? Int
		self.bracer = aDecoder.decodeObjectForKey(kDMItemUsageBracerKey) as? Int
		self.robe = aDecoder.decodeObjectForKey(kDMItemUsageRobeKey) as? Int
		self.bottle = aDecoder.decodeObjectForKey(kDMItemUsageBottleKey) as? Int
		self.chainmail = aDecoder.decodeObjectForKey(kDMItemUsageChainmailKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(energyBooster, forKey: kDMItemUsageEnergyBoosterKey)
		aCoder.encodeObject(tango, forKey: kDMItemUsageTangoKey)
		aCoder.encodeObject(aetherLens, forKey: kDMItemUsageAetherLensKey)
		aCoder.encodeObject(enchantedMango, forKey: kDMItemUsageEnchantedMangoKey)
		aCoder.encodeObject(riverPainter5, forKey: kDMItemUsageRiverPainter5Key)
		aCoder.encodeObject(skadi, forKey: kDMItemUsageSkadiKey)
		aCoder.encodeObject(bfury, forKey: kDMItemUsageBfuryKey)
		aCoder.encodeObject(tranquilBoots, forKey: kDMItemUsageTranquilBootsKey)
		aCoder.encodeObject(mjollnir, forKey: kDMItemUsageMjollnirKey)
		aCoder.encodeObject(pers, forKey: kDMItemUsagePersKey)
		aCoder.encodeObject(claymore, forKey: kDMItemUsageClaymoreKey)
		aCoder.encodeObject(lifesteal, forKey: kDMItemUsageLifestealKey)
		aCoder.encodeObject(blightStone, forKey: kDMItemUsageBlightStoneKey)
		aCoder.encodeObject(monkeyKingBar, forKey: kDMItemUsageMonkeyKingBarKey)
		aCoder.encodeObject(ultimateOrb, forKey: kDMItemUsageUltimateOrbKey)
		aCoder.encodeObject(flask, forKey: kDMItemUsageFlaskKey)
		aCoder.encodeObject(desolator, forKey: kDMItemUsageDesolatorKey)
		aCoder.encodeObject(stoutShield, forKey: kDMItemUsageStoutShieldKey)
		aCoder.encodeObject(orchid, forKey: kDMItemUsageOrchidKey)
		aCoder.encodeObject(ancientJanggo, forKey: kDMItemUsageAncientJanggoKey)
		aCoder.encodeObject(magicStick, forKey: kDMItemUsageMagicStickKey)
		aCoder.encodeObject(poorMansShield, forKey: kDMItemUsagePoorMansShieldKey)
		aCoder.encodeObject(assault, forKey: kDMItemUsageAssaultKey)
		aCoder.encodeObject(branches, forKey: kDMItemUsageBranchesKey)
		aCoder.encodeObject(bladesOfAttack, forKey: kDMItemUsageBladesOfAttackKey)
		aCoder.encodeObject(ringOfBasilius, forKey: kDMItemUsageRingOfBasiliusKey)
		aCoder.encodeObject(maelstrom, forKey: kDMItemUsageMaelstromKey)
		aCoder.encodeObject(beltOfStrength, forKey: kDMItemUsageBeltOfStrengthKey)
		aCoder.encodeObject(ringOfRegen, forKey: kDMItemUsageRingOfRegenKey)
		aCoder.encodeObject(crimsonGuard, forKey: kDMItemUsageCrimsonGuardKey)
		aCoder.encodeObject(medallionOfCourage, forKey: kDMItemUsageMedallionOfCourageKey)
		aCoder.encodeObject(demonEdge, forKey: kDMItemUsageDemonEdgeKey)
		aCoder.encodeObject(urnOfShadows, forKey: kDMItemUsageUrnOfShadowsKey)
		aCoder.encodeObject(ogreAxe, forKey: kDMItemUsageOgreAxeKey)
		aCoder.encodeObject(circlet, forKey: kDMItemUsageCircletKey)
		aCoder.encodeObject(buckler, forKey: kDMItemUsageBucklerKey)
		aCoder.encodeObject(tomeOfKnowledge, forKey: kDMItemUsageTomeOfKnowledgeKey)
		aCoder.encodeObject(dust, forKey: kDMItemUsageDustKey)
		aCoder.encodeObject(ultimateScepter, forKey: kDMItemUsageUltimateScepterKey)
		aCoder.encodeObject(vitalityBooster, forKey: kDMItemUsageVitalityBoosterKey)
		aCoder.encodeObject(ringOfProtection, forKey: kDMItemUsageRingOfProtectionKey)
		aCoder.encodeObject(platemail, forKey: kDMItemUsagePlatemailKey)
		aCoder.encodeObject(sangeAndYasha, forKey: kDMItemUsageSangeAndYashaKey)
		aCoder.encodeObject(hyperstone, forKey: kDMItemUsageHyperstoneKey)
		aCoder.encodeObject(abyssalBlade, forKey: kDMItemUsageAbyssalBladeKey)
		aCoder.encodeObject(basher, forKey: kDMItemUsageBasherKey)
		aCoder.encodeObject(wardSentry, forKey: kDMItemUsageWardSentryKey)
		aCoder.encodeObject(headdress, forKey: kDMItemUsageHeaddressKey)
		aCoder.encodeObject(boots, forKey: kDMItemUsageBootsKey)
		aCoder.encodeObject(sange, forKey: kDMItemUsageSangeKey)
		aCoder.encodeObject(tpscroll, forKey: kDMItemUsageTpscrollKey)
		aCoder.encodeObject(broadsword, forKey: kDMItemUsageBroadswordKey)
		aCoder.encodeObject(quellingBlade, forKey: kDMItemUsageQuellingBladeKey)
		aCoder.encodeObject(orbOfVenom, forKey: kDMItemUsageOrbOfVenomKey)
		aCoder.encodeObject(gloves, forKey: kDMItemUsageGlovesKey)
		aCoder.encodeObject(handOfMidas, forKey: kDMItemUsageHandOfMidasKey)
		aCoder.encodeObject(armlet, forKey: kDMItemUsageArmletKey)
		aCoder.encodeObject(moonShard, forKey: kDMItemUsageMoonShardKey)
		aCoder.encodeObject(courier, forKey: kDMItemUsageCourierKey)
		aCoder.encodeObject(shadowAmulet, forKey: kDMItemUsageShadowAmuletKey)
		aCoder.encodeObject(powerTreads, forKey: kDMItemUsagePowerTreadsKey)
		aCoder.encodeObject(pipe, forKey: kDMItemUsagePipeKey)
		aCoder.encodeObject(bootsOfElves, forKey: kDMItemUsageBootsOfElvesKey)
		aCoder.encodeObject(invisSword, forKey: kDMItemUsageInvisSwordKey)
		aCoder.encodeObject(gauntlets, forKey: kDMItemUsageGauntletsKey)
		aCoder.encodeObject(talismanOfEvasion, forKey: kDMItemUsageTalismanOfEvasionKey)
		aCoder.encodeObject(helmOfIronWill, forKey: kDMItemUsageHelmOfIronWillKey)
		aCoder.encodeObject(voidStone, forKey: kDMItemUsageVoidStoneKey)
		aCoder.encodeObject(silverEdge, forKey: kDMItemUsageSilverEdgeKey)
		aCoder.encodeObject(reaver, forKey: kDMItemUsageReaverKey)
		aCoder.encodeObject(ringOfHealth, forKey: kDMItemUsageRingOfHealthKey)
		aCoder.encodeObject(hoodOfDefiance, forKey: kDMItemUsageHoodOfDefianceKey)
		aCoder.encodeObject(manta, forKey: kDMItemUsageMantaKey)
		aCoder.encodeObject(pointBooster, forKey: kDMItemUsagePointBoosterKey)
		aCoder.encodeObject(vanguard, forKey: kDMItemUsageVanguardKey)
		aCoder.encodeObject(bladeOfAlacrity, forKey: kDMItemUsageBladeOfAlacrityKey)
		aCoder.encodeObject(staffOfWizardry, forKey: kDMItemUsageStaffOfWizardryKey)
		aCoder.encodeObject(infusedRaindrop, forKey: kDMItemUsageInfusedRaindropKey)
		aCoder.encodeObject(wardObserver, forKey: kDMItemUsageWardObserverKey)
		aCoder.encodeObject(travelBoots, forKey: kDMItemUsageTravelBootsKey)
		aCoder.encodeObject(blackKingBar, forKey: kDMItemUsageBlackKingBarKey)
		aCoder.encodeObject(phaseBoots, forKey: kDMItemUsagePhaseBootsKey)
		aCoder.encodeObject(faerieFire, forKey: kDMItemUsageFaerieFireKey)
		aCoder.encodeObject(vladmir, forKey: kDMItemUsageVladmirKey)
		aCoder.encodeObject(sobiMask, forKey: kDMItemUsageSobiMaskKey)
		aCoder.encodeObject(windLace, forKey: kDMItemUsageWindLaceKey)
		aCoder.encodeObject(greaterCrit, forKey: kDMItemUsageGreaterCritKey)
		aCoder.encodeObject(solarCrest, forKey: kDMItemUsageSolarCrestKey)
		aCoder.encodeObject(flyingCourier, forKey: kDMItemUsageFlyingCourierKey)
		aCoder.encodeObject(mithrilHammer, forKey: kDMItemUsageMithrilHammerKey)
		aCoder.encodeObject(yasha, forKey: kDMItemUsageYashaKey)
		aCoder.encodeObject(wraithBand, forKey: kDMItemUsageWraithBandKey)
		aCoder.encodeObject(heart, forKey: kDMItemUsageHeartKey)
		aCoder.encodeObject(clarity, forKey: kDMItemUsageClarityKey)
		aCoder.encodeObject(bloodthorn, forKey: kDMItemUsageBloodthornKey)
		aCoder.encodeObject(travelBoots2, forKey: kDMItemUsageTravelBoots2Key)
		aCoder.encodeObject(quarterstaff, forKey: kDMItemUsageQuarterstaffKey)
		aCoder.encodeObject(oblivionStaff, forKey: kDMItemUsageOblivionStaffKey)
		aCoder.encodeObject(magicWand, forKey: kDMItemUsageMagicWandKey)
		aCoder.encodeObject(glimmerCape, forKey: kDMItemUsageGlimmerCapeKey)
		aCoder.encodeObject(ringOfAquila, forKey: kDMItemUsageRingOfAquilaKey)
		aCoder.encodeObject(slippers, forKey: kDMItemUsageSlippersKey)
		aCoder.encodeObject(lesserCrit, forKey: kDMItemUsageLesserCritKey)
		aCoder.encodeObject(javelin, forKey: kDMItemUsageJavelinKey)
		aCoder.encodeObject(helmOfTheDominator, forKey: kDMItemUsageHelmOfTheDominatorKey)
		aCoder.encodeObject(cloak, forKey: kDMItemUsageCloakKey)
		aCoder.encodeObject(gem, forKey: kDMItemUsageGemKey)
		aCoder.encodeObject(bracer, forKey: kDMItemUsageBracerKey)
		aCoder.encodeObject(robe, forKey: kDMItemUsageRobeKey)
		aCoder.encodeObject(bottle, forKey: kDMItemUsageBottleKey)
		aCoder.encodeObject(chainmail, forKey: kDMItemUsageChainmailKey)

    }

}
