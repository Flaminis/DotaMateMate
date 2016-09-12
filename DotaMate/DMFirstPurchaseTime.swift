//
//  DMFirstPurchaseTime.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMFirstPurchaseTime: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMFirstPurchaseTimeEnergyBoosterKey: String = "energy_booster"
	internal let kDMFirstPurchaseTimeTangoKey: String = "tango"
	internal let kDMFirstPurchaseTimeAetherLensKey: String = "aether_lens"
	internal let kDMFirstPurchaseTimeEnchantedMangoKey: String = "enchanted_mango"
	internal let kDMFirstPurchaseTimeRiverPainter5Key: String = "river_painter5"
	internal let kDMFirstPurchaseTimeSkadiKey: String = "skadi"
	internal let kDMFirstPurchaseTimeBfuryKey: String = "bfury"
	internal let kDMFirstPurchaseTimeTranquilBootsKey: String = "tranquil_boots"
	internal let kDMFirstPurchaseTimeMjollnirKey: String = "mjollnir"
	internal let kDMFirstPurchaseTimePersKey: String = "pers"
	internal let kDMFirstPurchaseTimeClaymoreKey: String = "claymore"
	internal let kDMFirstPurchaseTimeLifestealKey: String = "lifesteal"
	internal let kDMFirstPurchaseTimeBlightStoneKey: String = "blight_stone"
	internal let kDMFirstPurchaseTimeMonkeyKingBarKey: String = "monkey_king_bar"
	internal let kDMFirstPurchaseTimeUltimateOrbKey: String = "ultimate_orb"
	internal let kDMFirstPurchaseTimeFlaskKey: String = "flask"
	internal let kDMFirstPurchaseTimeDesolatorKey: String = "desolator"
	internal let kDMFirstPurchaseTimeStoutShieldKey: String = "stout_shield"
	internal let kDMFirstPurchaseTimeOrchidKey: String = "orchid"
	internal let kDMFirstPurchaseTimeAncientJanggoKey: String = "ancient_janggo"
	internal let kDMFirstPurchaseTimeMagicStickKey: String = "magic_stick"
	internal let kDMFirstPurchaseTimePoorMansShieldKey: String = "poor_mans_shield"
	internal let kDMFirstPurchaseTimeAssaultKey: String = "assault"
	internal let kDMFirstPurchaseTimeBranchesKey: String = "branches"
	internal let kDMFirstPurchaseTimeBladesOfAttackKey: String = "blades_of_attack"
	internal let kDMFirstPurchaseTimeRingOfBasiliusKey: String = "ring_of_basilius"
	internal let kDMFirstPurchaseTimeMaelstromKey: String = "maelstrom"
	internal let kDMFirstPurchaseTimeBeltOfStrengthKey: String = "belt_of_strength"
	internal let kDMFirstPurchaseTimeRingOfRegenKey: String = "ring_of_regen"
	internal let kDMFirstPurchaseTimeCrimsonGuardKey: String = "crimson_guard"
	internal let kDMFirstPurchaseTimeMedallionOfCourageKey: String = "medallion_of_courage"
	internal let kDMFirstPurchaseTimeDemonEdgeKey: String = "demon_edge"
	internal let kDMFirstPurchaseTimeUrnOfShadowsKey: String = "urn_of_shadows"
	internal let kDMFirstPurchaseTimeOgreAxeKey: String = "ogre_axe"
	internal let kDMFirstPurchaseTimeCircletKey: String = "circlet"
	internal let kDMFirstPurchaseTimeBucklerKey: String = "buckler"
	internal let kDMFirstPurchaseTimeTomeOfKnowledgeKey: String = "tome_of_knowledge"
	internal let kDMFirstPurchaseTimeDustKey: String = "dust"
	internal let kDMFirstPurchaseTimeUltimateScepterKey: String = "ultimate_scepter"
	internal let kDMFirstPurchaseTimeVitalityBoosterKey: String = "vitality_booster"
	internal let kDMFirstPurchaseTimeRingOfProtectionKey: String = "ring_of_protection"
	internal let kDMFirstPurchaseTimePlatemailKey: String = "platemail"
	internal let kDMFirstPurchaseTimeSangeAndYashaKey: String = "sange_and_yasha"
	internal let kDMFirstPurchaseTimeHyperstoneKey: String = "hyperstone"
	internal let kDMFirstPurchaseTimeAbyssalBladeKey: String = "abyssal_blade"
	internal let kDMFirstPurchaseTimeBasherKey: String = "basher"
	internal let kDMFirstPurchaseTimeWardSentryKey: String = "ward_sentry"
	internal let kDMFirstPurchaseTimeHeaddressKey: String = "headdress"
	internal let kDMFirstPurchaseTimeBootsKey: String = "boots"
	internal let kDMFirstPurchaseTimeSangeKey: String = "sange"
	internal let kDMFirstPurchaseTimeTpscrollKey: String = "tpscroll"
	internal let kDMFirstPurchaseTimeBroadswordKey: String = "broadsword"
	internal let kDMFirstPurchaseTimeQuellingBladeKey: String = "quelling_blade"
	internal let kDMFirstPurchaseTimeOrbOfVenomKey: String = "orb_of_venom"
	internal let kDMFirstPurchaseTimeGlovesKey: String = "gloves"
	internal let kDMFirstPurchaseTimeHandOfMidasKey: String = "hand_of_midas"
	internal let kDMFirstPurchaseTimeArmletKey: String = "armlet"
	internal let kDMFirstPurchaseTimeMoonShardKey: String = "moon_shard"
	internal let kDMFirstPurchaseTimeCourierKey: String = "courier"
	internal let kDMFirstPurchaseTimeShadowAmuletKey: String = "shadow_amulet"
	internal let kDMFirstPurchaseTimePowerTreadsKey: String = "power_treads"
	internal let kDMFirstPurchaseTimePipeKey: String = "pipe"
	internal let kDMFirstPurchaseTimeBootsOfElvesKey: String = "boots_of_elves"
	internal let kDMFirstPurchaseTimeInvisSwordKey: String = "invis_sword"
	internal let kDMFirstPurchaseTimeGauntletsKey: String = "gauntlets"
	internal let kDMFirstPurchaseTimeTalismanOfEvasionKey: String = "talisman_of_evasion"
	internal let kDMFirstPurchaseTimeHelmOfIronWillKey: String = "helm_of_iron_will"
	internal let kDMFirstPurchaseTimeVoidStoneKey: String = "void_stone"
	internal let kDMFirstPurchaseTimeSilverEdgeKey: String = "silver_edge"
	internal let kDMFirstPurchaseTimeReaverKey: String = "reaver"
	internal let kDMFirstPurchaseTimeRingOfHealthKey: String = "ring_of_health"
	internal let kDMFirstPurchaseTimeHoodOfDefianceKey: String = "hood_of_defiance"
	internal let kDMFirstPurchaseTimeMantaKey: String = "manta"
	internal let kDMFirstPurchaseTimePointBoosterKey: String = "point_booster"
	internal let kDMFirstPurchaseTimeVanguardKey: String = "vanguard"
	internal let kDMFirstPurchaseTimeBladeOfAlacrityKey: String = "blade_of_alacrity"
	internal let kDMFirstPurchaseTimeStaffOfWizardryKey: String = "staff_of_wizardry"
	internal let kDMFirstPurchaseTimeInfusedRaindropKey: String = "infused_raindrop"
	internal let kDMFirstPurchaseTimeWardObserverKey: String = "ward_observer"
	internal let kDMFirstPurchaseTimeTravelBootsKey: String = "travel_boots"
	internal let kDMFirstPurchaseTimeBlackKingBarKey: String = "black_king_bar"
	internal let kDMFirstPurchaseTimePhaseBootsKey: String = "phase_boots"
	internal let kDMFirstPurchaseTimeFaerieFireKey: String = "faerie_fire"
	internal let kDMFirstPurchaseTimeVladmirKey: String = "vladmir"
	internal let kDMFirstPurchaseTimeSobiMaskKey: String = "sobi_mask"
	internal let kDMFirstPurchaseTimeWindLaceKey: String = "wind_lace"
	internal let kDMFirstPurchaseTimeGreaterCritKey: String = "greater_crit"
	internal let kDMFirstPurchaseTimeSolarCrestKey: String = "solar_crest"
	internal let kDMFirstPurchaseTimeFlyingCourierKey: String = "flying_courier"
	internal let kDMFirstPurchaseTimeMithrilHammerKey: String = "mithril_hammer"
	internal let kDMFirstPurchaseTimeYashaKey: String = "yasha"
	internal let kDMFirstPurchaseTimeWraithBandKey: String = "wraith_band"
	internal let kDMFirstPurchaseTimeHeartKey: String = "heart"
	internal let kDMFirstPurchaseTimeClarityKey: String = "clarity"
	internal let kDMFirstPurchaseTimeBloodthornKey: String = "bloodthorn"
	internal let kDMFirstPurchaseTimeTravelBoots2Key: String = "travel_boots_2"
	internal let kDMFirstPurchaseTimeQuarterstaffKey: String = "quarterstaff"
	internal let kDMFirstPurchaseTimeOblivionStaffKey: String = "oblivion_staff"
	internal let kDMFirstPurchaseTimeMagicWandKey: String = "magic_wand"
	internal let kDMFirstPurchaseTimeGlimmerCapeKey: String = "glimmer_cape"
	internal let kDMFirstPurchaseTimeRingOfAquilaKey: String = "ring_of_aquila"
	internal let kDMFirstPurchaseTimeSlippersKey: String = "slippers"
	internal let kDMFirstPurchaseTimeLesserCritKey: String = "lesser_crit"
	internal let kDMFirstPurchaseTimeJavelinKey: String = "javelin"
	internal let kDMFirstPurchaseTimeHelmOfTheDominatorKey: String = "helm_of_the_dominator"
	internal let kDMFirstPurchaseTimeCloakKey: String = "cloak"
	internal let kDMFirstPurchaseTimeGemKey: String = "gem"
	internal let kDMFirstPurchaseTimeBracerKey: String = "bracer"
	internal let kDMFirstPurchaseTimeRobeKey: String = "robe"
	internal let kDMFirstPurchaseTimeBottleKey: String = "bottle"
	internal let kDMFirstPurchaseTimeChainmailKey: String = "chainmail"


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
		energyBooster = json[kDMFirstPurchaseTimeEnergyBoosterKey].int
		tango = json[kDMFirstPurchaseTimeTangoKey].int
		aetherLens = json[kDMFirstPurchaseTimeAetherLensKey].int
		enchantedMango = json[kDMFirstPurchaseTimeEnchantedMangoKey].int
		riverPainter5 = json[kDMFirstPurchaseTimeRiverPainter5Key].int
		skadi = json[kDMFirstPurchaseTimeSkadiKey].int
		bfury = json[kDMFirstPurchaseTimeBfuryKey].int
		tranquilBoots = json[kDMFirstPurchaseTimeTranquilBootsKey].int
		mjollnir = json[kDMFirstPurchaseTimeMjollnirKey].int
		pers = json[kDMFirstPurchaseTimePersKey].int
		claymore = json[kDMFirstPurchaseTimeClaymoreKey].int
		lifesteal = json[kDMFirstPurchaseTimeLifestealKey].int
		blightStone = json[kDMFirstPurchaseTimeBlightStoneKey].int
		monkeyKingBar = json[kDMFirstPurchaseTimeMonkeyKingBarKey].int
		ultimateOrb = json[kDMFirstPurchaseTimeUltimateOrbKey].int
		flask = json[kDMFirstPurchaseTimeFlaskKey].int
		desolator = json[kDMFirstPurchaseTimeDesolatorKey].int
		stoutShield = json[kDMFirstPurchaseTimeStoutShieldKey].int
		orchid = json[kDMFirstPurchaseTimeOrchidKey].int
		ancientJanggo = json[kDMFirstPurchaseTimeAncientJanggoKey].int
		magicStick = json[kDMFirstPurchaseTimeMagicStickKey].int
		poorMansShield = json[kDMFirstPurchaseTimePoorMansShieldKey].int
		assault = json[kDMFirstPurchaseTimeAssaultKey].int
		branches = json[kDMFirstPurchaseTimeBranchesKey].int
		bladesOfAttack = json[kDMFirstPurchaseTimeBladesOfAttackKey].int
		ringOfBasilius = json[kDMFirstPurchaseTimeRingOfBasiliusKey].int
		maelstrom = json[kDMFirstPurchaseTimeMaelstromKey].int
		beltOfStrength = json[kDMFirstPurchaseTimeBeltOfStrengthKey].int
		ringOfRegen = json[kDMFirstPurchaseTimeRingOfRegenKey].int
		crimsonGuard = json[kDMFirstPurchaseTimeCrimsonGuardKey].int
		medallionOfCourage = json[kDMFirstPurchaseTimeMedallionOfCourageKey].int
		demonEdge = json[kDMFirstPurchaseTimeDemonEdgeKey].int
		urnOfShadows = json[kDMFirstPurchaseTimeUrnOfShadowsKey].int
		ogreAxe = json[kDMFirstPurchaseTimeOgreAxeKey].int
		circlet = json[kDMFirstPurchaseTimeCircletKey].int
		buckler = json[kDMFirstPurchaseTimeBucklerKey].int
		tomeOfKnowledge = json[kDMFirstPurchaseTimeTomeOfKnowledgeKey].int
		dust = json[kDMFirstPurchaseTimeDustKey].int
		ultimateScepter = json[kDMFirstPurchaseTimeUltimateScepterKey].int
		vitalityBooster = json[kDMFirstPurchaseTimeVitalityBoosterKey].int
		ringOfProtection = json[kDMFirstPurchaseTimeRingOfProtectionKey].int
		platemail = json[kDMFirstPurchaseTimePlatemailKey].int
		sangeAndYasha = json[kDMFirstPurchaseTimeSangeAndYashaKey].int
		hyperstone = json[kDMFirstPurchaseTimeHyperstoneKey].int
		abyssalBlade = json[kDMFirstPurchaseTimeAbyssalBladeKey].int
		basher = json[kDMFirstPurchaseTimeBasherKey].int
		wardSentry = json[kDMFirstPurchaseTimeWardSentryKey].int
		headdress = json[kDMFirstPurchaseTimeHeaddressKey].int
		boots = json[kDMFirstPurchaseTimeBootsKey].int
		sange = json[kDMFirstPurchaseTimeSangeKey].int
		tpscroll = json[kDMFirstPurchaseTimeTpscrollKey].int
		broadsword = json[kDMFirstPurchaseTimeBroadswordKey].int
		quellingBlade = json[kDMFirstPurchaseTimeQuellingBladeKey].int
		orbOfVenom = json[kDMFirstPurchaseTimeOrbOfVenomKey].int
		gloves = json[kDMFirstPurchaseTimeGlovesKey].int
		handOfMidas = json[kDMFirstPurchaseTimeHandOfMidasKey].int
		armlet = json[kDMFirstPurchaseTimeArmletKey].int
		moonShard = json[kDMFirstPurchaseTimeMoonShardKey].int
		courier = json[kDMFirstPurchaseTimeCourierKey].int
		shadowAmulet = json[kDMFirstPurchaseTimeShadowAmuletKey].int
		powerTreads = json[kDMFirstPurchaseTimePowerTreadsKey].int
		pipe = json[kDMFirstPurchaseTimePipeKey].int
		bootsOfElves = json[kDMFirstPurchaseTimeBootsOfElvesKey].int
		invisSword = json[kDMFirstPurchaseTimeInvisSwordKey].int
		gauntlets = json[kDMFirstPurchaseTimeGauntletsKey].int
		talismanOfEvasion = json[kDMFirstPurchaseTimeTalismanOfEvasionKey].int
		helmOfIronWill = json[kDMFirstPurchaseTimeHelmOfIronWillKey].int
		voidStone = json[kDMFirstPurchaseTimeVoidStoneKey].int
		silverEdge = json[kDMFirstPurchaseTimeSilverEdgeKey].int
		reaver = json[kDMFirstPurchaseTimeReaverKey].int
		ringOfHealth = json[kDMFirstPurchaseTimeRingOfHealthKey].int
		hoodOfDefiance = json[kDMFirstPurchaseTimeHoodOfDefianceKey].int
		manta = json[kDMFirstPurchaseTimeMantaKey].int
		pointBooster = json[kDMFirstPurchaseTimePointBoosterKey].int
		vanguard = json[kDMFirstPurchaseTimeVanguardKey].int
		bladeOfAlacrity = json[kDMFirstPurchaseTimeBladeOfAlacrityKey].int
		staffOfWizardry = json[kDMFirstPurchaseTimeStaffOfWizardryKey].int
		infusedRaindrop = json[kDMFirstPurchaseTimeInfusedRaindropKey].int
		wardObserver = json[kDMFirstPurchaseTimeWardObserverKey].int
		travelBoots = json[kDMFirstPurchaseTimeTravelBootsKey].int
		blackKingBar = json[kDMFirstPurchaseTimeBlackKingBarKey].int
		phaseBoots = json[kDMFirstPurchaseTimePhaseBootsKey].int
		faerieFire = json[kDMFirstPurchaseTimeFaerieFireKey].int
		vladmir = json[kDMFirstPurchaseTimeVladmirKey].int
		sobiMask = json[kDMFirstPurchaseTimeSobiMaskKey].int
		windLace = json[kDMFirstPurchaseTimeWindLaceKey].int
		greaterCrit = json[kDMFirstPurchaseTimeGreaterCritKey].int
		solarCrest = json[kDMFirstPurchaseTimeSolarCrestKey].int
		flyingCourier = json[kDMFirstPurchaseTimeFlyingCourierKey].int
		mithrilHammer = json[kDMFirstPurchaseTimeMithrilHammerKey].int
		yasha = json[kDMFirstPurchaseTimeYashaKey].int
		wraithBand = json[kDMFirstPurchaseTimeWraithBandKey].int
		heart = json[kDMFirstPurchaseTimeHeartKey].int
		clarity = json[kDMFirstPurchaseTimeClarityKey].int
		bloodthorn = json[kDMFirstPurchaseTimeBloodthornKey].int
		travelBoots2 = json[kDMFirstPurchaseTimeTravelBoots2Key].int
		quarterstaff = json[kDMFirstPurchaseTimeQuarterstaffKey].int
		oblivionStaff = json[kDMFirstPurchaseTimeOblivionStaffKey].int
		magicWand = json[kDMFirstPurchaseTimeMagicWandKey].int
		glimmerCape = json[kDMFirstPurchaseTimeGlimmerCapeKey].int
		ringOfAquila = json[kDMFirstPurchaseTimeRingOfAquilaKey].int
		slippers = json[kDMFirstPurchaseTimeSlippersKey].int
		lesserCrit = json[kDMFirstPurchaseTimeLesserCritKey].int
		javelin = json[kDMFirstPurchaseTimeJavelinKey].int
		helmOfTheDominator = json[kDMFirstPurchaseTimeHelmOfTheDominatorKey].int
		cloak = json[kDMFirstPurchaseTimeCloakKey].int
		gem = json[kDMFirstPurchaseTimeGemKey].int
		bracer = json[kDMFirstPurchaseTimeBracerKey].int
		robe = json[kDMFirstPurchaseTimeRobeKey].int
		bottle = json[kDMFirstPurchaseTimeBottleKey].int
		chainmail = json[kDMFirstPurchaseTimeChainmailKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if energyBooster != nil {
			dictionary.updateValue(energyBooster!, forKey: kDMFirstPurchaseTimeEnergyBoosterKey)
		}
		if tango != nil {
			dictionary.updateValue(tango!, forKey: kDMFirstPurchaseTimeTangoKey)
		}
		if aetherLens != nil {
			dictionary.updateValue(aetherLens!, forKey: kDMFirstPurchaseTimeAetherLensKey)
		}
		if enchantedMango != nil {
			dictionary.updateValue(enchantedMango!, forKey: kDMFirstPurchaseTimeEnchantedMangoKey)
		}
		if riverPainter5 != nil {
			dictionary.updateValue(riverPainter5!, forKey: kDMFirstPurchaseTimeRiverPainter5Key)
		}
		if skadi != nil {
			dictionary.updateValue(skadi!, forKey: kDMFirstPurchaseTimeSkadiKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury!, forKey: kDMFirstPurchaseTimeBfuryKey)
		}
		if tranquilBoots != nil {
			dictionary.updateValue(tranquilBoots!, forKey: kDMFirstPurchaseTimeTranquilBootsKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir!, forKey: kDMFirstPurchaseTimeMjollnirKey)
		}
		if pers != nil {
			dictionary.updateValue(pers!, forKey: kDMFirstPurchaseTimePersKey)
		}
		if claymore != nil {
			dictionary.updateValue(claymore!, forKey: kDMFirstPurchaseTimeClaymoreKey)
		}
		if lifesteal != nil {
			dictionary.updateValue(lifesteal!, forKey: kDMFirstPurchaseTimeLifestealKey)
		}
		if blightStone != nil {
			dictionary.updateValue(blightStone!, forKey: kDMFirstPurchaseTimeBlightStoneKey)
		}
		if monkeyKingBar != nil {
			dictionary.updateValue(monkeyKingBar!, forKey: kDMFirstPurchaseTimeMonkeyKingBarKey)
		}
		if ultimateOrb != nil {
			dictionary.updateValue(ultimateOrb!, forKey: kDMFirstPurchaseTimeUltimateOrbKey)
		}
		if flask != nil {
			dictionary.updateValue(flask!, forKey: kDMFirstPurchaseTimeFlaskKey)
		}
		if desolator != nil {
			dictionary.updateValue(desolator!, forKey: kDMFirstPurchaseTimeDesolatorKey)
		}
		if stoutShield != nil {
			dictionary.updateValue(stoutShield!, forKey: kDMFirstPurchaseTimeStoutShieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid!, forKey: kDMFirstPurchaseTimeOrchidKey)
		}
		if ancientJanggo != nil {
			dictionary.updateValue(ancientJanggo!, forKey: kDMFirstPurchaseTimeAncientJanggoKey)
		}
		if magicStick != nil {
			dictionary.updateValue(magicStick!, forKey: kDMFirstPurchaseTimeMagicStickKey)
		}
		if poorMansShield != nil {
			dictionary.updateValue(poorMansShield!, forKey: kDMFirstPurchaseTimePoorMansShieldKey)
		}
		if assault != nil {
			dictionary.updateValue(assault!, forKey: kDMFirstPurchaseTimeAssaultKey)
		}
		if branches != nil {
			dictionary.updateValue(branches!, forKey: kDMFirstPurchaseTimeBranchesKey)
		}
		if bladesOfAttack != nil {
			dictionary.updateValue(bladesOfAttack!, forKey: kDMFirstPurchaseTimeBladesOfAttackKey)
		}
		if ringOfBasilius != nil {
			dictionary.updateValue(ringOfBasilius!, forKey: kDMFirstPurchaseTimeRingOfBasiliusKey)
		}
		if maelstrom != nil {
			dictionary.updateValue(maelstrom!, forKey: kDMFirstPurchaseTimeMaelstromKey)
		}
		if beltOfStrength != nil {
			dictionary.updateValue(beltOfStrength!, forKey: kDMFirstPurchaseTimeBeltOfStrengthKey)
		}
		if ringOfRegen != nil {
			dictionary.updateValue(ringOfRegen!, forKey: kDMFirstPurchaseTimeRingOfRegenKey)
		}
		if crimsonGuard != nil {
			dictionary.updateValue(crimsonGuard!, forKey: kDMFirstPurchaseTimeCrimsonGuardKey)
		}
		if medallionOfCourage != nil {
			dictionary.updateValue(medallionOfCourage!, forKey: kDMFirstPurchaseTimeMedallionOfCourageKey)
		}
		if demonEdge != nil {
			dictionary.updateValue(demonEdge!, forKey: kDMFirstPurchaseTimeDemonEdgeKey)
		}
		if urnOfShadows != nil {
			dictionary.updateValue(urnOfShadows!, forKey: kDMFirstPurchaseTimeUrnOfShadowsKey)
		}
		if ogreAxe != nil {
			dictionary.updateValue(ogreAxe!, forKey: kDMFirstPurchaseTimeOgreAxeKey)
		}
		if circlet != nil {
			dictionary.updateValue(circlet!, forKey: kDMFirstPurchaseTimeCircletKey)
		}
		if buckler != nil {
			dictionary.updateValue(buckler!, forKey: kDMFirstPurchaseTimeBucklerKey)
		}
		if tomeOfKnowledge != nil {
			dictionary.updateValue(tomeOfKnowledge!, forKey: kDMFirstPurchaseTimeTomeOfKnowledgeKey)
		}
		if dust != nil {
			dictionary.updateValue(dust!, forKey: kDMFirstPurchaseTimeDustKey)
		}
		if ultimateScepter != nil {
			dictionary.updateValue(ultimateScepter!, forKey: kDMFirstPurchaseTimeUltimateScepterKey)
		}
		if vitalityBooster != nil {
			dictionary.updateValue(vitalityBooster!, forKey: kDMFirstPurchaseTimeVitalityBoosterKey)
		}
		if ringOfProtection != nil {
			dictionary.updateValue(ringOfProtection!, forKey: kDMFirstPurchaseTimeRingOfProtectionKey)
		}
		if platemail != nil {
			dictionary.updateValue(platemail!, forKey: kDMFirstPurchaseTimePlatemailKey)
		}
		if sangeAndYasha != nil {
			dictionary.updateValue(sangeAndYasha!, forKey: kDMFirstPurchaseTimeSangeAndYashaKey)
		}
		if hyperstone != nil {
			dictionary.updateValue(hyperstone!, forKey: kDMFirstPurchaseTimeHyperstoneKey)
		}
		if abyssalBlade != nil {
			dictionary.updateValue(abyssalBlade!, forKey: kDMFirstPurchaseTimeAbyssalBladeKey)
		}
		if basher != nil {
			dictionary.updateValue(basher!, forKey: kDMFirstPurchaseTimeBasherKey)
		}
		if wardSentry != nil {
			dictionary.updateValue(wardSentry!, forKey: kDMFirstPurchaseTimeWardSentryKey)
		}
		if headdress != nil {
			dictionary.updateValue(headdress!, forKey: kDMFirstPurchaseTimeHeaddressKey)
		}
		if boots != nil {
			dictionary.updateValue(boots!, forKey: kDMFirstPurchaseTimeBootsKey)
		}
		if sange != nil {
			dictionary.updateValue(sange!, forKey: kDMFirstPurchaseTimeSangeKey)
		}
		if tpscroll != nil {
			dictionary.updateValue(tpscroll!, forKey: kDMFirstPurchaseTimeTpscrollKey)
		}
		if broadsword != nil {
			dictionary.updateValue(broadsword!, forKey: kDMFirstPurchaseTimeBroadswordKey)
		}
		if quellingBlade != nil {
			dictionary.updateValue(quellingBlade!, forKey: kDMFirstPurchaseTimeQuellingBladeKey)
		}
		if orbOfVenom != nil {
			dictionary.updateValue(orbOfVenom!, forKey: kDMFirstPurchaseTimeOrbOfVenomKey)
		}
		if gloves != nil {
			dictionary.updateValue(gloves!, forKey: kDMFirstPurchaseTimeGlovesKey)
		}
		if handOfMidas != nil {
			dictionary.updateValue(handOfMidas!, forKey: kDMFirstPurchaseTimeHandOfMidasKey)
		}
		if armlet != nil {
			dictionary.updateValue(armlet!, forKey: kDMFirstPurchaseTimeArmletKey)
		}
		if moonShard != nil {
			dictionary.updateValue(moonShard!, forKey: kDMFirstPurchaseTimeMoonShardKey)
		}
		if courier != nil {
			dictionary.updateValue(courier!, forKey: kDMFirstPurchaseTimeCourierKey)
		}
		if shadowAmulet != nil {
			dictionary.updateValue(shadowAmulet!, forKey: kDMFirstPurchaseTimeShadowAmuletKey)
		}
		if powerTreads != nil {
			dictionary.updateValue(powerTreads!, forKey: kDMFirstPurchaseTimePowerTreadsKey)
		}
		if pipe != nil {
			dictionary.updateValue(pipe!, forKey: kDMFirstPurchaseTimePipeKey)
		}
		if bootsOfElves != nil {
			dictionary.updateValue(bootsOfElves!, forKey: kDMFirstPurchaseTimeBootsOfElvesKey)
		}
		if invisSword != nil {
			dictionary.updateValue(invisSword!, forKey: kDMFirstPurchaseTimeInvisSwordKey)
		}
		if gauntlets != nil {
			dictionary.updateValue(gauntlets!, forKey: kDMFirstPurchaseTimeGauntletsKey)
		}
		if talismanOfEvasion != nil {
			dictionary.updateValue(talismanOfEvasion!, forKey: kDMFirstPurchaseTimeTalismanOfEvasionKey)
		}
		if helmOfIronWill != nil {
			dictionary.updateValue(helmOfIronWill!, forKey: kDMFirstPurchaseTimeHelmOfIronWillKey)
		}
		if voidStone != nil {
			dictionary.updateValue(voidStone!, forKey: kDMFirstPurchaseTimeVoidStoneKey)
		}
		if silverEdge != nil {
			dictionary.updateValue(silverEdge!, forKey: kDMFirstPurchaseTimeSilverEdgeKey)
		}
		if reaver != nil {
			dictionary.updateValue(reaver!, forKey: kDMFirstPurchaseTimeReaverKey)
		}
		if ringOfHealth != nil {
			dictionary.updateValue(ringOfHealth!, forKey: kDMFirstPurchaseTimeRingOfHealthKey)
		}
		if hoodOfDefiance != nil {
			dictionary.updateValue(hoodOfDefiance!, forKey: kDMFirstPurchaseTimeHoodOfDefianceKey)
		}
		if manta != nil {
			dictionary.updateValue(manta!, forKey: kDMFirstPurchaseTimeMantaKey)
		}
		if pointBooster != nil {
			dictionary.updateValue(pointBooster!, forKey: kDMFirstPurchaseTimePointBoosterKey)
		}
		if vanguard != nil {
			dictionary.updateValue(vanguard!, forKey: kDMFirstPurchaseTimeVanguardKey)
		}
		if bladeOfAlacrity != nil {
			dictionary.updateValue(bladeOfAlacrity!, forKey: kDMFirstPurchaseTimeBladeOfAlacrityKey)
		}
		if staffOfWizardry != nil {
			dictionary.updateValue(staffOfWizardry!, forKey: kDMFirstPurchaseTimeStaffOfWizardryKey)
		}
		if infusedRaindrop != nil {
			dictionary.updateValue(infusedRaindrop!, forKey: kDMFirstPurchaseTimeInfusedRaindropKey)
		}
		if wardObserver != nil {
			dictionary.updateValue(wardObserver!, forKey: kDMFirstPurchaseTimeWardObserverKey)
		}
		if travelBoots != nil {
			dictionary.updateValue(travelBoots!, forKey: kDMFirstPurchaseTimeTravelBootsKey)
		}
		if blackKingBar != nil {
			dictionary.updateValue(blackKingBar!, forKey: kDMFirstPurchaseTimeBlackKingBarKey)
		}
		if phaseBoots != nil {
			dictionary.updateValue(phaseBoots!, forKey: kDMFirstPurchaseTimePhaseBootsKey)
		}
		if faerieFire != nil {
			dictionary.updateValue(faerieFire!, forKey: kDMFirstPurchaseTimeFaerieFireKey)
		}
		if vladmir != nil {
			dictionary.updateValue(vladmir!, forKey: kDMFirstPurchaseTimeVladmirKey)
		}
		if sobiMask != nil {
			dictionary.updateValue(sobiMask!, forKey: kDMFirstPurchaseTimeSobiMaskKey)
		}
		if windLace != nil {
			dictionary.updateValue(windLace!, forKey: kDMFirstPurchaseTimeWindLaceKey)
		}
		if greaterCrit != nil {
			dictionary.updateValue(greaterCrit!, forKey: kDMFirstPurchaseTimeGreaterCritKey)
		}
		if solarCrest != nil {
			dictionary.updateValue(solarCrest!, forKey: kDMFirstPurchaseTimeSolarCrestKey)
		}
		if flyingCourier != nil {
			dictionary.updateValue(flyingCourier!, forKey: kDMFirstPurchaseTimeFlyingCourierKey)
		}
		if mithrilHammer != nil {
			dictionary.updateValue(mithrilHammer!, forKey: kDMFirstPurchaseTimeMithrilHammerKey)
		}
		if yasha != nil {
			dictionary.updateValue(yasha!, forKey: kDMFirstPurchaseTimeYashaKey)
		}
		if wraithBand != nil {
			dictionary.updateValue(wraithBand!, forKey: kDMFirstPurchaseTimeWraithBandKey)
		}
		if heart != nil {
			dictionary.updateValue(heart!, forKey: kDMFirstPurchaseTimeHeartKey)
		}
		if clarity != nil {
			dictionary.updateValue(clarity!, forKey: kDMFirstPurchaseTimeClarityKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn!, forKey: kDMFirstPurchaseTimeBloodthornKey)
		}
		if travelBoots2 != nil {
			dictionary.updateValue(travelBoots2!, forKey: kDMFirstPurchaseTimeTravelBoots2Key)
		}
		if quarterstaff != nil {
			dictionary.updateValue(quarterstaff!, forKey: kDMFirstPurchaseTimeQuarterstaffKey)
		}
		if oblivionStaff != nil {
			dictionary.updateValue(oblivionStaff!, forKey: kDMFirstPurchaseTimeOblivionStaffKey)
		}
		if magicWand != nil {
			dictionary.updateValue(magicWand!, forKey: kDMFirstPurchaseTimeMagicWandKey)
		}
		if glimmerCape != nil {
			dictionary.updateValue(glimmerCape!, forKey: kDMFirstPurchaseTimeGlimmerCapeKey)
		}
		if ringOfAquila != nil {
			dictionary.updateValue(ringOfAquila!, forKey: kDMFirstPurchaseTimeRingOfAquilaKey)
		}
		if slippers != nil {
			dictionary.updateValue(slippers!, forKey: kDMFirstPurchaseTimeSlippersKey)
		}
		if lesserCrit != nil {
			dictionary.updateValue(lesserCrit!, forKey: kDMFirstPurchaseTimeLesserCritKey)
		}
		if javelin != nil {
			dictionary.updateValue(javelin!, forKey: kDMFirstPurchaseTimeJavelinKey)
		}
		if helmOfTheDominator != nil {
			dictionary.updateValue(helmOfTheDominator!, forKey: kDMFirstPurchaseTimeHelmOfTheDominatorKey)
		}
		if cloak != nil {
			dictionary.updateValue(cloak!, forKey: kDMFirstPurchaseTimeCloakKey)
		}
		if gem != nil {
			dictionary.updateValue(gem!, forKey: kDMFirstPurchaseTimeGemKey)
		}
		if bracer != nil {
			dictionary.updateValue(bracer!, forKey: kDMFirstPurchaseTimeBracerKey)
		}
		if robe != nil {
			dictionary.updateValue(robe!, forKey: kDMFirstPurchaseTimeRobeKey)
		}
		if bottle != nil {
			dictionary.updateValue(bottle!, forKey: kDMFirstPurchaseTimeBottleKey)
		}
		if chainmail != nil {
			dictionary.updateValue(chainmail!, forKey: kDMFirstPurchaseTimeChainmailKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.energyBooster = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeEnergyBoosterKey) as? Int
		self.tango = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeTangoKey) as? Int
		self.aetherLens = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeAetherLensKey) as? Int
		self.enchantedMango = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeEnchantedMangoKey) as? Int
		self.riverPainter5 = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeRiverPainter5Key) as? Int
		self.skadi = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeSkadiKey) as? Int
		self.bfury = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBfuryKey) as? Int
		self.tranquilBoots = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeTranquilBootsKey) as? Int
		self.mjollnir = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeMjollnirKey) as? Int
		self.pers = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimePersKey) as? Int
		self.claymore = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeClaymoreKey) as? Int
		self.lifesteal = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeLifestealKey) as? Int
		self.blightStone = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBlightStoneKey) as? Int
		self.monkeyKingBar = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeMonkeyKingBarKey) as? Int
		self.ultimateOrb = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeUltimateOrbKey) as? Int
		self.flask = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeFlaskKey) as? Int
		self.desolator = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeDesolatorKey) as? Int
		self.stoutShield = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeStoutShieldKey) as? Int
		self.orchid = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeOrchidKey) as? Int
		self.ancientJanggo = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeAncientJanggoKey) as? Int
		self.magicStick = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeMagicStickKey) as? Int
		self.poorMansShield = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimePoorMansShieldKey) as? Int
		self.assault = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeAssaultKey) as? Int
		self.branches = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBranchesKey) as? Int
		self.bladesOfAttack = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBladesOfAttackKey) as? Int
		self.ringOfBasilius = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeRingOfBasiliusKey) as? Int
		self.maelstrom = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeMaelstromKey) as? Int
		self.beltOfStrength = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBeltOfStrengthKey) as? Int
		self.ringOfRegen = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeRingOfRegenKey) as? Int
		self.crimsonGuard = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeCrimsonGuardKey) as? Int
		self.medallionOfCourage = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeMedallionOfCourageKey) as? Int
		self.demonEdge = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeDemonEdgeKey) as? Int
		self.urnOfShadows = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeUrnOfShadowsKey) as? Int
		self.ogreAxe = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeOgreAxeKey) as? Int
		self.circlet = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeCircletKey) as? Int
		self.buckler = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBucklerKey) as? Int
		self.tomeOfKnowledge = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeTomeOfKnowledgeKey) as? Int
		self.dust = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeDustKey) as? Int
		self.ultimateScepter = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeUltimateScepterKey) as? Int
		self.vitalityBooster = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeVitalityBoosterKey) as? Int
		self.ringOfProtection = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeRingOfProtectionKey) as? Int
		self.platemail = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimePlatemailKey) as? Int
		self.sangeAndYasha = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeSangeAndYashaKey) as? Int
		self.hyperstone = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeHyperstoneKey) as? Int
		self.abyssalBlade = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeAbyssalBladeKey) as? Int
		self.basher = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBasherKey) as? Int
		self.wardSentry = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeWardSentryKey) as? Int
		self.headdress = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeHeaddressKey) as? Int
		self.boots = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBootsKey) as? Int
		self.sange = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeSangeKey) as? Int
		self.tpscroll = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeTpscrollKey) as? Int
		self.broadsword = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBroadswordKey) as? Int
		self.quellingBlade = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeQuellingBladeKey) as? Int
		self.orbOfVenom = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeOrbOfVenomKey) as? Int
		self.gloves = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeGlovesKey) as? Int
		self.handOfMidas = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeHandOfMidasKey) as? Int
		self.armlet = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeArmletKey) as? Int
		self.moonShard = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeMoonShardKey) as? Int
		self.courier = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeCourierKey) as? Int
		self.shadowAmulet = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeShadowAmuletKey) as? Int
		self.powerTreads = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimePowerTreadsKey) as? Int
		self.pipe = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimePipeKey) as? Int
		self.bootsOfElves = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBootsOfElvesKey) as? Int
		self.invisSword = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeInvisSwordKey) as? Int
		self.gauntlets = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeGauntletsKey) as? Int
		self.talismanOfEvasion = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeTalismanOfEvasionKey) as? Int
		self.helmOfIronWill = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeHelmOfIronWillKey) as? Int
		self.voidStone = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeVoidStoneKey) as? Int
		self.silverEdge = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeSilverEdgeKey) as? Int
		self.reaver = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeReaverKey) as? Int
		self.ringOfHealth = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeRingOfHealthKey) as? Int
		self.hoodOfDefiance = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeHoodOfDefianceKey) as? Int
		self.manta = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeMantaKey) as? Int
		self.pointBooster = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimePointBoosterKey) as? Int
		self.vanguard = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeVanguardKey) as? Int
		self.bladeOfAlacrity = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBladeOfAlacrityKey) as? Int
		self.staffOfWizardry = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeStaffOfWizardryKey) as? Int
		self.infusedRaindrop = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeInfusedRaindropKey) as? Int
		self.wardObserver = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeWardObserverKey) as? Int
		self.travelBoots = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeTravelBootsKey) as? Int
		self.blackKingBar = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBlackKingBarKey) as? Int
		self.phaseBoots = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimePhaseBootsKey) as? Int
		self.faerieFire = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeFaerieFireKey) as? Int
		self.vladmir = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeVladmirKey) as? Int
		self.sobiMask = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeSobiMaskKey) as? Int
		self.windLace = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeWindLaceKey) as? Int
		self.greaterCrit = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeGreaterCritKey) as? Int
		self.solarCrest = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeSolarCrestKey) as? Int
		self.flyingCourier = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeFlyingCourierKey) as? Int
		self.mithrilHammer = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeMithrilHammerKey) as? Int
		self.yasha = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeYashaKey) as? Int
		self.wraithBand = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeWraithBandKey) as? Int
		self.heart = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeHeartKey) as? Int
		self.clarity = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeClarityKey) as? Int
		self.bloodthorn = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBloodthornKey) as? Int
		self.travelBoots2 = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeTravelBoots2Key) as? Int
		self.quarterstaff = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeQuarterstaffKey) as? Int
		self.oblivionStaff = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeOblivionStaffKey) as? Int
		self.magicWand = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeMagicWandKey) as? Int
		self.glimmerCape = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeGlimmerCapeKey) as? Int
		self.ringOfAquila = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeRingOfAquilaKey) as? Int
		self.slippers = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeSlippersKey) as? Int
		self.lesserCrit = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeLesserCritKey) as? Int
		self.javelin = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeJavelinKey) as? Int
		self.helmOfTheDominator = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeHelmOfTheDominatorKey) as? Int
		self.cloak = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeCloakKey) as? Int
		self.gem = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeGemKey) as? Int
		self.bracer = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBracerKey) as? Int
		self.robe = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeRobeKey) as? Int
		self.bottle = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeBottleKey) as? Int
		self.chainmail = aDecoder.decodeObjectForKey(kDMFirstPurchaseTimeChainmailKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(energyBooster, forKey: kDMFirstPurchaseTimeEnergyBoosterKey)
		aCoder.encodeObject(tango, forKey: kDMFirstPurchaseTimeTangoKey)
		aCoder.encodeObject(aetherLens, forKey: kDMFirstPurchaseTimeAetherLensKey)
		aCoder.encodeObject(enchantedMango, forKey: kDMFirstPurchaseTimeEnchantedMangoKey)
		aCoder.encodeObject(riverPainter5, forKey: kDMFirstPurchaseTimeRiverPainter5Key)
		aCoder.encodeObject(skadi, forKey: kDMFirstPurchaseTimeSkadiKey)
		aCoder.encodeObject(bfury, forKey: kDMFirstPurchaseTimeBfuryKey)
		aCoder.encodeObject(tranquilBoots, forKey: kDMFirstPurchaseTimeTranquilBootsKey)
		aCoder.encodeObject(mjollnir, forKey: kDMFirstPurchaseTimeMjollnirKey)
		aCoder.encodeObject(pers, forKey: kDMFirstPurchaseTimePersKey)
		aCoder.encodeObject(claymore, forKey: kDMFirstPurchaseTimeClaymoreKey)
		aCoder.encodeObject(lifesteal, forKey: kDMFirstPurchaseTimeLifestealKey)
		aCoder.encodeObject(blightStone, forKey: kDMFirstPurchaseTimeBlightStoneKey)
		aCoder.encodeObject(monkeyKingBar, forKey: kDMFirstPurchaseTimeMonkeyKingBarKey)
		aCoder.encodeObject(ultimateOrb, forKey: kDMFirstPurchaseTimeUltimateOrbKey)
		aCoder.encodeObject(flask, forKey: kDMFirstPurchaseTimeFlaskKey)
		aCoder.encodeObject(desolator, forKey: kDMFirstPurchaseTimeDesolatorKey)
		aCoder.encodeObject(stoutShield, forKey: kDMFirstPurchaseTimeStoutShieldKey)
		aCoder.encodeObject(orchid, forKey: kDMFirstPurchaseTimeOrchidKey)
		aCoder.encodeObject(ancientJanggo, forKey: kDMFirstPurchaseTimeAncientJanggoKey)
		aCoder.encodeObject(magicStick, forKey: kDMFirstPurchaseTimeMagicStickKey)
		aCoder.encodeObject(poorMansShield, forKey: kDMFirstPurchaseTimePoorMansShieldKey)
		aCoder.encodeObject(assault, forKey: kDMFirstPurchaseTimeAssaultKey)
		aCoder.encodeObject(branches, forKey: kDMFirstPurchaseTimeBranchesKey)
		aCoder.encodeObject(bladesOfAttack, forKey: kDMFirstPurchaseTimeBladesOfAttackKey)
		aCoder.encodeObject(ringOfBasilius, forKey: kDMFirstPurchaseTimeRingOfBasiliusKey)
		aCoder.encodeObject(maelstrom, forKey: kDMFirstPurchaseTimeMaelstromKey)
		aCoder.encodeObject(beltOfStrength, forKey: kDMFirstPurchaseTimeBeltOfStrengthKey)
		aCoder.encodeObject(ringOfRegen, forKey: kDMFirstPurchaseTimeRingOfRegenKey)
		aCoder.encodeObject(crimsonGuard, forKey: kDMFirstPurchaseTimeCrimsonGuardKey)
		aCoder.encodeObject(medallionOfCourage, forKey: kDMFirstPurchaseTimeMedallionOfCourageKey)
		aCoder.encodeObject(demonEdge, forKey: kDMFirstPurchaseTimeDemonEdgeKey)
		aCoder.encodeObject(urnOfShadows, forKey: kDMFirstPurchaseTimeUrnOfShadowsKey)
		aCoder.encodeObject(ogreAxe, forKey: kDMFirstPurchaseTimeOgreAxeKey)
		aCoder.encodeObject(circlet, forKey: kDMFirstPurchaseTimeCircletKey)
		aCoder.encodeObject(buckler, forKey: kDMFirstPurchaseTimeBucklerKey)
		aCoder.encodeObject(tomeOfKnowledge, forKey: kDMFirstPurchaseTimeTomeOfKnowledgeKey)
		aCoder.encodeObject(dust, forKey: kDMFirstPurchaseTimeDustKey)
		aCoder.encodeObject(ultimateScepter, forKey: kDMFirstPurchaseTimeUltimateScepterKey)
		aCoder.encodeObject(vitalityBooster, forKey: kDMFirstPurchaseTimeVitalityBoosterKey)
		aCoder.encodeObject(ringOfProtection, forKey: kDMFirstPurchaseTimeRingOfProtectionKey)
		aCoder.encodeObject(platemail, forKey: kDMFirstPurchaseTimePlatemailKey)
		aCoder.encodeObject(sangeAndYasha, forKey: kDMFirstPurchaseTimeSangeAndYashaKey)
		aCoder.encodeObject(hyperstone, forKey: kDMFirstPurchaseTimeHyperstoneKey)
		aCoder.encodeObject(abyssalBlade, forKey: kDMFirstPurchaseTimeAbyssalBladeKey)
		aCoder.encodeObject(basher, forKey: kDMFirstPurchaseTimeBasherKey)
		aCoder.encodeObject(wardSentry, forKey: kDMFirstPurchaseTimeWardSentryKey)
		aCoder.encodeObject(headdress, forKey: kDMFirstPurchaseTimeHeaddressKey)
		aCoder.encodeObject(boots, forKey: kDMFirstPurchaseTimeBootsKey)
		aCoder.encodeObject(sange, forKey: kDMFirstPurchaseTimeSangeKey)
		aCoder.encodeObject(tpscroll, forKey: kDMFirstPurchaseTimeTpscrollKey)
		aCoder.encodeObject(broadsword, forKey: kDMFirstPurchaseTimeBroadswordKey)
		aCoder.encodeObject(quellingBlade, forKey: kDMFirstPurchaseTimeQuellingBladeKey)
		aCoder.encodeObject(orbOfVenom, forKey: kDMFirstPurchaseTimeOrbOfVenomKey)
		aCoder.encodeObject(gloves, forKey: kDMFirstPurchaseTimeGlovesKey)
		aCoder.encodeObject(handOfMidas, forKey: kDMFirstPurchaseTimeHandOfMidasKey)
		aCoder.encodeObject(armlet, forKey: kDMFirstPurchaseTimeArmletKey)
		aCoder.encodeObject(moonShard, forKey: kDMFirstPurchaseTimeMoonShardKey)
		aCoder.encodeObject(courier, forKey: kDMFirstPurchaseTimeCourierKey)
		aCoder.encodeObject(shadowAmulet, forKey: kDMFirstPurchaseTimeShadowAmuletKey)
		aCoder.encodeObject(powerTreads, forKey: kDMFirstPurchaseTimePowerTreadsKey)
		aCoder.encodeObject(pipe, forKey: kDMFirstPurchaseTimePipeKey)
		aCoder.encodeObject(bootsOfElves, forKey: kDMFirstPurchaseTimeBootsOfElvesKey)
		aCoder.encodeObject(invisSword, forKey: kDMFirstPurchaseTimeInvisSwordKey)
		aCoder.encodeObject(gauntlets, forKey: kDMFirstPurchaseTimeGauntletsKey)
		aCoder.encodeObject(talismanOfEvasion, forKey: kDMFirstPurchaseTimeTalismanOfEvasionKey)
		aCoder.encodeObject(helmOfIronWill, forKey: kDMFirstPurchaseTimeHelmOfIronWillKey)
		aCoder.encodeObject(voidStone, forKey: kDMFirstPurchaseTimeVoidStoneKey)
		aCoder.encodeObject(silverEdge, forKey: kDMFirstPurchaseTimeSilverEdgeKey)
		aCoder.encodeObject(reaver, forKey: kDMFirstPurchaseTimeReaverKey)
		aCoder.encodeObject(ringOfHealth, forKey: kDMFirstPurchaseTimeRingOfHealthKey)
		aCoder.encodeObject(hoodOfDefiance, forKey: kDMFirstPurchaseTimeHoodOfDefianceKey)
		aCoder.encodeObject(manta, forKey: kDMFirstPurchaseTimeMantaKey)
		aCoder.encodeObject(pointBooster, forKey: kDMFirstPurchaseTimePointBoosterKey)
		aCoder.encodeObject(vanguard, forKey: kDMFirstPurchaseTimeVanguardKey)
		aCoder.encodeObject(bladeOfAlacrity, forKey: kDMFirstPurchaseTimeBladeOfAlacrityKey)
		aCoder.encodeObject(staffOfWizardry, forKey: kDMFirstPurchaseTimeStaffOfWizardryKey)
		aCoder.encodeObject(infusedRaindrop, forKey: kDMFirstPurchaseTimeInfusedRaindropKey)
		aCoder.encodeObject(wardObserver, forKey: kDMFirstPurchaseTimeWardObserverKey)
		aCoder.encodeObject(travelBoots, forKey: kDMFirstPurchaseTimeTravelBootsKey)
		aCoder.encodeObject(blackKingBar, forKey: kDMFirstPurchaseTimeBlackKingBarKey)
		aCoder.encodeObject(phaseBoots, forKey: kDMFirstPurchaseTimePhaseBootsKey)
		aCoder.encodeObject(faerieFire, forKey: kDMFirstPurchaseTimeFaerieFireKey)
		aCoder.encodeObject(vladmir, forKey: kDMFirstPurchaseTimeVladmirKey)
		aCoder.encodeObject(sobiMask, forKey: kDMFirstPurchaseTimeSobiMaskKey)
		aCoder.encodeObject(windLace, forKey: kDMFirstPurchaseTimeWindLaceKey)
		aCoder.encodeObject(greaterCrit, forKey: kDMFirstPurchaseTimeGreaterCritKey)
		aCoder.encodeObject(solarCrest, forKey: kDMFirstPurchaseTimeSolarCrestKey)
		aCoder.encodeObject(flyingCourier, forKey: kDMFirstPurchaseTimeFlyingCourierKey)
		aCoder.encodeObject(mithrilHammer, forKey: kDMFirstPurchaseTimeMithrilHammerKey)
		aCoder.encodeObject(yasha, forKey: kDMFirstPurchaseTimeYashaKey)
		aCoder.encodeObject(wraithBand, forKey: kDMFirstPurchaseTimeWraithBandKey)
		aCoder.encodeObject(heart, forKey: kDMFirstPurchaseTimeHeartKey)
		aCoder.encodeObject(clarity, forKey: kDMFirstPurchaseTimeClarityKey)
		aCoder.encodeObject(bloodthorn, forKey: kDMFirstPurchaseTimeBloodthornKey)
		aCoder.encodeObject(travelBoots2, forKey: kDMFirstPurchaseTimeTravelBoots2Key)
		aCoder.encodeObject(quarterstaff, forKey: kDMFirstPurchaseTimeQuarterstaffKey)
		aCoder.encodeObject(oblivionStaff, forKey: kDMFirstPurchaseTimeOblivionStaffKey)
		aCoder.encodeObject(magicWand, forKey: kDMFirstPurchaseTimeMagicWandKey)
		aCoder.encodeObject(glimmerCape, forKey: kDMFirstPurchaseTimeGlimmerCapeKey)
		aCoder.encodeObject(ringOfAquila, forKey: kDMFirstPurchaseTimeRingOfAquilaKey)
		aCoder.encodeObject(slippers, forKey: kDMFirstPurchaseTimeSlippersKey)
		aCoder.encodeObject(lesserCrit, forKey: kDMFirstPurchaseTimeLesserCritKey)
		aCoder.encodeObject(javelin, forKey: kDMFirstPurchaseTimeJavelinKey)
		aCoder.encodeObject(helmOfTheDominator, forKey: kDMFirstPurchaseTimeHelmOfTheDominatorKey)
		aCoder.encodeObject(cloak, forKey: kDMFirstPurchaseTimeCloakKey)
		aCoder.encodeObject(gem, forKey: kDMFirstPurchaseTimeGemKey)
		aCoder.encodeObject(bracer, forKey: kDMFirstPurchaseTimeBracerKey)
		aCoder.encodeObject(robe, forKey: kDMFirstPurchaseTimeRobeKey)
		aCoder.encodeObject(bottle, forKey: kDMFirstPurchaseTimeBottleKey)
		aCoder.encodeObject(chainmail, forKey: kDMFirstPurchaseTimeChainmailKey)

    }

}
