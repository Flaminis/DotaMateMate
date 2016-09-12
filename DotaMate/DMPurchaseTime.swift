//
//  DMPurchaseTime.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMPurchaseTime: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMPurchaseTimeEnergyBoosterKey: String = "energy_booster"
	internal let kDMPurchaseTimeTangoKey: String = "tango"
	internal let kDMPurchaseTimeAetherLensKey: String = "aether_lens"
	internal let kDMPurchaseTimeEnchantedMangoKey: String = "enchanted_mango"
	internal let kDMPurchaseTimeRiverPainter5Key: String = "river_painter5"
	internal let kDMPurchaseTimeSkadiKey: String = "skadi"
	internal let kDMPurchaseTimeBfuryKey: String = "bfury"
	internal let kDMPurchaseTimeTranquilBootsKey: String = "tranquil_boots"
	internal let kDMPurchaseTimeMjollnirKey: String = "mjollnir"
	internal let kDMPurchaseTimePersKey: String = "pers"
	internal let kDMPurchaseTimeClaymoreKey: String = "claymore"
	internal let kDMPurchaseTimeLifestealKey: String = "lifesteal"
	internal let kDMPurchaseTimeBlightStoneKey: String = "blight_stone"
	internal let kDMPurchaseTimeMonkeyKingBarKey: String = "monkey_king_bar"
	internal let kDMPurchaseTimeUltimateOrbKey: String = "ultimate_orb"
	internal let kDMPurchaseTimeFlaskKey: String = "flask"
	internal let kDMPurchaseTimeDesolatorKey: String = "desolator"
	internal let kDMPurchaseTimeStoutShieldKey: String = "stout_shield"
	internal let kDMPurchaseTimeOrchidKey: String = "orchid"
	internal let kDMPurchaseTimeAncientJanggoKey: String = "ancient_janggo"
	internal let kDMPurchaseTimeMagicStickKey: String = "magic_stick"
	internal let kDMPurchaseTimePoorMansShieldKey: String = "poor_mans_shield"
	internal let kDMPurchaseTimeAssaultKey: String = "assault"
	internal let kDMPurchaseTimeBranchesKey: String = "branches"
	internal let kDMPurchaseTimeBladesOfAttackKey: String = "blades_of_attack"
	internal let kDMPurchaseTimeRingOfBasiliusKey: String = "ring_of_basilius"
	internal let kDMPurchaseTimeMaelstromKey: String = "maelstrom"
	internal let kDMPurchaseTimeBeltOfStrengthKey: String = "belt_of_strength"
	internal let kDMPurchaseTimeRingOfRegenKey: String = "ring_of_regen"
	internal let kDMPurchaseTimeCrimsonGuardKey: String = "crimson_guard"
	internal let kDMPurchaseTimeMedallionOfCourageKey: String = "medallion_of_courage"
	internal let kDMPurchaseTimeDemonEdgeKey: String = "demon_edge"
	internal let kDMPurchaseTimeUrnOfShadowsKey: String = "urn_of_shadows"
	internal let kDMPurchaseTimeOgreAxeKey: String = "ogre_axe"
	internal let kDMPurchaseTimeCircletKey: String = "circlet"
	internal let kDMPurchaseTimeBucklerKey: String = "buckler"
	internal let kDMPurchaseTimeTomeOfKnowledgeKey: String = "tome_of_knowledge"
	internal let kDMPurchaseTimeDustKey: String = "dust"
	internal let kDMPurchaseTimeUltimateScepterKey: String = "ultimate_scepter"
	internal let kDMPurchaseTimeVitalityBoosterKey: String = "vitality_booster"
	internal let kDMPurchaseTimeRingOfProtectionKey: String = "ring_of_protection"
	internal let kDMPurchaseTimePlatemailKey: String = "platemail"
	internal let kDMPurchaseTimeSangeAndYashaKey: String = "sange_and_yasha"
	internal let kDMPurchaseTimeHyperstoneKey: String = "hyperstone"
	internal let kDMPurchaseTimeAbyssalBladeKey: String = "abyssal_blade"
	internal let kDMPurchaseTimeBasherKey: String = "basher"
	internal let kDMPurchaseTimeWardSentryKey: String = "ward_sentry"
	internal let kDMPurchaseTimeHeaddressKey: String = "headdress"
	internal let kDMPurchaseTimeBootsKey: String = "boots"
	internal let kDMPurchaseTimeSangeKey: String = "sange"
	internal let kDMPurchaseTimeTpscrollKey: String = "tpscroll"
	internal let kDMPurchaseTimeBroadswordKey: String = "broadsword"
	internal let kDMPurchaseTimeQuellingBladeKey: String = "quelling_blade"
	internal let kDMPurchaseTimeOrbOfVenomKey: String = "orb_of_venom"
	internal let kDMPurchaseTimeGlovesKey: String = "gloves"
	internal let kDMPurchaseTimeHandOfMidasKey: String = "hand_of_midas"
	internal let kDMPurchaseTimeArmletKey: String = "armlet"
	internal let kDMPurchaseTimeMoonShardKey: String = "moon_shard"
	internal let kDMPurchaseTimeCourierKey: String = "courier"
	internal let kDMPurchaseTimeShadowAmuletKey: String = "shadow_amulet"
	internal let kDMPurchaseTimePowerTreadsKey: String = "power_treads"
	internal let kDMPurchaseTimePipeKey: String = "pipe"
	internal let kDMPurchaseTimeBootsOfElvesKey: String = "boots_of_elves"
	internal let kDMPurchaseTimeInvisSwordKey: String = "invis_sword"
	internal let kDMPurchaseTimeGauntletsKey: String = "gauntlets"
	internal let kDMPurchaseTimeTalismanOfEvasionKey: String = "talisman_of_evasion"
	internal let kDMPurchaseTimeHelmOfIronWillKey: String = "helm_of_iron_will"
	internal let kDMPurchaseTimeVoidStoneKey: String = "void_stone"
	internal let kDMPurchaseTimeSilverEdgeKey: String = "silver_edge"
	internal let kDMPurchaseTimeReaverKey: String = "reaver"
	internal let kDMPurchaseTimeRingOfHealthKey: String = "ring_of_health"
	internal let kDMPurchaseTimeHoodOfDefianceKey: String = "hood_of_defiance"
	internal let kDMPurchaseTimeMantaKey: String = "manta"
	internal let kDMPurchaseTimePointBoosterKey: String = "point_booster"
	internal let kDMPurchaseTimeVanguardKey: String = "vanguard"
	internal let kDMPurchaseTimeBladeOfAlacrityKey: String = "blade_of_alacrity"
	internal let kDMPurchaseTimeStaffOfWizardryKey: String = "staff_of_wizardry"
	internal let kDMPurchaseTimeInfusedRaindropKey: String = "infused_raindrop"
	internal let kDMPurchaseTimeWardObserverKey: String = "ward_observer"
	internal let kDMPurchaseTimeTravelBootsKey: String = "travel_boots"
	internal let kDMPurchaseTimeBlackKingBarKey: String = "black_king_bar"
	internal let kDMPurchaseTimePhaseBootsKey: String = "phase_boots"
	internal let kDMPurchaseTimeFaerieFireKey: String = "faerie_fire"
	internal let kDMPurchaseTimeVladmirKey: String = "vladmir"
	internal let kDMPurchaseTimeSobiMaskKey: String = "sobi_mask"
	internal let kDMPurchaseTimeWindLaceKey: String = "wind_lace"
	internal let kDMPurchaseTimeGreaterCritKey: String = "greater_crit"
	internal let kDMPurchaseTimeSolarCrestKey: String = "solar_crest"
	internal let kDMPurchaseTimeFlyingCourierKey: String = "flying_courier"
	internal let kDMPurchaseTimeMithrilHammerKey: String = "mithril_hammer"
	internal let kDMPurchaseTimeYashaKey: String = "yasha"
	internal let kDMPurchaseTimeWraithBandKey: String = "wraith_band"
	internal let kDMPurchaseTimeHeartKey: String = "heart"
	internal let kDMPurchaseTimeClarityKey: String = "clarity"
	internal let kDMPurchaseTimeBloodthornKey: String = "bloodthorn"
	internal let kDMPurchaseTimeTravelBoots2Key: String = "travel_boots_2"
	internal let kDMPurchaseTimeQuarterstaffKey: String = "quarterstaff"
	internal let kDMPurchaseTimeOblivionStaffKey: String = "oblivion_staff"
	internal let kDMPurchaseTimeMagicWandKey: String = "magic_wand"
	internal let kDMPurchaseTimeGlimmerCapeKey: String = "glimmer_cape"
	internal let kDMPurchaseTimeRingOfAquilaKey: String = "ring_of_aquila"
	internal let kDMPurchaseTimeSlippersKey: String = "slippers"
	internal let kDMPurchaseTimeLesserCritKey: String = "lesser_crit"
	internal let kDMPurchaseTimeJavelinKey: String = "javelin"
	internal let kDMPurchaseTimeHelmOfTheDominatorKey: String = "helm_of_the_dominator"
	internal let kDMPurchaseTimeCloakKey: String = "cloak"
	internal let kDMPurchaseTimeGemKey: String = "gem"
	internal let kDMPurchaseTimeBracerKey: String = "bracer"
	internal let kDMPurchaseTimeRobeKey: String = "robe"
	internal let kDMPurchaseTimeBottleKey: String = "bottle"
	internal let kDMPurchaseTimeChainmailKey: String = "chainmail"


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
		energyBooster = json[kDMPurchaseTimeEnergyBoosterKey].int
		tango = json[kDMPurchaseTimeTangoKey].int
		aetherLens = json[kDMPurchaseTimeAetherLensKey].int
		enchantedMango = json[kDMPurchaseTimeEnchantedMangoKey].int
		riverPainter5 = json[kDMPurchaseTimeRiverPainter5Key].int
		skadi = json[kDMPurchaseTimeSkadiKey].int
		bfury = json[kDMPurchaseTimeBfuryKey].int
		tranquilBoots = json[kDMPurchaseTimeTranquilBootsKey].int
		mjollnir = json[kDMPurchaseTimeMjollnirKey].int
		pers = json[kDMPurchaseTimePersKey].int
		claymore = json[kDMPurchaseTimeClaymoreKey].int
		lifesteal = json[kDMPurchaseTimeLifestealKey].int
		blightStone = json[kDMPurchaseTimeBlightStoneKey].int
		monkeyKingBar = json[kDMPurchaseTimeMonkeyKingBarKey].int
		ultimateOrb = json[kDMPurchaseTimeUltimateOrbKey].int
		flask = json[kDMPurchaseTimeFlaskKey].int
		desolator = json[kDMPurchaseTimeDesolatorKey].int
		stoutShield = json[kDMPurchaseTimeStoutShieldKey].int
		orchid = json[kDMPurchaseTimeOrchidKey].int
		ancientJanggo = json[kDMPurchaseTimeAncientJanggoKey].int
		magicStick = json[kDMPurchaseTimeMagicStickKey].int
		poorMansShield = json[kDMPurchaseTimePoorMansShieldKey].int
		assault = json[kDMPurchaseTimeAssaultKey].int
		branches = json[kDMPurchaseTimeBranchesKey].int
		bladesOfAttack = json[kDMPurchaseTimeBladesOfAttackKey].int
		ringOfBasilius = json[kDMPurchaseTimeRingOfBasiliusKey].int
		maelstrom = json[kDMPurchaseTimeMaelstromKey].int
		beltOfStrength = json[kDMPurchaseTimeBeltOfStrengthKey].int
		ringOfRegen = json[kDMPurchaseTimeRingOfRegenKey].int
		crimsonGuard = json[kDMPurchaseTimeCrimsonGuardKey].int
		medallionOfCourage = json[kDMPurchaseTimeMedallionOfCourageKey].int
		demonEdge = json[kDMPurchaseTimeDemonEdgeKey].int
		urnOfShadows = json[kDMPurchaseTimeUrnOfShadowsKey].int
		ogreAxe = json[kDMPurchaseTimeOgreAxeKey].int
		circlet = json[kDMPurchaseTimeCircletKey].int
		buckler = json[kDMPurchaseTimeBucklerKey].int
		tomeOfKnowledge = json[kDMPurchaseTimeTomeOfKnowledgeKey].int
		dust = json[kDMPurchaseTimeDustKey].int
		ultimateScepter = json[kDMPurchaseTimeUltimateScepterKey].int
		vitalityBooster = json[kDMPurchaseTimeVitalityBoosterKey].int
		ringOfProtection = json[kDMPurchaseTimeRingOfProtectionKey].int
		platemail = json[kDMPurchaseTimePlatemailKey].int
		sangeAndYasha = json[kDMPurchaseTimeSangeAndYashaKey].int
		hyperstone = json[kDMPurchaseTimeHyperstoneKey].int
		abyssalBlade = json[kDMPurchaseTimeAbyssalBladeKey].int
		basher = json[kDMPurchaseTimeBasherKey].int
		wardSentry = json[kDMPurchaseTimeWardSentryKey].int
		headdress = json[kDMPurchaseTimeHeaddressKey].int
		boots = json[kDMPurchaseTimeBootsKey].int
		sange = json[kDMPurchaseTimeSangeKey].int
		tpscroll = json[kDMPurchaseTimeTpscrollKey].int
		broadsword = json[kDMPurchaseTimeBroadswordKey].int
		quellingBlade = json[kDMPurchaseTimeQuellingBladeKey].int
		orbOfVenom = json[kDMPurchaseTimeOrbOfVenomKey].int
		gloves = json[kDMPurchaseTimeGlovesKey].int
		handOfMidas = json[kDMPurchaseTimeHandOfMidasKey].int
		armlet = json[kDMPurchaseTimeArmletKey].int
		moonShard = json[kDMPurchaseTimeMoonShardKey].int
		courier = json[kDMPurchaseTimeCourierKey].int
		shadowAmulet = json[kDMPurchaseTimeShadowAmuletKey].int
		powerTreads = json[kDMPurchaseTimePowerTreadsKey].int
		pipe = json[kDMPurchaseTimePipeKey].int
		bootsOfElves = json[kDMPurchaseTimeBootsOfElvesKey].int
		invisSword = json[kDMPurchaseTimeInvisSwordKey].int
		gauntlets = json[kDMPurchaseTimeGauntletsKey].int
		talismanOfEvasion = json[kDMPurchaseTimeTalismanOfEvasionKey].int
		helmOfIronWill = json[kDMPurchaseTimeHelmOfIronWillKey].int
		voidStone = json[kDMPurchaseTimeVoidStoneKey].int
		silverEdge = json[kDMPurchaseTimeSilverEdgeKey].int
		reaver = json[kDMPurchaseTimeReaverKey].int
		ringOfHealth = json[kDMPurchaseTimeRingOfHealthKey].int
		hoodOfDefiance = json[kDMPurchaseTimeHoodOfDefianceKey].int
		manta = json[kDMPurchaseTimeMantaKey].int
		pointBooster = json[kDMPurchaseTimePointBoosterKey].int
		vanguard = json[kDMPurchaseTimeVanguardKey].int
		bladeOfAlacrity = json[kDMPurchaseTimeBladeOfAlacrityKey].int
		staffOfWizardry = json[kDMPurchaseTimeStaffOfWizardryKey].int
		infusedRaindrop = json[kDMPurchaseTimeInfusedRaindropKey].int
		wardObserver = json[kDMPurchaseTimeWardObserverKey].int
		travelBoots = json[kDMPurchaseTimeTravelBootsKey].int
		blackKingBar = json[kDMPurchaseTimeBlackKingBarKey].int
		phaseBoots = json[kDMPurchaseTimePhaseBootsKey].int
		faerieFire = json[kDMPurchaseTimeFaerieFireKey].int
		vladmir = json[kDMPurchaseTimeVladmirKey].int
		sobiMask = json[kDMPurchaseTimeSobiMaskKey].int
		windLace = json[kDMPurchaseTimeWindLaceKey].int
		greaterCrit = json[kDMPurchaseTimeGreaterCritKey].int
		solarCrest = json[kDMPurchaseTimeSolarCrestKey].int
		flyingCourier = json[kDMPurchaseTimeFlyingCourierKey].int
		mithrilHammer = json[kDMPurchaseTimeMithrilHammerKey].int
		yasha = json[kDMPurchaseTimeYashaKey].int
		wraithBand = json[kDMPurchaseTimeWraithBandKey].int
		heart = json[kDMPurchaseTimeHeartKey].int
		clarity = json[kDMPurchaseTimeClarityKey].int
		bloodthorn = json[kDMPurchaseTimeBloodthornKey].int
		travelBoots2 = json[kDMPurchaseTimeTravelBoots2Key].int
		quarterstaff = json[kDMPurchaseTimeQuarterstaffKey].int
		oblivionStaff = json[kDMPurchaseTimeOblivionStaffKey].int
		magicWand = json[kDMPurchaseTimeMagicWandKey].int
		glimmerCape = json[kDMPurchaseTimeGlimmerCapeKey].int
		ringOfAquila = json[kDMPurchaseTimeRingOfAquilaKey].int
		slippers = json[kDMPurchaseTimeSlippersKey].int
		lesserCrit = json[kDMPurchaseTimeLesserCritKey].int
		javelin = json[kDMPurchaseTimeJavelinKey].int
		helmOfTheDominator = json[kDMPurchaseTimeHelmOfTheDominatorKey].int
		cloak = json[kDMPurchaseTimeCloakKey].int
		gem = json[kDMPurchaseTimeGemKey].int
		bracer = json[kDMPurchaseTimeBracerKey].int
		robe = json[kDMPurchaseTimeRobeKey].int
		bottle = json[kDMPurchaseTimeBottleKey].int
		chainmail = json[kDMPurchaseTimeChainmailKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if energyBooster != nil {
			dictionary.updateValue(energyBooster!, forKey: kDMPurchaseTimeEnergyBoosterKey)
		}
		if tango != nil {
			dictionary.updateValue(tango!, forKey: kDMPurchaseTimeTangoKey)
		}
		if aetherLens != nil {
			dictionary.updateValue(aetherLens!, forKey: kDMPurchaseTimeAetherLensKey)
		}
		if enchantedMango != nil {
			dictionary.updateValue(enchantedMango!, forKey: kDMPurchaseTimeEnchantedMangoKey)
		}
		if riverPainter5 != nil {
			dictionary.updateValue(riverPainter5!, forKey: kDMPurchaseTimeRiverPainter5Key)
		}
		if skadi != nil {
			dictionary.updateValue(skadi!, forKey: kDMPurchaseTimeSkadiKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury!, forKey: kDMPurchaseTimeBfuryKey)
		}
		if tranquilBoots != nil {
			dictionary.updateValue(tranquilBoots!, forKey: kDMPurchaseTimeTranquilBootsKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir!, forKey: kDMPurchaseTimeMjollnirKey)
		}
		if pers != nil {
			dictionary.updateValue(pers!, forKey: kDMPurchaseTimePersKey)
		}
		if claymore != nil {
			dictionary.updateValue(claymore!, forKey: kDMPurchaseTimeClaymoreKey)
		}
		if lifesteal != nil {
			dictionary.updateValue(lifesteal!, forKey: kDMPurchaseTimeLifestealKey)
		}
		if blightStone != nil {
			dictionary.updateValue(blightStone!, forKey: kDMPurchaseTimeBlightStoneKey)
		}
		if monkeyKingBar != nil {
			dictionary.updateValue(monkeyKingBar!, forKey: kDMPurchaseTimeMonkeyKingBarKey)
		}
		if ultimateOrb != nil {
			dictionary.updateValue(ultimateOrb!, forKey: kDMPurchaseTimeUltimateOrbKey)
		}
		if flask != nil {
			dictionary.updateValue(flask!, forKey: kDMPurchaseTimeFlaskKey)
		}
		if desolator != nil {
			dictionary.updateValue(desolator!, forKey: kDMPurchaseTimeDesolatorKey)
		}
		if stoutShield != nil {
			dictionary.updateValue(stoutShield!, forKey: kDMPurchaseTimeStoutShieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid!, forKey: kDMPurchaseTimeOrchidKey)
		}
		if ancientJanggo != nil {
			dictionary.updateValue(ancientJanggo!, forKey: kDMPurchaseTimeAncientJanggoKey)
		}
		if magicStick != nil {
			dictionary.updateValue(magicStick!, forKey: kDMPurchaseTimeMagicStickKey)
		}
		if poorMansShield != nil {
			dictionary.updateValue(poorMansShield!, forKey: kDMPurchaseTimePoorMansShieldKey)
		}
		if assault != nil {
			dictionary.updateValue(assault!, forKey: kDMPurchaseTimeAssaultKey)
		}
		if branches != nil {
			dictionary.updateValue(branches!, forKey: kDMPurchaseTimeBranchesKey)
		}
		if bladesOfAttack != nil {
			dictionary.updateValue(bladesOfAttack!, forKey: kDMPurchaseTimeBladesOfAttackKey)
		}
		if ringOfBasilius != nil {
			dictionary.updateValue(ringOfBasilius!, forKey: kDMPurchaseTimeRingOfBasiliusKey)
		}
		if maelstrom != nil {
			dictionary.updateValue(maelstrom!, forKey: kDMPurchaseTimeMaelstromKey)
		}
		if beltOfStrength != nil {
			dictionary.updateValue(beltOfStrength!, forKey: kDMPurchaseTimeBeltOfStrengthKey)
		}
		if ringOfRegen != nil {
			dictionary.updateValue(ringOfRegen!, forKey: kDMPurchaseTimeRingOfRegenKey)
		}
		if crimsonGuard != nil {
			dictionary.updateValue(crimsonGuard!, forKey: kDMPurchaseTimeCrimsonGuardKey)
		}
		if medallionOfCourage != nil {
			dictionary.updateValue(medallionOfCourage!, forKey: kDMPurchaseTimeMedallionOfCourageKey)
		}
		if demonEdge != nil {
			dictionary.updateValue(demonEdge!, forKey: kDMPurchaseTimeDemonEdgeKey)
		}
		if urnOfShadows != nil {
			dictionary.updateValue(urnOfShadows!, forKey: kDMPurchaseTimeUrnOfShadowsKey)
		}
		if ogreAxe != nil {
			dictionary.updateValue(ogreAxe!, forKey: kDMPurchaseTimeOgreAxeKey)
		}
		if circlet != nil {
			dictionary.updateValue(circlet!, forKey: kDMPurchaseTimeCircletKey)
		}
		if buckler != nil {
			dictionary.updateValue(buckler!, forKey: kDMPurchaseTimeBucklerKey)
		}
		if tomeOfKnowledge != nil {
			dictionary.updateValue(tomeOfKnowledge!, forKey: kDMPurchaseTimeTomeOfKnowledgeKey)
		}
		if dust != nil {
			dictionary.updateValue(dust!, forKey: kDMPurchaseTimeDustKey)
		}
		if ultimateScepter != nil {
			dictionary.updateValue(ultimateScepter!, forKey: kDMPurchaseTimeUltimateScepterKey)
		}
		if vitalityBooster != nil {
			dictionary.updateValue(vitalityBooster!, forKey: kDMPurchaseTimeVitalityBoosterKey)
		}
		if ringOfProtection != nil {
			dictionary.updateValue(ringOfProtection!, forKey: kDMPurchaseTimeRingOfProtectionKey)
		}
		if platemail != nil {
			dictionary.updateValue(platemail!, forKey: kDMPurchaseTimePlatemailKey)
		}
		if sangeAndYasha != nil {
			dictionary.updateValue(sangeAndYasha!, forKey: kDMPurchaseTimeSangeAndYashaKey)
		}
		if hyperstone != nil {
			dictionary.updateValue(hyperstone!, forKey: kDMPurchaseTimeHyperstoneKey)
		}
		if abyssalBlade != nil {
			dictionary.updateValue(abyssalBlade!, forKey: kDMPurchaseTimeAbyssalBladeKey)
		}
		if basher != nil {
			dictionary.updateValue(basher!, forKey: kDMPurchaseTimeBasherKey)
		}
		if wardSentry != nil {
			dictionary.updateValue(wardSentry!, forKey: kDMPurchaseTimeWardSentryKey)
		}
		if headdress != nil {
			dictionary.updateValue(headdress!, forKey: kDMPurchaseTimeHeaddressKey)
		}
		if boots != nil {
			dictionary.updateValue(boots!, forKey: kDMPurchaseTimeBootsKey)
		}
		if sange != nil {
			dictionary.updateValue(sange!, forKey: kDMPurchaseTimeSangeKey)
		}
		if tpscroll != nil {
			dictionary.updateValue(tpscroll!, forKey: kDMPurchaseTimeTpscrollKey)
		}
		if broadsword != nil {
			dictionary.updateValue(broadsword!, forKey: kDMPurchaseTimeBroadswordKey)
		}
		if quellingBlade != nil {
			dictionary.updateValue(quellingBlade!, forKey: kDMPurchaseTimeQuellingBladeKey)
		}
		if orbOfVenom != nil {
			dictionary.updateValue(orbOfVenom!, forKey: kDMPurchaseTimeOrbOfVenomKey)
		}
		if gloves != nil {
			dictionary.updateValue(gloves!, forKey: kDMPurchaseTimeGlovesKey)
		}
		if handOfMidas != nil {
			dictionary.updateValue(handOfMidas!, forKey: kDMPurchaseTimeHandOfMidasKey)
		}
		if armlet != nil {
			dictionary.updateValue(armlet!, forKey: kDMPurchaseTimeArmletKey)
		}
		if moonShard != nil {
			dictionary.updateValue(moonShard!, forKey: kDMPurchaseTimeMoonShardKey)
		}
		if courier != nil {
			dictionary.updateValue(courier!, forKey: kDMPurchaseTimeCourierKey)
		}
		if shadowAmulet != nil {
			dictionary.updateValue(shadowAmulet!, forKey: kDMPurchaseTimeShadowAmuletKey)
		}
		if powerTreads != nil {
			dictionary.updateValue(powerTreads!, forKey: kDMPurchaseTimePowerTreadsKey)
		}
		if pipe != nil {
			dictionary.updateValue(pipe!, forKey: kDMPurchaseTimePipeKey)
		}
		if bootsOfElves != nil {
			dictionary.updateValue(bootsOfElves!, forKey: kDMPurchaseTimeBootsOfElvesKey)
		}
		if invisSword != nil {
			dictionary.updateValue(invisSword!, forKey: kDMPurchaseTimeInvisSwordKey)
		}
		if gauntlets != nil {
			dictionary.updateValue(gauntlets!, forKey: kDMPurchaseTimeGauntletsKey)
		}
		if talismanOfEvasion != nil {
			dictionary.updateValue(talismanOfEvasion!, forKey: kDMPurchaseTimeTalismanOfEvasionKey)
		}
		if helmOfIronWill != nil {
			dictionary.updateValue(helmOfIronWill!, forKey: kDMPurchaseTimeHelmOfIronWillKey)
		}
		if voidStone != nil {
			dictionary.updateValue(voidStone!, forKey: kDMPurchaseTimeVoidStoneKey)
		}
		if silverEdge != nil {
			dictionary.updateValue(silverEdge!, forKey: kDMPurchaseTimeSilverEdgeKey)
		}
		if reaver != nil {
			dictionary.updateValue(reaver!, forKey: kDMPurchaseTimeReaverKey)
		}
		if ringOfHealth != nil {
			dictionary.updateValue(ringOfHealth!, forKey: kDMPurchaseTimeRingOfHealthKey)
		}
		if hoodOfDefiance != nil {
			dictionary.updateValue(hoodOfDefiance!, forKey: kDMPurchaseTimeHoodOfDefianceKey)
		}
		if manta != nil {
			dictionary.updateValue(manta!, forKey: kDMPurchaseTimeMantaKey)
		}
		if pointBooster != nil {
			dictionary.updateValue(pointBooster!, forKey: kDMPurchaseTimePointBoosterKey)
		}
		if vanguard != nil {
			dictionary.updateValue(vanguard!, forKey: kDMPurchaseTimeVanguardKey)
		}
		if bladeOfAlacrity != nil {
			dictionary.updateValue(bladeOfAlacrity!, forKey: kDMPurchaseTimeBladeOfAlacrityKey)
		}
		if staffOfWizardry != nil {
			dictionary.updateValue(staffOfWizardry!, forKey: kDMPurchaseTimeStaffOfWizardryKey)
		}
		if infusedRaindrop != nil {
			dictionary.updateValue(infusedRaindrop!, forKey: kDMPurchaseTimeInfusedRaindropKey)
		}
		if wardObserver != nil {
			dictionary.updateValue(wardObserver!, forKey: kDMPurchaseTimeWardObserverKey)
		}
		if travelBoots != nil {
			dictionary.updateValue(travelBoots!, forKey: kDMPurchaseTimeTravelBootsKey)
		}
		if blackKingBar != nil {
			dictionary.updateValue(blackKingBar!, forKey: kDMPurchaseTimeBlackKingBarKey)
		}
		if phaseBoots != nil {
			dictionary.updateValue(phaseBoots!, forKey: kDMPurchaseTimePhaseBootsKey)
		}
		if faerieFire != nil {
			dictionary.updateValue(faerieFire!, forKey: kDMPurchaseTimeFaerieFireKey)
		}
		if vladmir != nil {
			dictionary.updateValue(vladmir!, forKey: kDMPurchaseTimeVladmirKey)
		}
		if sobiMask != nil {
			dictionary.updateValue(sobiMask!, forKey: kDMPurchaseTimeSobiMaskKey)
		}
		if windLace != nil {
			dictionary.updateValue(windLace!, forKey: kDMPurchaseTimeWindLaceKey)
		}
		if greaterCrit != nil {
			dictionary.updateValue(greaterCrit!, forKey: kDMPurchaseTimeGreaterCritKey)
		}
		if solarCrest != nil {
			dictionary.updateValue(solarCrest!, forKey: kDMPurchaseTimeSolarCrestKey)
		}
		if flyingCourier != nil {
			dictionary.updateValue(flyingCourier!, forKey: kDMPurchaseTimeFlyingCourierKey)
		}
		if mithrilHammer != nil {
			dictionary.updateValue(mithrilHammer!, forKey: kDMPurchaseTimeMithrilHammerKey)
		}
		if yasha != nil {
			dictionary.updateValue(yasha!, forKey: kDMPurchaseTimeYashaKey)
		}
		if wraithBand != nil {
			dictionary.updateValue(wraithBand!, forKey: kDMPurchaseTimeWraithBandKey)
		}
		if heart != nil {
			dictionary.updateValue(heart!, forKey: kDMPurchaseTimeHeartKey)
		}
		if clarity != nil {
			dictionary.updateValue(clarity!, forKey: kDMPurchaseTimeClarityKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn!, forKey: kDMPurchaseTimeBloodthornKey)
		}
		if travelBoots2 != nil {
			dictionary.updateValue(travelBoots2!, forKey: kDMPurchaseTimeTravelBoots2Key)
		}
		if quarterstaff != nil {
			dictionary.updateValue(quarterstaff!, forKey: kDMPurchaseTimeQuarterstaffKey)
		}
		if oblivionStaff != nil {
			dictionary.updateValue(oblivionStaff!, forKey: kDMPurchaseTimeOblivionStaffKey)
		}
		if magicWand != nil {
			dictionary.updateValue(magicWand!, forKey: kDMPurchaseTimeMagicWandKey)
		}
		if glimmerCape != nil {
			dictionary.updateValue(glimmerCape!, forKey: kDMPurchaseTimeGlimmerCapeKey)
		}
		if ringOfAquila != nil {
			dictionary.updateValue(ringOfAquila!, forKey: kDMPurchaseTimeRingOfAquilaKey)
		}
		if slippers != nil {
			dictionary.updateValue(slippers!, forKey: kDMPurchaseTimeSlippersKey)
		}
		if lesserCrit != nil {
			dictionary.updateValue(lesserCrit!, forKey: kDMPurchaseTimeLesserCritKey)
		}
		if javelin != nil {
			dictionary.updateValue(javelin!, forKey: kDMPurchaseTimeJavelinKey)
		}
		if helmOfTheDominator != nil {
			dictionary.updateValue(helmOfTheDominator!, forKey: kDMPurchaseTimeHelmOfTheDominatorKey)
		}
		if cloak != nil {
			dictionary.updateValue(cloak!, forKey: kDMPurchaseTimeCloakKey)
		}
		if gem != nil {
			dictionary.updateValue(gem!, forKey: kDMPurchaseTimeGemKey)
		}
		if bracer != nil {
			dictionary.updateValue(bracer!, forKey: kDMPurchaseTimeBracerKey)
		}
		if robe != nil {
			dictionary.updateValue(robe!, forKey: kDMPurchaseTimeRobeKey)
		}
		if bottle != nil {
			dictionary.updateValue(bottle!, forKey: kDMPurchaseTimeBottleKey)
		}
		if chainmail != nil {
			dictionary.updateValue(chainmail!, forKey: kDMPurchaseTimeChainmailKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.energyBooster = aDecoder.decodeObjectForKey(kDMPurchaseTimeEnergyBoosterKey) as? Int
		self.tango = aDecoder.decodeObjectForKey(kDMPurchaseTimeTangoKey) as? Int
		self.aetherLens = aDecoder.decodeObjectForKey(kDMPurchaseTimeAetherLensKey) as? Int
		self.enchantedMango = aDecoder.decodeObjectForKey(kDMPurchaseTimeEnchantedMangoKey) as? Int
		self.riverPainter5 = aDecoder.decodeObjectForKey(kDMPurchaseTimeRiverPainter5Key) as? Int
		self.skadi = aDecoder.decodeObjectForKey(kDMPurchaseTimeSkadiKey) as? Int
		self.bfury = aDecoder.decodeObjectForKey(kDMPurchaseTimeBfuryKey) as? Int
		self.tranquilBoots = aDecoder.decodeObjectForKey(kDMPurchaseTimeTranquilBootsKey) as? Int
		self.mjollnir = aDecoder.decodeObjectForKey(kDMPurchaseTimeMjollnirKey) as? Int
		self.pers = aDecoder.decodeObjectForKey(kDMPurchaseTimePersKey) as? Int
		self.claymore = aDecoder.decodeObjectForKey(kDMPurchaseTimeClaymoreKey) as? Int
		self.lifesteal = aDecoder.decodeObjectForKey(kDMPurchaseTimeLifestealKey) as? Int
		self.blightStone = aDecoder.decodeObjectForKey(kDMPurchaseTimeBlightStoneKey) as? Int
		self.monkeyKingBar = aDecoder.decodeObjectForKey(kDMPurchaseTimeMonkeyKingBarKey) as? Int
		self.ultimateOrb = aDecoder.decodeObjectForKey(kDMPurchaseTimeUltimateOrbKey) as? Int
		self.flask = aDecoder.decodeObjectForKey(kDMPurchaseTimeFlaskKey) as? Int
		self.desolator = aDecoder.decodeObjectForKey(kDMPurchaseTimeDesolatorKey) as? Int
		self.stoutShield = aDecoder.decodeObjectForKey(kDMPurchaseTimeStoutShieldKey) as? Int
		self.orchid = aDecoder.decodeObjectForKey(kDMPurchaseTimeOrchidKey) as? Int
		self.ancientJanggo = aDecoder.decodeObjectForKey(kDMPurchaseTimeAncientJanggoKey) as? Int
		self.magicStick = aDecoder.decodeObjectForKey(kDMPurchaseTimeMagicStickKey) as? Int
		self.poorMansShield = aDecoder.decodeObjectForKey(kDMPurchaseTimePoorMansShieldKey) as? Int
		self.assault = aDecoder.decodeObjectForKey(kDMPurchaseTimeAssaultKey) as? Int
		self.branches = aDecoder.decodeObjectForKey(kDMPurchaseTimeBranchesKey) as? Int
		self.bladesOfAttack = aDecoder.decodeObjectForKey(kDMPurchaseTimeBladesOfAttackKey) as? Int
		self.ringOfBasilius = aDecoder.decodeObjectForKey(kDMPurchaseTimeRingOfBasiliusKey) as? Int
		self.maelstrom = aDecoder.decodeObjectForKey(kDMPurchaseTimeMaelstromKey) as? Int
		self.beltOfStrength = aDecoder.decodeObjectForKey(kDMPurchaseTimeBeltOfStrengthKey) as? Int
		self.ringOfRegen = aDecoder.decodeObjectForKey(kDMPurchaseTimeRingOfRegenKey) as? Int
		self.crimsonGuard = aDecoder.decodeObjectForKey(kDMPurchaseTimeCrimsonGuardKey) as? Int
		self.medallionOfCourage = aDecoder.decodeObjectForKey(kDMPurchaseTimeMedallionOfCourageKey) as? Int
		self.demonEdge = aDecoder.decodeObjectForKey(kDMPurchaseTimeDemonEdgeKey) as? Int
		self.urnOfShadows = aDecoder.decodeObjectForKey(kDMPurchaseTimeUrnOfShadowsKey) as? Int
		self.ogreAxe = aDecoder.decodeObjectForKey(kDMPurchaseTimeOgreAxeKey) as? Int
		self.circlet = aDecoder.decodeObjectForKey(kDMPurchaseTimeCircletKey) as? Int
		self.buckler = aDecoder.decodeObjectForKey(kDMPurchaseTimeBucklerKey) as? Int
		self.tomeOfKnowledge = aDecoder.decodeObjectForKey(kDMPurchaseTimeTomeOfKnowledgeKey) as? Int
		self.dust = aDecoder.decodeObjectForKey(kDMPurchaseTimeDustKey) as? Int
		self.ultimateScepter = aDecoder.decodeObjectForKey(kDMPurchaseTimeUltimateScepterKey) as? Int
		self.vitalityBooster = aDecoder.decodeObjectForKey(kDMPurchaseTimeVitalityBoosterKey) as? Int
		self.ringOfProtection = aDecoder.decodeObjectForKey(kDMPurchaseTimeRingOfProtectionKey) as? Int
		self.platemail = aDecoder.decodeObjectForKey(kDMPurchaseTimePlatemailKey) as? Int
		self.sangeAndYasha = aDecoder.decodeObjectForKey(kDMPurchaseTimeSangeAndYashaKey) as? Int
		self.hyperstone = aDecoder.decodeObjectForKey(kDMPurchaseTimeHyperstoneKey) as? Int
		self.abyssalBlade = aDecoder.decodeObjectForKey(kDMPurchaseTimeAbyssalBladeKey) as? Int
		self.basher = aDecoder.decodeObjectForKey(kDMPurchaseTimeBasherKey) as? Int
		self.wardSentry = aDecoder.decodeObjectForKey(kDMPurchaseTimeWardSentryKey) as? Int
		self.headdress = aDecoder.decodeObjectForKey(kDMPurchaseTimeHeaddressKey) as? Int
		self.boots = aDecoder.decodeObjectForKey(kDMPurchaseTimeBootsKey) as? Int
		self.sange = aDecoder.decodeObjectForKey(kDMPurchaseTimeSangeKey) as? Int
		self.tpscroll = aDecoder.decodeObjectForKey(kDMPurchaseTimeTpscrollKey) as? Int
		self.broadsword = aDecoder.decodeObjectForKey(kDMPurchaseTimeBroadswordKey) as? Int
		self.quellingBlade = aDecoder.decodeObjectForKey(kDMPurchaseTimeQuellingBladeKey) as? Int
		self.orbOfVenom = aDecoder.decodeObjectForKey(kDMPurchaseTimeOrbOfVenomKey) as? Int
		self.gloves = aDecoder.decodeObjectForKey(kDMPurchaseTimeGlovesKey) as? Int
		self.handOfMidas = aDecoder.decodeObjectForKey(kDMPurchaseTimeHandOfMidasKey) as? Int
		self.armlet = aDecoder.decodeObjectForKey(kDMPurchaseTimeArmletKey) as? Int
		self.moonShard = aDecoder.decodeObjectForKey(kDMPurchaseTimeMoonShardKey) as? Int
		self.courier = aDecoder.decodeObjectForKey(kDMPurchaseTimeCourierKey) as? Int
		self.shadowAmulet = aDecoder.decodeObjectForKey(kDMPurchaseTimeShadowAmuletKey) as? Int
		self.powerTreads = aDecoder.decodeObjectForKey(kDMPurchaseTimePowerTreadsKey) as? Int
		self.pipe = aDecoder.decodeObjectForKey(kDMPurchaseTimePipeKey) as? Int
		self.bootsOfElves = aDecoder.decodeObjectForKey(kDMPurchaseTimeBootsOfElvesKey) as? Int
		self.invisSword = aDecoder.decodeObjectForKey(kDMPurchaseTimeInvisSwordKey) as? Int
		self.gauntlets = aDecoder.decodeObjectForKey(kDMPurchaseTimeGauntletsKey) as? Int
		self.talismanOfEvasion = aDecoder.decodeObjectForKey(kDMPurchaseTimeTalismanOfEvasionKey) as? Int
		self.helmOfIronWill = aDecoder.decodeObjectForKey(kDMPurchaseTimeHelmOfIronWillKey) as? Int
		self.voidStone = aDecoder.decodeObjectForKey(kDMPurchaseTimeVoidStoneKey) as? Int
		self.silverEdge = aDecoder.decodeObjectForKey(kDMPurchaseTimeSilverEdgeKey) as? Int
		self.reaver = aDecoder.decodeObjectForKey(kDMPurchaseTimeReaverKey) as? Int
		self.ringOfHealth = aDecoder.decodeObjectForKey(kDMPurchaseTimeRingOfHealthKey) as? Int
		self.hoodOfDefiance = aDecoder.decodeObjectForKey(kDMPurchaseTimeHoodOfDefianceKey) as? Int
		self.manta = aDecoder.decodeObjectForKey(kDMPurchaseTimeMantaKey) as? Int
		self.pointBooster = aDecoder.decodeObjectForKey(kDMPurchaseTimePointBoosterKey) as? Int
		self.vanguard = aDecoder.decodeObjectForKey(kDMPurchaseTimeVanguardKey) as? Int
		self.bladeOfAlacrity = aDecoder.decodeObjectForKey(kDMPurchaseTimeBladeOfAlacrityKey) as? Int
		self.staffOfWizardry = aDecoder.decodeObjectForKey(kDMPurchaseTimeStaffOfWizardryKey) as? Int
		self.infusedRaindrop = aDecoder.decodeObjectForKey(kDMPurchaseTimeInfusedRaindropKey) as? Int
		self.wardObserver = aDecoder.decodeObjectForKey(kDMPurchaseTimeWardObserverKey) as? Int
		self.travelBoots = aDecoder.decodeObjectForKey(kDMPurchaseTimeTravelBootsKey) as? Int
		self.blackKingBar = aDecoder.decodeObjectForKey(kDMPurchaseTimeBlackKingBarKey) as? Int
		self.phaseBoots = aDecoder.decodeObjectForKey(kDMPurchaseTimePhaseBootsKey) as? Int
		self.faerieFire = aDecoder.decodeObjectForKey(kDMPurchaseTimeFaerieFireKey) as? Int
		self.vladmir = aDecoder.decodeObjectForKey(kDMPurchaseTimeVladmirKey) as? Int
		self.sobiMask = aDecoder.decodeObjectForKey(kDMPurchaseTimeSobiMaskKey) as? Int
		self.windLace = aDecoder.decodeObjectForKey(kDMPurchaseTimeWindLaceKey) as? Int
		self.greaterCrit = aDecoder.decodeObjectForKey(kDMPurchaseTimeGreaterCritKey) as? Int
		self.solarCrest = aDecoder.decodeObjectForKey(kDMPurchaseTimeSolarCrestKey) as? Int
		self.flyingCourier = aDecoder.decodeObjectForKey(kDMPurchaseTimeFlyingCourierKey) as? Int
		self.mithrilHammer = aDecoder.decodeObjectForKey(kDMPurchaseTimeMithrilHammerKey) as? Int
		self.yasha = aDecoder.decodeObjectForKey(kDMPurchaseTimeYashaKey) as? Int
		self.wraithBand = aDecoder.decodeObjectForKey(kDMPurchaseTimeWraithBandKey) as? Int
		self.heart = aDecoder.decodeObjectForKey(kDMPurchaseTimeHeartKey) as? Int
		self.clarity = aDecoder.decodeObjectForKey(kDMPurchaseTimeClarityKey) as? Int
		self.bloodthorn = aDecoder.decodeObjectForKey(kDMPurchaseTimeBloodthornKey) as? Int
		self.travelBoots2 = aDecoder.decodeObjectForKey(kDMPurchaseTimeTravelBoots2Key) as? Int
		self.quarterstaff = aDecoder.decodeObjectForKey(kDMPurchaseTimeQuarterstaffKey) as? Int
		self.oblivionStaff = aDecoder.decodeObjectForKey(kDMPurchaseTimeOblivionStaffKey) as? Int
		self.magicWand = aDecoder.decodeObjectForKey(kDMPurchaseTimeMagicWandKey) as? Int
		self.glimmerCape = aDecoder.decodeObjectForKey(kDMPurchaseTimeGlimmerCapeKey) as? Int
		self.ringOfAquila = aDecoder.decodeObjectForKey(kDMPurchaseTimeRingOfAquilaKey) as? Int
		self.slippers = aDecoder.decodeObjectForKey(kDMPurchaseTimeSlippersKey) as? Int
		self.lesserCrit = aDecoder.decodeObjectForKey(kDMPurchaseTimeLesserCritKey) as? Int
		self.javelin = aDecoder.decodeObjectForKey(kDMPurchaseTimeJavelinKey) as? Int
		self.helmOfTheDominator = aDecoder.decodeObjectForKey(kDMPurchaseTimeHelmOfTheDominatorKey) as? Int
		self.cloak = aDecoder.decodeObjectForKey(kDMPurchaseTimeCloakKey) as? Int
		self.gem = aDecoder.decodeObjectForKey(kDMPurchaseTimeGemKey) as? Int
		self.bracer = aDecoder.decodeObjectForKey(kDMPurchaseTimeBracerKey) as? Int
		self.robe = aDecoder.decodeObjectForKey(kDMPurchaseTimeRobeKey) as? Int
		self.bottle = aDecoder.decodeObjectForKey(kDMPurchaseTimeBottleKey) as? Int
		self.chainmail = aDecoder.decodeObjectForKey(kDMPurchaseTimeChainmailKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(energyBooster, forKey: kDMPurchaseTimeEnergyBoosterKey)
		aCoder.encodeObject(tango, forKey: kDMPurchaseTimeTangoKey)
		aCoder.encodeObject(aetherLens, forKey: kDMPurchaseTimeAetherLensKey)
		aCoder.encodeObject(enchantedMango, forKey: kDMPurchaseTimeEnchantedMangoKey)
		aCoder.encodeObject(riverPainter5, forKey: kDMPurchaseTimeRiverPainter5Key)
		aCoder.encodeObject(skadi, forKey: kDMPurchaseTimeSkadiKey)
		aCoder.encodeObject(bfury, forKey: kDMPurchaseTimeBfuryKey)
		aCoder.encodeObject(tranquilBoots, forKey: kDMPurchaseTimeTranquilBootsKey)
		aCoder.encodeObject(mjollnir, forKey: kDMPurchaseTimeMjollnirKey)
		aCoder.encodeObject(pers, forKey: kDMPurchaseTimePersKey)
		aCoder.encodeObject(claymore, forKey: kDMPurchaseTimeClaymoreKey)
		aCoder.encodeObject(lifesteal, forKey: kDMPurchaseTimeLifestealKey)
		aCoder.encodeObject(blightStone, forKey: kDMPurchaseTimeBlightStoneKey)
		aCoder.encodeObject(monkeyKingBar, forKey: kDMPurchaseTimeMonkeyKingBarKey)
		aCoder.encodeObject(ultimateOrb, forKey: kDMPurchaseTimeUltimateOrbKey)
		aCoder.encodeObject(flask, forKey: kDMPurchaseTimeFlaskKey)
		aCoder.encodeObject(desolator, forKey: kDMPurchaseTimeDesolatorKey)
		aCoder.encodeObject(stoutShield, forKey: kDMPurchaseTimeStoutShieldKey)
		aCoder.encodeObject(orchid, forKey: kDMPurchaseTimeOrchidKey)
		aCoder.encodeObject(ancientJanggo, forKey: kDMPurchaseTimeAncientJanggoKey)
		aCoder.encodeObject(magicStick, forKey: kDMPurchaseTimeMagicStickKey)
		aCoder.encodeObject(poorMansShield, forKey: kDMPurchaseTimePoorMansShieldKey)
		aCoder.encodeObject(assault, forKey: kDMPurchaseTimeAssaultKey)
		aCoder.encodeObject(branches, forKey: kDMPurchaseTimeBranchesKey)
		aCoder.encodeObject(bladesOfAttack, forKey: kDMPurchaseTimeBladesOfAttackKey)
		aCoder.encodeObject(ringOfBasilius, forKey: kDMPurchaseTimeRingOfBasiliusKey)
		aCoder.encodeObject(maelstrom, forKey: kDMPurchaseTimeMaelstromKey)
		aCoder.encodeObject(beltOfStrength, forKey: kDMPurchaseTimeBeltOfStrengthKey)
		aCoder.encodeObject(ringOfRegen, forKey: kDMPurchaseTimeRingOfRegenKey)
		aCoder.encodeObject(crimsonGuard, forKey: kDMPurchaseTimeCrimsonGuardKey)
		aCoder.encodeObject(medallionOfCourage, forKey: kDMPurchaseTimeMedallionOfCourageKey)
		aCoder.encodeObject(demonEdge, forKey: kDMPurchaseTimeDemonEdgeKey)
		aCoder.encodeObject(urnOfShadows, forKey: kDMPurchaseTimeUrnOfShadowsKey)
		aCoder.encodeObject(ogreAxe, forKey: kDMPurchaseTimeOgreAxeKey)
		aCoder.encodeObject(circlet, forKey: kDMPurchaseTimeCircletKey)
		aCoder.encodeObject(buckler, forKey: kDMPurchaseTimeBucklerKey)
		aCoder.encodeObject(tomeOfKnowledge, forKey: kDMPurchaseTimeTomeOfKnowledgeKey)
		aCoder.encodeObject(dust, forKey: kDMPurchaseTimeDustKey)
		aCoder.encodeObject(ultimateScepter, forKey: kDMPurchaseTimeUltimateScepterKey)
		aCoder.encodeObject(vitalityBooster, forKey: kDMPurchaseTimeVitalityBoosterKey)
		aCoder.encodeObject(ringOfProtection, forKey: kDMPurchaseTimeRingOfProtectionKey)
		aCoder.encodeObject(platemail, forKey: kDMPurchaseTimePlatemailKey)
		aCoder.encodeObject(sangeAndYasha, forKey: kDMPurchaseTimeSangeAndYashaKey)
		aCoder.encodeObject(hyperstone, forKey: kDMPurchaseTimeHyperstoneKey)
		aCoder.encodeObject(abyssalBlade, forKey: kDMPurchaseTimeAbyssalBladeKey)
		aCoder.encodeObject(basher, forKey: kDMPurchaseTimeBasherKey)
		aCoder.encodeObject(wardSentry, forKey: kDMPurchaseTimeWardSentryKey)
		aCoder.encodeObject(headdress, forKey: kDMPurchaseTimeHeaddressKey)
		aCoder.encodeObject(boots, forKey: kDMPurchaseTimeBootsKey)
		aCoder.encodeObject(sange, forKey: kDMPurchaseTimeSangeKey)
		aCoder.encodeObject(tpscroll, forKey: kDMPurchaseTimeTpscrollKey)
		aCoder.encodeObject(broadsword, forKey: kDMPurchaseTimeBroadswordKey)
		aCoder.encodeObject(quellingBlade, forKey: kDMPurchaseTimeQuellingBladeKey)
		aCoder.encodeObject(orbOfVenom, forKey: kDMPurchaseTimeOrbOfVenomKey)
		aCoder.encodeObject(gloves, forKey: kDMPurchaseTimeGlovesKey)
		aCoder.encodeObject(handOfMidas, forKey: kDMPurchaseTimeHandOfMidasKey)
		aCoder.encodeObject(armlet, forKey: kDMPurchaseTimeArmletKey)
		aCoder.encodeObject(moonShard, forKey: kDMPurchaseTimeMoonShardKey)
		aCoder.encodeObject(courier, forKey: kDMPurchaseTimeCourierKey)
		aCoder.encodeObject(shadowAmulet, forKey: kDMPurchaseTimeShadowAmuletKey)
		aCoder.encodeObject(powerTreads, forKey: kDMPurchaseTimePowerTreadsKey)
		aCoder.encodeObject(pipe, forKey: kDMPurchaseTimePipeKey)
		aCoder.encodeObject(bootsOfElves, forKey: kDMPurchaseTimeBootsOfElvesKey)
		aCoder.encodeObject(invisSword, forKey: kDMPurchaseTimeInvisSwordKey)
		aCoder.encodeObject(gauntlets, forKey: kDMPurchaseTimeGauntletsKey)
		aCoder.encodeObject(talismanOfEvasion, forKey: kDMPurchaseTimeTalismanOfEvasionKey)
		aCoder.encodeObject(helmOfIronWill, forKey: kDMPurchaseTimeHelmOfIronWillKey)
		aCoder.encodeObject(voidStone, forKey: kDMPurchaseTimeVoidStoneKey)
		aCoder.encodeObject(silverEdge, forKey: kDMPurchaseTimeSilverEdgeKey)
		aCoder.encodeObject(reaver, forKey: kDMPurchaseTimeReaverKey)
		aCoder.encodeObject(ringOfHealth, forKey: kDMPurchaseTimeRingOfHealthKey)
		aCoder.encodeObject(hoodOfDefiance, forKey: kDMPurchaseTimeHoodOfDefianceKey)
		aCoder.encodeObject(manta, forKey: kDMPurchaseTimeMantaKey)
		aCoder.encodeObject(pointBooster, forKey: kDMPurchaseTimePointBoosterKey)
		aCoder.encodeObject(vanguard, forKey: kDMPurchaseTimeVanguardKey)
		aCoder.encodeObject(bladeOfAlacrity, forKey: kDMPurchaseTimeBladeOfAlacrityKey)
		aCoder.encodeObject(staffOfWizardry, forKey: kDMPurchaseTimeStaffOfWizardryKey)
		aCoder.encodeObject(infusedRaindrop, forKey: kDMPurchaseTimeInfusedRaindropKey)
		aCoder.encodeObject(wardObserver, forKey: kDMPurchaseTimeWardObserverKey)
		aCoder.encodeObject(travelBoots, forKey: kDMPurchaseTimeTravelBootsKey)
		aCoder.encodeObject(blackKingBar, forKey: kDMPurchaseTimeBlackKingBarKey)
		aCoder.encodeObject(phaseBoots, forKey: kDMPurchaseTimePhaseBootsKey)
		aCoder.encodeObject(faerieFire, forKey: kDMPurchaseTimeFaerieFireKey)
		aCoder.encodeObject(vladmir, forKey: kDMPurchaseTimeVladmirKey)
		aCoder.encodeObject(sobiMask, forKey: kDMPurchaseTimeSobiMaskKey)
		aCoder.encodeObject(windLace, forKey: kDMPurchaseTimeWindLaceKey)
		aCoder.encodeObject(greaterCrit, forKey: kDMPurchaseTimeGreaterCritKey)
		aCoder.encodeObject(solarCrest, forKey: kDMPurchaseTimeSolarCrestKey)
		aCoder.encodeObject(flyingCourier, forKey: kDMPurchaseTimeFlyingCourierKey)
		aCoder.encodeObject(mithrilHammer, forKey: kDMPurchaseTimeMithrilHammerKey)
		aCoder.encodeObject(yasha, forKey: kDMPurchaseTimeYashaKey)
		aCoder.encodeObject(wraithBand, forKey: kDMPurchaseTimeWraithBandKey)
		aCoder.encodeObject(heart, forKey: kDMPurchaseTimeHeartKey)
		aCoder.encodeObject(clarity, forKey: kDMPurchaseTimeClarityKey)
		aCoder.encodeObject(bloodthorn, forKey: kDMPurchaseTimeBloodthornKey)
		aCoder.encodeObject(travelBoots2, forKey: kDMPurchaseTimeTravelBoots2Key)
		aCoder.encodeObject(quarterstaff, forKey: kDMPurchaseTimeQuarterstaffKey)
		aCoder.encodeObject(oblivionStaff, forKey: kDMPurchaseTimeOblivionStaffKey)
		aCoder.encodeObject(magicWand, forKey: kDMPurchaseTimeMagicWandKey)
		aCoder.encodeObject(glimmerCape, forKey: kDMPurchaseTimeGlimmerCapeKey)
		aCoder.encodeObject(ringOfAquila, forKey: kDMPurchaseTimeRingOfAquilaKey)
		aCoder.encodeObject(slippers, forKey: kDMPurchaseTimeSlippersKey)
		aCoder.encodeObject(lesserCrit, forKey: kDMPurchaseTimeLesserCritKey)
		aCoder.encodeObject(javelin, forKey: kDMPurchaseTimeJavelinKey)
		aCoder.encodeObject(helmOfTheDominator, forKey: kDMPurchaseTimeHelmOfTheDominatorKey)
		aCoder.encodeObject(cloak, forKey: kDMPurchaseTimeCloakKey)
		aCoder.encodeObject(gem, forKey: kDMPurchaseTimeGemKey)
		aCoder.encodeObject(bracer, forKey: kDMPurchaseTimeBracerKey)
		aCoder.encodeObject(robe, forKey: kDMPurchaseTimeRobeKey)
		aCoder.encodeObject(bottle, forKey: kDMPurchaseTimeBottleKey)
		aCoder.encodeObject(chainmail, forKey: kDMPurchaseTimeChainmailKey)

    }

}
