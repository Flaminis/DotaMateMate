//
//  DMItemWin.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMItemWin: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMItemWinEnergyBoosterKey: String = "energy_booster"
	internal let kDMItemWinTangoKey: String = "tango"
	internal let kDMItemWinAetherLensKey: String = "aether_lens"
	internal let kDMItemWinEnchantedMangoKey: String = "enchanted_mango"
	internal let kDMItemWinRiverPainter5Key: String = "river_painter5"
	internal let kDMItemWinSkadiKey: String = "skadi"
	internal let kDMItemWinBfuryKey: String = "bfury"
	internal let kDMItemWinTranquilBootsKey: String = "tranquil_boots"
	internal let kDMItemWinMjollnirKey: String = "mjollnir"
	internal let kDMItemWinPersKey: String = "pers"
	internal let kDMItemWinClaymoreKey: String = "claymore"
	internal let kDMItemWinLifestealKey: String = "lifesteal"
	internal let kDMItemWinBlightStoneKey: String = "blight_stone"
	internal let kDMItemWinMonkeyKingBarKey: String = "monkey_king_bar"
	internal let kDMItemWinUltimateOrbKey: String = "ultimate_orb"
	internal let kDMItemWinFlaskKey: String = "flask"
	internal let kDMItemWinDesolatorKey: String = "desolator"
	internal let kDMItemWinStoutShieldKey: String = "stout_shield"
	internal let kDMItemWinOrchidKey: String = "orchid"
	internal let kDMItemWinAncientJanggoKey: String = "ancient_janggo"
	internal let kDMItemWinMagicStickKey: String = "magic_stick"
	internal let kDMItemWinPoorMansShieldKey: String = "poor_mans_shield"
	internal let kDMItemWinAssaultKey: String = "assault"
	internal let kDMItemWinBranchesKey: String = "branches"
	internal let kDMItemWinBladesOfAttackKey: String = "blades_of_attack"
	internal let kDMItemWinRingOfBasiliusKey: String = "ring_of_basilius"
	internal let kDMItemWinMaelstromKey: String = "maelstrom"
	internal let kDMItemWinBeltOfStrengthKey: String = "belt_of_strength"
	internal let kDMItemWinRingOfRegenKey: String = "ring_of_regen"
	internal let kDMItemWinCrimsonGuardKey: String = "crimson_guard"
	internal let kDMItemWinMedallionOfCourageKey: String = "medallion_of_courage"
	internal let kDMItemWinDemonEdgeKey: String = "demon_edge"
	internal let kDMItemWinUrnOfShadowsKey: String = "urn_of_shadows"
	internal let kDMItemWinOgreAxeKey: String = "ogre_axe"
	internal let kDMItemWinCircletKey: String = "circlet"
	internal let kDMItemWinBucklerKey: String = "buckler"
	internal let kDMItemWinTomeOfKnowledgeKey: String = "tome_of_knowledge"
	internal let kDMItemWinDustKey: String = "dust"
	internal let kDMItemWinUltimateScepterKey: String = "ultimate_scepter"
	internal let kDMItemWinVitalityBoosterKey: String = "vitality_booster"
	internal let kDMItemWinRingOfProtectionKey: String = "ring_of_protection"
	internal let kDMItemWinPlatemailKey: String = "platemail"
	internal let kDMItemWinSangeAndYashaKey: String = "sange_and_yasha"
	internal let kDMItemWinHyperstoneKey: String = "hyperstone"
	internal let kDMItemWinAbyssalBladeKey: String = "abyssal_blade"
	internal let kDMItemWinBasherKey: String = "basher"
	internal let kDMItemWinWardSentryKey: String = "ward_sentry"
	internal let kDMItemWinHeaddressKey: String = "headdress"
	internal let kDMItemWinBootsKey: String = "boots"
	internal let kDMItemWinSangeKey: String = "sange"
	internal let kDMItemWinTpscrollKey: String = "tpscroll"
	internal let kDMItemWinBroadswordKey: String = "broadsword"
	internal let kDMItemWinQuellingBladeKey: String = "quelling_blade"
	internal let kDMItemWinOrbOfVenomKey: String = "orb_of_venom"
	internal let kDMItemWinGlovesKey: String = "gloves"
	internal let kDMItemWinHandOfMidasKey: String = "hand_of_midas"
	internal let kDMItemWinArmletKey: String = "armlet"
	internal let kDMItemWinMoonShardKey: String = "moon_shard"
	internal let kDMItemWinCourierKey: String = "courier"
	internal let kDMItemWinShadowAmuletKey: String = "shadow_amulet"
	internal let kDMItemWinPowerTreadsKey: String = "power_treads"
	internal let kDMItemWinPipeKey: String = "pipe"
	internal let kDMItemWinBootsOfElvesKey: String = "boots_of_elves"
	internal let kDMItemWinInvisSwordKey: String = "invis_sword"
	internal let kDMItemWinGauntletsKey: String = "gauntlets"
	internal let kDMItemWinTalismanOfEvasionKey: String = "talisman_of_evasion"
	internal let kDMItemWinHelmOfIronWillKey: String = "helm_of_iron_will"
	internal let kDMItemWinVoidStoneKey: String = "void_stone"
	internal let kDMItemWinSilverEdgeKey: String = "silver_edge"
	internal let kDMItemWinReaverKey: String = "reaver"
	internal let kDMItemWinRingOfHealthKey: String = "ring_of_health"
	internal let kDMItemWinHoodOfDefianceKey: String = "hood_of_defiance"
	internal let kDMItemWinMantaKey: String = "manta"
	internal let kDMItemWinPointBoosterKey: String = "point_booster"
	internal let kDMItemWinVanguardKey: String = "vanguard"
	internal let kDMItemWinBladeOfAlacrityKey: String = "blade_of_alacrity"
	internal let kDMItemWinStaffOfWizardryKey: String = "staff_of_wizardry"
	internal let kDMItemWinInfusedRaindropKey: String = "infused_raindrop"
	internal let kDMItemWinWardObserverKey: String = "ward_observer"
	internal let kDMItemWinTravelBootsKey: String = "travel_boots"
	internal let kDMItemWinBlackKingBarKey: String = "black_king_bar"
	internal let kDMItemWinPhaseBootsKey: String = "phase_boots"
	internal let kDMItemWinFaerieFireKey: String = "faerie_fire"
	internal let kDMItemWinVladmirKey: String = "vladmir"
	internal let kDMItemWinSobiMaskKey: String = "sobi_mask"
	internal let kDMItemWinWindLaceKey: String = "wind_lace"
	internal let kDMItemWinGreaterCritKey: String = "greater_crit"
	internal let kDMItemWinSolarCrestKey: String = "solar_crest"
	internal let kDMItemWinFlyingCourierKey: String = "flying_courier"
	internal let kDMItemWinMithrilHammerKey: String = "mithril_hammer"
	internal let kDMItemWinYashaKey: String = "yasha"
	internal let kDMItemWinWraithBandKey: String = "wraith_band"
	internal let kDMItemWinHeartKey: String = "heart"
	internal let kDMItemWinClarityKey: String = "clarity"
	internal let kDMItemWinBloodthornKey: String = "bloodthorn"
	internal let kDMItemWinTravelBoots2Key: String = "travel_boots_2"
	internal let kDMItemWinQuarterstaffKey: String = "quarterstaff"
	internal let kDMItemWinOblivionStaffKey: String = "oblivion_staff"
	internal let kDMItemWinMagicWandKey: String = "magic_wand"
	internal let kDMItemWinGlimmerCapeKey: String = "glimmer_cape"
	internal let kDMItemWinRingOfAquilaKey: String = "ring_of_aquila"
	internal let kDMItemWinSlippersKey: String = "slippers"
	internal let kDMItemWinLesserCritKey: String = "lesser_crit"
	internal let kDMItemWinJavelinKey: String = "javelin"
	internal let kDMItemWinHelmOfTheDominatorKey: String = "helm_of_the_dominator"
	internal let kDMItemWinCloakKey: String = "cloak"
	internal let kDMItemWinGemKey: String = "gem"
	internal let kDMItemWinBracerKey: String = "bracer"
	internal let kDMItemWinRobeKey: String = "robe"
	internal let kDMItemWinBottleKey: String = "bottle"
	internal let kDMItemWinChainmailKey: String = "chainmail"


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
		energyBooster = json[kDMItemWinEnergyBoosterKey].int
		tango = json[kDMItemWinTangoKey].int
		aetherLens = json[kDMItemWinAetherLensKey].int
		enchantedMango = json[kDMItemWinEnchantedMangoKey].int
		riverPainter5 = json[kDMItemWinRiverPainter5Key].int
		skadi = json[kDMItemWinSkadiKey].int
		bfury = json[kDMItemWinBfuryKey].int
		tranquilBoots = json[kDMItemWinTranquilBootsKey].int
		mjollnir = json[kDMItemWinMjollnirKey].int
		pers = json[kDMItemWinPersKey].int
		claymore = json[kDMItemWinClaymoreKey].int
		lifesteal = json[kDMItemWinLifestealKey].int
		blightStone = json[kDMItemWinBlightStoneKey].int
		monkeyKingBar = json[kDMItemWinMonkeyKingBarKey].int
		ultimateOrb = json[kDMItemWinUltimateOrbKey].int
		flask = json[kDMItemWinFlaskKey].int
		desolator = json[kDMItemWinDesolatorKey].int
		stoutShield = json[kDMItemWinStoutShieldKey].int
		orchid = json[kDMItemWinOrchidKey].int
		ancientJanggo = json[kDMItemWinAncientJanggoKey].int
		magicStick = json[kDMItemWinMagicStickKey].int
		poorMansShield = json[kDMItemWinPoorMansShieldKey].int
		assault = json[kDMItemWinAssaultKey].int
		branches = json[kDMItemWinBranchesKey].int
		bladesOfAttack = json[kDMItemWinBladesOfAttackKey].int
		ringOfBasilius = json[kDMItemWinRingOfBasiliusKey].int
		maelstrom = json[kDMItemWinMaelstromKey].int
		beltOfStrength = json[kDMItemWinBeltOfStrengthKey].int
		ringOfRegen = json[kDMItemWinRingOfRegenKey].int
		crimsonGuard = json[kDMItemWinCrimsonGuardKey].int
		medallionOfCourage = json[kDMItemWinMedallionOfCourageKey].int
		demonEdge = json[kDMItemWinDemonEdgeKey].int
		urnOfShadows = json[kDMItemWinUrnOfShadowsKey].int
		ogreAxe = json[kDMItemWinOgreAxeKey].int
		circlet = json[kDMItemWinCircletKey].int
		buckler = json[kDMItemWinBucklerKey].int
		tomeOfKnowledge = json[kDMItemWinTomeOfKnowledgeKey].int
		dust = json[kDMItemWinDustKey].int
		ultimateScepter = json[kDMItemWinUltimateScepterKey].int
		vitalityBooster = json[kDMItemWinVitalityBoosterKey].int
		ringOfProtection = json[kDMItemWinRingOfProtectionKey].int
		platemail = json[kDMItemWinPlatemailKey].int
		sangeAndYasha = json[kDMItemWinSangeAndYashaKey].int
		hyperstone = json[kDMItemWinHyperstoneKey].int
		abyssalBlade = json[kDMItemWinAbyssalBladeKey].int
		basher = json[kDMItemWinBasherKey].int
		wardSentry = json[kDMItemWinWardSentryKey].int
		headdress = json[kDMItemWinHeaddressKey].int
		boots = json[kDMItemWinBootsKey].int
		sange = json[kDMItemWinSangeKey].int
		tpscroll = json[kDMItemWinTpscrollKey].int
		broadsword = json[kDMItemWinBroadswordKey].int
		quellingBlade = json[kDMItemWinQuellingBladeKey].int
		orbOfVenom = json[kDMItemWinOrbOfVenomKey].int
		gloves = json[kDMItemWinGlovesKey].int
		handOfMidas = json[kDMItemWinHandOfMidasKey].int
		armlet = json[kDMItemWinArmletKey].int
		moonShard = json[kDMItemWinMoonShardKey].int
		courier = json[kDMItemWinCourierKey].int
		shadowAmulet = json[kDMItemWinShadowAmuletKey].int
		powerTreads = json[kDMItemWinPowerTreadsKey].int
		pipe = json[kDMItemWinPipeKey].int
		bootsOfElves = json[kDMItemWinBootsOfElvesKey].int
		invisSword = json[kDMItemWinInvisSwordKey].int
		gauntlets = json[kDMItemWinGauntletsKey].int
		talismanOfEvasion = json[kDMItemWinTalismanOfEvasionKey].int
		helmOfIronWill = json[kDMItemWinHelmOfIronWillKey].int
		voidStone = json[kDMItemWinVoidStoneKey].int
		silverEdge = json[kDMItemWinSilverEdgeKey].int
		reaver = json[kDMItemWinReaverKey].int
		ringOfHealth = json[kDMItemWinRingOfHealthKey].int
		hoodOfDefiance = json[kDMItemWinHoodOfDefianceKey].int
		manta = json[kDMItemWinMantaKey].int
		pointBooster = json[kDMItemWinPointBoosterKey].int
		vanguard = json[kDMItemWinVanguardKey].int
		bladeOfAlacrity = json[kDMItemWinBladeOfAlacrityKey].int
		staffOfWizardry = json[kDMItemWinStaffOfWizardryKey].int
		infusedRaindrop = json[kDMItemWinInfusedRaindropKey].int
		wardObserver = json[kDMItemWinWardObserverKey].int
		travelBoots = json[kDMItemWinTravelBootsKey].int
		blackKingBar = json[kDMItemWinBlackKingBarKey].int
		phaseBoots = json[kDMItemWinPhaseBootsKey].int
		faerieFire = json[kDMItemWinFaerieFireKey].int
		vladmir = json[kDMItemWinVladmirKey].int
		sobiMask = json[kDMItemWinSobiMaskKey].int
		windLace = json[kDMItemWinWindLaceKey].int
		greaterCrit = json[kDMItemWinGreaterCritKey].int
		solarCrest = json[kDMItemWinSolarCrestKey].int
		flyingCourier = json[kDMItemWinFlyingCourierKey].int
		mithrilHammer = json[kDMItemWinMithrilHammerKey].int
		yasha = json[kDMItemWinYashaKey].int
		wraithBand = json[kDMItemWinWraithBandKey].int
		heart = json[kDMItemWinHeartKey].int
		clarity = json[kDMItemWinClarityKey].int
		bloodthorn = json[kDMItemWinBloodthornKey].int
		travelBoots2 = json[kDMItemWinTravelBoots2Key].int
		quarterstaff = json[kDMItemWinQuarterstaffKey].int
		oblivionStaff = json[kDMItemWinOblivionStaffKey].int
		magicWand = json[kDMItemWinMagicWandKey].int
		glimmerCape = json[kDMItemWinGlimmerCapeKey].int
		ringOfAquila = json[kDMItemWinRingOfAquilaKey].int
		slippers = json[kDMItemWinSlippersKey].int
		lesserCrit = json[kDMItemWinLesserCritKey].int
		javelin = json[kDMItemWinJavelinKey].int
		helmOfTheDominator = json[kDMItemWinHelmOfTheDominatorKey].int
		cloak = json[kDMItemWinCloakKey].int
		gem = json[kDMItemWinGemKey].int
		bracer = json[kDMItemWinBracerKey].int
		robe = json[kDMItemWinRobeKey].int
		bottle = json[kDMItemWinBottleKey].int
		chainmail = json[kDMItemWinChainmailKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if energyBooster != nil {
			dictionary.updateValue(energyBooster!, forKey: kDMItemWinEnergyBoosterKey)
		}
		if tango != nil {
			dictionary.updateValue(tango!, forKey: kDMItemWinTangoKey)
		}
		if aetherLens != nil {
			dictionary.updateValue(aetherLens!, forKey: kDMItemWinAetherLensKey)
		}
		if enchantedMango != nil {
			dictionary.updateValue(enchantedMango!, forKey: kDMItemWinEnchantedMangoKey)
		}
		if riverPainter5 != nil {
			dictionary.updateValue(riverPainter5!, forKey: kDMItemWinRiverPainter5Key)
		}
		if skadi != nil {
			dictionary.updateValue(skadi!, forKey: kDMItemWinSkadiKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury!, forKey: kDMItemWinBfuryKey)
		}
		if tranquilBoots != nil {
			dictionary.updateValue(tranquilBoots!, forKey: kDMItemWinTranquilBootsKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir!, forKey: kDMItemWinMjollnirKey)
		}
		if pers != nil {
			dictionary.updateValue(pers!, forKey: kDMItemWinPersKey)
		}
		if claymore != nil {
			dictionary.updateValue(claymore!, forKey: kDMItemWinClaymoreKey)
		}
		if lifesteal != nil {
			dictionary.updateValue(lifesteal!, forKey: kDMItemWinLifestealKey)
		}
		if blightStone != nil {
			dictionary.updateValue(blightStone!, forKey: kDMItemWinBlightStoneKey)
		}
		if monkeyKingBar != nil {
			dictionary.updateValue(monkeyKingBar!, forKey: kDMItemWinMonkeyKingBarKey)
		}
		if ultimateOrb != nil {
			dictionary.updateValue(ultimateOrb!, forKey: kDMItemWinUltimateOrbKey)
		}
		if flask != nil {
			dictionary.updateValue(flask!, forKey: kDMItemWinFlaskKey)
		}
		if desolator != nil {
			dictionary.updateValue(desolator!, forKey: kDMItemWinDesolatorKey)
		}
		if stoutShield != nil {
			dictionary.updateValue(stoutShield!, forKey: kDMItemWinStoutShieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid!, forKey: kDMItemWinOrchidKey)
		}
		if ancientJanggo != nil {
			dictionary.updateValue(ancientJanggo!, forKey: kDMItemWinAncientJanggoKey)
		}
		if magicStick != nil {
			dictionary.updateValue(magicStick!, forKey: kDMItemWinMagicStickKey)
		}
		if poorMansShield != nil {
			dictionary.updateValue(poorMansShield!, forKey: kDMItemWinPoorMansShieldKey)
		}
		if assault != nil {
			dictionary.updateValue(assault!, forKey: kDMItemWinAssaultKey)
		}
		if branches != nil {
			dictionary.updateValue(branches!, forKey: kDMItemWinBranchesKey)
		}
		if bladesOfAttack != nil {
			dictionary.updateValue(bladesOfAttack!, forKey: kDMItemWinBladesOfAttackKey)
		}
		if ringOfBasilius != nil {
			dictionary.updateValue(ringOfBasilius!, forKey: kDMItemWinRingOfBasiliusKey)
		}
		if maelstrom != nil {
			dictionary.updateValue(maelstrom!, forKey: kDMItemWinMaelstromKey)
		}
		if beltOfStrength != nil {
			dictionary.updateValue(beltOfStrength!, forKey: kDMItemWinBeltOfStrengthKey)
		}
		if ringOfRegen != nil {
			dictionary.updateValue(ringOfRegen!, forKey: kDMItemWinRingOfRegenKey)
		}
		if crimsonGuard != nil {
			dictionary.updateValue(crimsonGuard!, forKey: kDMItemWinCrimsonGuardKey)
		}
		if medallionOfCourage != nil {
			dictionary.updateValue(medallionOfCourage!, forKey: kDMItemWinMedallionOfCourageKey)
		}
		if demonEdge != nil {
			dictionary.updateValue(demonEdge!, forKey: kDMItemWinDemonEdgeKey)
		}
		if urnOfShadows != nil {
			dictionary.updateValue(urnOfShadows!, forKey: kDMItemWinUrnOfShadowsKey)
		}
		if ogreAxe != nil {
			dictionary.updateValue(ogreAxe!, forKey: kDMItemWinOgreAxeKey)
		}
		if circlet != nil {
			dictionary.updateValue(circlet!, forKey: kDMItemWinCircletKey)
		}
		if buckler != nil {
			dictionary.updateValue(buckler!, forKey: kDMItemWinBucklerKey)
		}
		if tomeOfKnowledge != nil {
			dictionary.updateValue(tomeOfKnowledge!, forKey: kDMItemWinTomeOfKnowledgeKey)
		}
		if dust != nil {
			dictionary.updateValue(dust!, forKey: kDMItemWinDustKey)
		}
		if ultimateScepter != nil {
			dictionary.updateValue(ultimateScepter!, forKey: kDMItemWinUltimateScepterKey)
		}
		if vitalityBooster != nil {
			dictionary.updateValue(vitalityBooster!, forKey: kDMItemWinVitalityBoosterKey)
		}
		if ringOfProtection != nil {
			dictionary.updateValue(ringOfProtection!, forKey: kDMItemWinRingOfProtectionKey)
		}
		if platemail != nil {
			dictionary.updateValue(platemail!, forKey: kDMItemWinPlatemailKey)
		}
		if sangeAndYasha != nil {
			dictionary.updateValue(sangeAndYasha!, forKey: kDMItemWinSangeAndYashaKey)
		}
		if hyperstone != nil {
			dictionary.updateValue(hyperstone!, forKey: kDMItemWinHyperstoneKey)
		}
		if abyssalBlade != nil {
			dictionary.updateValue(abyssalBlade!, forKey: kDMItemWinAbyssalBladeKey)
		}
		if basher != nil {
			dictionary.updateValue(basher!, forKey: kDMItemWinBasherKey)
		}
		if wardSentry != nil {
			dictionary.updateValue(wardSentry!, forKey: kDMItemWinWardSentryKey)
		}
		if headdress != nil {
			dictionary.updateValue(headdress!, forKey: kDMItemWinHeaddressKey)
		}
		if boots != nil {
			dictionary.updateValue(boots!, forKey: kDMItemWinBootsKey)
		}
		if sange != nil {
			dictionary.updateValue(sange!, forKey: kDMItemWinSangeKey)
		}
		if tpscroll != nil {
			dictionary.updateValue(tpscroll!, forKey: kDMItemWinTpscrollKey)
		}
		if broadsword != nil {
			dictionary.updateValue(broadsword!, forKey: kDMItemWinBroadswordKey)
		}
		if quellingBlade != nil {
			dictionary.updateValue(quellingBlade!, forKey: kDMItemWinQuellingBladeKey)
		}
		if orbOfVenom != nil {
			dictionary.updateValue(orbOfVenom!, forKey: kDMItemWinOrbOfVenomKey)
		}
		if gloves != nil {
			dictionary.updateValue(gloves!, forKey: kDMItemWinGlovesKey)
		}
		if handOfMidas != nil {
			dictionary.updateValue(handOfMidas!, forKey: kDMItemWinHandOfMidasKey)
		}
		if armlet != nil {
			dictionary.updateValue(armlet!, forKey: kDMItemWinArmletKey)
		}
		if moonShard != nil {
			dictionary.updateValue(moonShard!, forKey: kDMItemWinMoonShardKey)
		}
		if courier != nil {
			dictionary.updateValue(courier!, forKey: kDMItemWinCourierKey)
		}
		if shadowAmulet != nil {
			dictionary.updateValue(shadowAmulet!, forKey: kDMItemWinShadowAmuletKey)
		}
		if powerTreads != nil {
			dictionary.updateValue(powerTreads!, forKey: kDMItemWinPowerTreadsKey)
		}
		if pipe != nil {
			dictionary.updateValue(pipe!, forKey: kDMItemWinPipeKey)
		}
		if bootsOfElves != nil {
			dictionary.updateValue(bootsOfElves!, forKey: kDMItemWinBootsOfElvesKey)
		}
		if invisSword != nil {
			dictionary.updateValue(invisSword!, forKey: kDMItemWinInvisSwordKey)
		}
		if gauntlets != nil {
			dictionary.updateValue(gauntlets!, forKey: kDMItemWinGauntletsKey)
		}
		if talismanOfEvasion != nil {
			dictionary.updateValue(talismanOfEvasion!, forKey: kDMItemWinTalismanOfEvasionKey)
		}
		if helmOfIronWill != nil {
			dictionary.updateValue(helmOfIronWill!, forKey: kDMItemWinHelmOfIronWillKey)
		}
		if voidStone != nil {
			dictionary.updateValue(voidStone!, forKey: kDMItemWinVoidStoneKey)
		}
		if silverEdge != nil {
			dictionary.updateValue(silverEdge!, forKey: kDMItemWinSilverEdgeKey)
		}
		if reaver != nil {
			dictionary.updateValue(reaver!, forKey: kDMItemWinReaverKey)
		}
		if ringOfHealth != nil {
			dictionary.updateValue(ringOfHealth!, forKey: kDMItemWinRingOfHealthKey)
		}
		if hoodOfDefiance != nil {
			dictionary.updateValue(hoodOfDefiance!, forKey: kDMItemWinHoodOfDefianceKey)
		}
		if manta != nil {
			dictionary.updateValue(manta!, forKey: kDMItemWinMantaKey)
		}
		if pointBooster != nil {
			dictionary.updateValue(pointBooster!, forKey: kDMItemWinPointBoosterKey)
		}
		if vanguard != nil {
			dictionary.updateValue(vanguard!, forKey: kDMItemWinVanguardKey)
		}
		if bladeOfAlacrity != nil {
			dictionary.updateValue(bladeOfAlacrity!, forKey: kDMItemWinBladeOfAlacrityKey)
		}
		if staffOfWizardry != nil {
			dictionary.updateValue(staffOfWizardry!, forKey: kDMItemWinStaffOfWizardryKey)
		}
		if infusedRaindrop != nil {
			dictionary.updateValue(infusedRaindrop!, forKey: kDMItemWinInfusedRaindropKey)
		}
		if wardObserver != nil {
			dictionary.updateValue(wardObserver!, forKey: kDMItemWinWardObserverKey)
		}
		if travelBoots != nil {
			dictionary.updateValue(travelBoots!, forKey: kDMItemWinTravelBootsKey)
		}
		if blackKingBar != nil {
			dictionary.updateValue(blackKingBar!, forKey: kDMItemWinBlackKingBarKey)
		}
		if phaseBoots != nil {
			dictionary.updateValue(phaseBoots!, forKey: kDMItemWinPhaseBootsKey)
		}
		if faerieFire != nil {
			dictionary.updateValue(faerieFire!, forKey: kDMItemWinFaerieFireKey)
		}
		if vladmir != nil {
			dictionary.updateValue(vladmir!, forKey: kDMItemWinVladmirKey)
		}
		if sobiMask != nil {
			dictionary.updateValue(sobiMask!, forKey: kDMItemWinSobiMaskKey)
		}
		if windLace != nil {
			dictionary.updateValue(windLace!, forKey: kDMItemWinWindLaceKey)
		}
		if greaterCrit != nil {
			dictionary.updateValue(greaterCrit!, forKey: kDMItemWinGreaterCritKey)
		}
		if solarCrest != nil {
			dictionary.updateValue(solarCrest!, forKey: kDMItemWinSolarCrestKey)
		}
		if flyingCourier != nil {
			dictionary.updateValue(flyingCourier!, forKey: kDMItemWinFlyingCourierKey)
		}
		if mithrilHammer != nil {
			dictionary.updateValue(mithrilHammer!, forKey: kDMItemWinMithrilHammerKey)
		}
		if yasha != nil {
			dictionary.updateValue(yasha!, forKey: kDMItemWinYashaKey)
		}
		if wraithBand != nil {
			dictionary.updateValue(wraithBand!, forKey: kDMItemWinWraithBandKey)
		}
		if heart != nil {
			dictionary.updateValue(heart!, forKey: kDMItemWinHeartKey)
		}
		if clarity != nil {
			dictionary.updateValue(clarity!, forKey: kDMItemWinClarityKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn!, forKey: kDMItemWinBloodthornKey)
		}
		if travelBoots2 != nil {
			dictionary.updateValue(travelBoots2!, forKey: kDMItemWinTravelBoots2Key)
		}
		if quarterstaff != nil {
			dictionary.updateValue(quarterstaff!, forKey: kDMItemWinQuarterstaffKey)
		}
		if oblivionStaff != nil {
			dictionary.updateValue(oblivionStaff!, forKey: kDMItemWinOblivionStaffKey)
		}
		if magicWand != nil {
			dictionary.updateValue(magicWand!, forKey: kDMItemWinMagicWandKey)
		}
		if glimmerCape != nil {
			dictionary.updateValue(glimmerCape!, forKey: kDMItemWinGlimmerCapeKey)
		}
		if ringOfAquila != nil {
			dictionary.updateValue(ringOfAquila!, forKey: kDMItemWinRingOfAquilaKey)
		}
		if slippers != nil {
			dictionary.updateValue(slippers!, forKey: kDMItemWinSlippersKey)
		}
		if lesserCrit != nil {
			dictionary.updateValue(lesserCrit!, forKey: kDMItemWinLesserCritKey)
		}
		if javelin != nil {
			dictionary.updateValue(javelin!, forKey: kDMItemWinJavelinKey)
		}
		if helmOfTheDominator != nil {
			dictionary.updateValue(helmOfTheDominator!, forKey: kDMItemWinHelmOfTheDominatorKey)
		}
		if cloak != nil {
			dictionary.updateValue(cloak!, forKey: kDMItemWinCloakKey)
		}
		if gem != nil {
			dictionary.updateValue(gem!, forKey: kDMItemWinGemKey)
		}
		if bracer != nil {
			dictionary.updateValue(bracer!, forKey: kDMItemWinBracerKey)
		}
		if robe != nil {
			dictionary.updateValue(robe!, forKey: kDMItemWinRobeKey)
		}
		if bottle != nil {
			dictionary.updateValue(bottle!, forKey: kDMItemWinBottleKey)
		}
		if chainmail != nil {
			dictionary.updateValue(chainmail!, forKey: kDMItemWinChainmailKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.energyBooster = aDecoder.decodeObjectForKey(kDMItemWinEnergyBoosterKey) as? Int
		self.tango = aDecoder.decodeObjectForKey(kDMItemWinTangoKey) as? Int
		self.aetherLens = aDecoder.decodeObjectForKey(kDMItemWinAetherLensKey) as? Int
		self.enchantedMango = aDecoder.decodeObjectForKey(kDMItemWinEnchantedMangoKey) as? Int
		self.riverPainter5 = aDecoder.decodeObjectForKey(kDMItemWinRiverPainter5Key) as? Int
		self.skadi = aDecoder.decodeObjectForKey(kDMItemWinSkadiKey) as? Int
		self.bfury = aDecoder.decodeObjectForKey(kDMItemWinBfuryKey) as? Int
		self.tranquilBoots = aDecoder.decodeObjectForKey(kDMItemWinTranquilBootsKey) as? Int
		self.mjollnir = aDecoder.decodeObjectForKey(kDMItemWinMjollnirKey) as? Int
		self.pers = aDecoder.decodeObjectForKey(kDMItemWinPersKey) as? Int
		self.claymore = aDecoder.decodeObjectForKey(kDMItemWinClaymoreKey) as? Int
		self.lifesteal = aDecoder.decodeObjectForKey(kDMItemWinLifestealKey) as? Int
		self.blightStone = aDecoder.decodeObjectForKey(kDMItemWinBlightStoneKey) as? Int
		self.monkeyKingBar = aDecoder.decodeObjectForKey(kDMItemWinMonkeyKingBarKey) as? Int
		self.ultimateOrb = aDecoder.decodeObjectForKey(kDMItemWinUltimateOrbKey) as? Int
		self.flask = aDecoder.decodeObjectForKey(kDMItemWinFlaskKey) as? Int
		self.desolator = aDecoder.decodeObjectForKey(kDMItemWinDesolatorKey) as? Int
		self.stoutShield = aDecoder.decodeObjectForKey(kDMItemWinStoutShieldKey) as? Int
		self.orchid = aDecoder.decodeObjectForKey(kDMItemWinOrchidKey) as? Int
		self.ancientJanggo = aDecoder.decodeObjectForKey(kDMItemWinAncientJanggoKey) as? Int
		self.magicStick = aDecoder.decodeObjectForKey(kDMItemWinMagicStickKey) as? Int
		self.poorMansShield = aDecoder.decodeObjectForKey(kDMItemWinPoorMansShieldKey) as? Int
		self.assault = aDecoder.decodeObjectForKey(kDMItemWinAssaultKey) as? Int
		self.branches = aDecoder.decodeObjectForKey(kDMItemWinBranchesKey) as? Int
		self.bladesOfAttack = aDecoder.decodeObjectForKey(kDMItemWinBladesOfAttackKey) as? Int
		self.ringOfBasilius = aDecoder.decodeObjectForKey(kDMItemWinRingOfBasiliusKey) as? Int
		self.maelstrom = aDecoder.decodeObjectForKey(kDMItemWinMaelstromKey) as? Int
		self.beltOfStrength = aDecoder.decodeObjectForKey(kDMItemWinBeltOfStrengthKey) as? Int
		self.ringOfRegen = aDecoder.decodeObjectForKey(kDMItemWinRingOfRegenKey) as? Int
		self.crimsonGuard = aDecoder.decodeObjectForKey(kDMItemWinCrimsonGuardKey) as? Int
		self.medallionOfCourage = aDecoder.decodeObjectForKey(kDMItemWinMedallionOfCourageKey) as? Int
		self.demonEdge = aDecoder.decodeObjectForKey(kDMItemWinDemonEdgeKey) as? Int
		self.urnOfShadows = aDecoder.decodeObjectForKey(kDMItemWinUrnOfShadowsKey) as? Int
		self.ogreAxe = aDecoder.decodeObjectForKey(kDMItemWinOgreAxeKey) as? Int
		self.circlet = aDecoder.decodeObjectForKey(kDMItemWinCircletKey) as? Int
		self.buckler = aDecoder.decodeObjectForKey(kDMItemWinBucklerKey) as? Int
		self.tomeOfKnowledge = aDecoder.decodeObjectForKey(kDMItemWinTomeOfKnowledgeKey) as? Int
		self.dust = aDecoder.decodeObjectForKey(kDMItemWinDustKey) as? Int
		self.ultimateScepter = aDecoder.decodeObjectForKey(kDMItemWinUltimateScepterKey) as? Int
		self.vitalityBooster = aDecoder.decodeObjectForKey(kDMItemWinVitalityBoosterKey) as? Int
		self.ringOfProtection = aDecoder.decodeObjectForKey(kDMItemWinRingOfProtectionKey) as? Int
		self.platemail = aDecoder.decodeObjectForKey(kDMItemWinPlatemailKey) as? Int
		self.sangeAndYasha = aDecoder.decodeObjectForKey(kDMItemWinSangeAndYashaKey) as? Int
		self.hyperstone = aDecoder.decodeObjectForKey(kDMItemWinHyperstoneKey) as? Int
		self.abyssalBlade = aDecoder.decodeObjectForKey(kDMItemWinAbyssalBladeKey) as? Int
		self.basher = aDecoder.decodeObjectForKey(kDMItemWinBasherKey) as? Int
		self.wardSentry = aDecoder.decodeObjectForKey(kDMItemWinWardSentryKey) as? Int
		self.headdress = aDecoder.decodeObjectForKey(kDMItemWinHeaddressKey) as? Int
		self.boots = aDecoder.decodeObjectForKey(kDMItemWinBootsKey) as? Int
		self.sange = aDecoder.decodeObjectForKey(kDMItemWinSangeKey) as? Int
		self.tpscroll = aDecoder.decodeObjectForKey(kDMItemWinTpscrollKey) as? Int
		self.broadsword = aDecoder.decodeObjectForKey(kDMItemWinBroadswordKey) as? Int
		self.quellingBlade = aDecoder.decodeObjectForKey(kDMItemWinQuellingBladeKey) as? Int
		self.orbOfVenom = aDecoder.decodeObjectForKey(kDMItemWinOrbOfVenomKey) as? Int
		self.gloves = aDecoder.decodeObjectForKey(kDMItemWinGlovesKey) as? Int
		self.handOfMidas = aDecoder.decodeObjectForKey(kDMItemWinHandOfMidasKey) as? Int
		self.armlet = aDecoder.decodeObjectForKey(kDMItemWinArmletKey) as? Int
		self.moonShard = aDecoder.decodeObjectForKey(kDMItemWinMoonShardKey) as? Int
		self.courier = aDecoder.decodeObjectForKey(kDMItemWinCourierKey) as? Int
		self.shadowAmulet = aDecoder.decodeObjectForKey(kDMItemWinShadowAmuletKey) as? Int
		self.powerTreads = aDecoder.decodeObjectForKey(kDMItemWinPowerTreadsKey) as? Int
		self.pipe = aDecoder.decodeObjectForKey(kDMItemWinPipeKey) as? Int
		self.bootsOfElves = aDecoder.decodeObjectForKey(kDMItemWinBootsOfElvesKey) as? Int
		self.invisSword = aDecoder.decodeObjectForKey(kDMItemWinInvisSwordKey) as? Int
		self.gauntlets = aDecoder.decodeObjectForKey(kDMItemWinGauntletsKey) as? Int
		self.talismanOfEvasion = aDecoder.decodeObjectForKey(kDMItemWinTalismanOfEvasionKey) as? Int
		self.helmOfIronWill = aDecoder.decodeObjectForKey(kDMItemWinHelmOfIronWillKey) as? Int
		self.voidStone = aDecoder.decodeObjectForKey(kDMItemWinVoidStoneKey) as? Int
		self.silverEdge = aDecoder.decodeObjectForKey(kDMItemWinSilverEdgeKey) as? Int
		self.reaver = aDecoder.decodeObjectForKey(kDMItemWinReaverKey) as? Int
		self.ringOfHealth = aDecoder.decodeObjectForKey(kDMItemWinRingOfHealthKey) as? Int
		self.hoodOfDefiance = aDecoder.decodeObjectForKey(kDMItemWinHoodOfDefianceKey) as? Int
		self.manta = aDecoder.decodeObjectForKey(kDMItemWinMantaKey) as? Int
		self.pointBooster = aDecoder.decodeObjectForKey(kDMItemWinPointBoosterKey) as? Int
		self.vanguard = aDecoder.decodeObjectForKey(kDMItemWinVanguardKey) as? Int
		self.bladeOfAlacrity = aDecoder.decodeObjectForKey(kDMItemWinBladeOfAlacrityKey) as? Int
		self.staffOfWizardry = aDecoder.decodeObjectForKey(kDMItemWinStaffOfWizardryKey) as? Int
		self.infusedRaindrop = aDecoder.decodeObjectForKey(kDMItemWinInfusedRaindropKey) as? Int
		self.wardObserver = aDecoder.decodeObjectForKey(kDMItemWinWardObserverKey) as? Int
		self.travelBoots = aDecoder.decodeObjectForKey(kDMItemWinTravelBootsKey) as? Int
		self.blackKingBar = aDecoder.decodeObjectForKey(kDMItemWinBlackKingBarKey) as? Int
		self.phaseBoots = aDecoder.decodeObjectForKey(kDMItemWinPhaseBootsKey) as? Int
		self.faerieFire = aDecoder.decodeObjectForKey(kDMItemWinFaerieFireKey) as? Int
		self.vladmir = aDecoder.decodeObjectForKey(kDMItemWinVladmirKey) as? Int
		self.sobiMask = aDecoder.decodeObjectForKey(kDMItemWinSobiMaskKey) as? Int
		self.windLace = aDecoder.decodeObjectForKey(kDMItemWinWindLaceKey) as? Int
		self.greaterCrit = aDecoder.decodeObjectForKey(kDMItemWinGreaterCritKey) as? Int
		self.solarCrest = aDecoder.decodeObjectForKey(kDMItemWinSolarCrestKey) as? Int
		self.flyingCourier = aDecoder.decodeObjectForKey(kDMItemWinFlyingCourierKey) as? Int
		self.mithrilHammer = aDecoder.decodeObjectForKey(kDMItemWinMithrilHammerKey) as? Int
		self.yasha = aDecoder.decodeObjectForKey(kDMItemWinYashaKey) as? Int
		self.wraithBand = aDecoder.decodeObjectForKey(kDMItemWinWraithBandKey) as? Int
		self.heart = aDecoder.decodeObjectForKey(kDMItemWinHeartKey) as? Int
		self.clarity = aDecoder.decodeObjectForKey(kDMItemWinClarityKey) as? Int
		self.bloodthorn = aDecoder.decodeObjectForKey(kDMItemWinBloodthornKey) as? Int
		self.travelBoots2 = aDecoder.decodeObjectForKey(kDMItemWinTravelBoots2Key) as? Int
		self.quarterstaff = aDecoder.decodeObjectForKey(kDMItemWinQuarterstaffKey) as? Int
		self.oblivionStaff = aDecoder.decodeObjectForKey(kDMItemWinOblivionStaffKey) as? Int
		self.magicWand = aDecoder.decodeObjectForKey(kDMItemWinMagicWandKey) as? Int
		self.glimmerCape = aDecoder.decodeObjectForKey(kDMItemWinGlimmerCapeKey) as? Int
		self.ringOfAquila = aDecoder.decodeObjectForKey(kDMItemWinRingOfAquilaKey) as? Int
		self.slippers = aDecoder.decodeObjectForKey(kDMItemWinSlippersKey) as? Int
		self.lesserCrit = aDecoder.decodeObjectForKey(kDMItemWinLesserCritKey) as? Int
		self.javelin = aDecoder.decodeObjectForKey(kDMItemWinJavelinKey) as? Int
		self.helmOfTheDominator = aDecoder.decodeObjectForKey(kDMItemWinHelmOfTheDominatorKey) as? Int
		self.cloak = aDecoder.decodeObjectForKey(kDMItemWinCloakKey) as? Int
		self.gem = aDecoder.decodeObjectForKey(kDMItemWinGemKey) as? Int
		self.bracer = aDecoder.decodeObjectForKey(kDMItemWinBracerKey) as? Int
		self.robe = aDecoder.decodeObjectForKey(kDMItemWinRobeKey) as? Int
		self.bottle = aDecoder.decodeObjectForKey(kDMItemWinBottleKey) as? Int
		self.chainmail = aDecoder.decodeObjectForKey(kDMItemWinChainmailKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(energyBooster, forKey: kDMItemWinEnergyBoosterKey)
		aCoder.encodeObject(tango, forKey: kDMItemWinTangoKey)
		aCoder.encodeObject(aetherLens, forKey: kDMItemWinAetherLensKey)
		aCoder.encodeObject(enchantedMango, forKey: kDMItemWinEnchantedMangoKey)
		aCoder.encodeObject(riverPainter5, forKey: kDMItemWinRiverPainter5Key)
		aCoder.encodeObject(skadi, forKey: kDMItemWinSkadiKey)
		aCoder.encodeObject(bfury, forKey: kDMItemWinBfuryKey)
		aCoder.encodeObject(tranquilBoots, forKey: kDMItemWinTranquilBootsKey)
		aCoder.encodeObject(mjollnir, forKey: kDMItemWinMjollnirKey)
		aCoder.encodeObject(pers, forKey: kDMItemWinPersKey)
		aCoder.encodeObject(claymore, forKey: kDMItemWinClaymoreKey)
		aCoder.encodeObject(lifesteal, forKey: kDMItemWinLifestealKey)
		aCoder.encodeObject(blightStone, forKey: kDMItemWinBlightStoneKey)
		aCoder.encodeObject(monkeyKingBar, forKey: kDMItemWinMonkeyKingBarKey)
		aCoder.encodeObject(ultimateOrb, forKey: kDMItemWinUltimateOrbKey)
		aCoder.encodeObject(flask, forKey: kDMItemWinFlaskKey)
		aCoder.encodeObject(desolator, forKey: kDMItemWinDesolatorKey)
		aCoder.encodeObject(stoutShield, forKey: kDMItemWinStoutShieldKey)
		aCoder.encodeObject(orchid, forKey: kDMItemWinOrchidKey)
		aCoder.encodeObject(ancientJanggo, forKey: kDMItemWinAncientJanggoKey)
		aCoder.encodeObject(magicStick, forKey: kDMItemWinMagicStickKey)
		aCoder.encodeObject(poorMansShield, forKey: kDMItemWinPoorMansShieldKey)
		aCoder.encodeObject(assault, forKey: kDMItemWinAssaultKey)
		aCoder.encodeObject(branches, forKey: kDMItemWinBranchesKey)
		aCoder.encodeObject(bladesOfAttack, forKey: kDMItemWinBladesOfAttackKey)
		aCoder.encodeObject(ringOfBasilius, forKey: kDMItemWinRingOfBasiliusKey)
		aCoder.encodeObject(maelstrom, forKey: kDMItemWinMaelstromKey)
		aCoder.encodeObject(beltOfStrength, forKey: kDMItemWinBeltOfStrengthKey)
		aCoder.encodeObject(ringOfRegen, forKey: kDMItemWinRingOfRegenKey)
		aCoder.encodeObject(crimsonGuard, forKey: kDMItemWinCrimsonGuardKey)
		aCoder.encodeObject(medallionOfCourage, forKey: kDMItemWinMedallionOfCourageKey)
		aCoder.encodeObject(demonEdge, forKey: kDMItemWinDemonEdgeKey)
		aCoder.encodeObject(urnOfShadows, forKey: kDMItemWinUrnOfShadowsKey)
		aCoder.encodeObject(ogreAxe, forKey: kDMItemWinOgreAxeKey)
		aCoder.encodeObject(circlet, forKey: kDMItemWinCircletKey)
		aCoder.encodeObject(buckler, forKey: kDMItemWinBucklerKey)
		aCoder.encodeObject(tomeOfKnowledge, forKey: kDMItemWinTomeOfKnowledgeKey)
		aCoder.encodeObject(dust, forKey: kDMItemWinDustKey)
		aCoder.encodeObject(ultimateScepter, forKey: kDMItemWinUltimateScepterKey)
		aCoder.encodeObject(vitalityBooster, forKey: kDMItemWinVitalityBoosterKey)
		aCoder.encodeObject(ringOfProtection, forKey: kDMItemWinRingOfProtectionKey)
		aCoder.encodeObject(platemail, forKey: kDMItemWinPlatemailKey)
		aCoder.encodeObject(sangeAndYasha, forKey: kDMItemWinSangeAndYashaKey)
		aCoder.encodeObject(hyperstone, forKey: kDMItemWinHyperstoneKey)
		aCoder.encodeObject(abyssalBlade, forKey: kDMItemWinAbyssalBladeKey)
		aCoder.encodeObject(basher, forKey: kDMItemWinBasherKey)
		aCoder.encodeObject(wardSentry, forKey: kDMItemWinWardSentryKey)
		aCoder.encodeObject(headdress, forKey: kDMItemWinHeaddressKey)
		aCoder.encodeObject(boots, forKey: kDMItemWinBootsKey)
		aCoder.encodeObject(sange, forKey: kDMItemWinSangeKey)
		aCoder.encodeObject(tpscroll, forKey: kDMItemWinTpscrollKey)
		aCoder.encodeObject(broadsword, forKey: kDMItemWinBroadswordKey)
		aCoder.encodeObject(quellingBlade, forKey: kDMItemWinQuellingBladeKey)
		aCoder.encodeObject(orbOfVenom, forKey: kDMItemWinOrbOfVenomKey)
		aCoder.encodeObject(gloves, forKey: kDMItemWinGlovesKey)
		aCoder.encodeObject(handOfMidas, forKey: kDMItemWinHandOfMidasKey)
		aCoder.encodeObject(armlet, forKey: kDMItemWinArmletKey)
		aCoder.encodeObject(moonShard, forKey: kDMItemWinMoonShardKey)
		aCoder.encodeObject(courier, forKey: kDMItemWinCourierKey)
		aCoder.encodeObject(shadowAmulet, forKey: kDMItemWinShadowAmuletKey)
		aCoder.encodeObject(powerTreads, forKey: kDMItemWinPowerTreadsKey)
		aCoder.encodeObject(pipe, forKey: kDMItemWinPipeKey)
		aCoder.encodeObject(bootsOfElves, forKey: kDMItemWinBootsOfElvesKey)
		aCoder.encodeObject(invisSword, forKey: kDMItemWinInvisSwordKey)
		aCoder.encodeObject(gauntlets, forKey: kDMItemWinGauntletsKey)
		aCoder.encodeObject(talismanOfEvasion, forKey: kDMItemWinTalismanOfEvasionKey)
		aCoder.encodeObject(helmOfIronWill, forKey: kDMItemWinHelmOfIronWillKey)
		aCoder.encodeObject(voidStone, forKey: kDMItemWinVoidStoneKey)
		aCoder.encodeObject(silverEdge, forKey: kDMItemWinSilverEdgeKey)
		aCoder.encodeObject(reaver, forKey: kDMItemWinReaverKey)
		aCoder.encodeObject(ringOfHealth, forKey: kDMItemWinRingOfHealthKey)
		aCoder.encodeObject(hoodOfDefiance, forKey: kDMItemWinHoodOfDefianceKey)
		aCoder.encodeObject(manta, forKey: kDMItemWinMantaKey)
		aCoder.encodeObject(pointBooster, forKey: kDMItemWinPointBoosterKey)
		aCoder.encodeObject(vanguard, forKey: kDMItemWinVanguardKey)
		aCoder.encodeObject(bladeOfAlacrity, forKey: kDMItemWinBladeOfAlacrityKey)
		aCoder.encodeObject(staffOfWizardry, forKey: kDMItemWinStaffOfWizardryKey)
		aCoder.encodeObject(infusedRaindrop, forKey: kDMItemWinInfusedRaindropKey)
		aCoder.encodeObject(wardObserver, forKey: kDMItemWinWardObserverKey)
		aCoder.encodeObject(travelBoots, forKey: kDMItemWinTravelBootsKey)
		aCoder.encodeObject(blackKingBar, forKey: kDMItemWinBlackKingBarKey)
		aCoder.encodeObject(phaseBoots, forKey: kDMItemWinPhaseBootsKey)
		aCoder.encodeObject(faerieFire, forKey: kDMItemWinFaerieFireKey)
		aCoder.encodeObject(vladmir, forKey: kDMItemWinVladmirKey)
		aCoder.encodeObject(sobiMask, forKey: kDMItemWinSobiMaskKey)
		aCoder.encodeObject(windLace, forKey: kDMItemWinWindLaceKey)
		aCoder.encodeObject(greaterCrit, forKey: kDMItemWinGreaterCritKey)
		aCoder.encodeObject(solarCrest, forKey: kDMItemWinSolarCrestKey)
		aCoder.encodeObject(flyingCourier, forKey: kDMItemWinFlyingCourierKey)
		aCoder.encodeObject(mithrilHammer, forKey: kDMItemWinMithrilHammerKey)
		aCoder.encodeObject(yasha, forKey: kDMItemWinYashaKey)
		aCoder.encodeObject(wraithBand, forKey: kDMItemWinWraithBandKey)
		aCoder.encodeObject(heart, forKey: kDMItemWinHeartKey)
		aCoder.encodeObject(clarity, forKey: kDMItemWinClarityKey)
		aCoder.encodeObject(bloodthorn, forKey: kDMItemWinBloodthornKey)
		aCoder.encodeObject(travelBoots2, forKey: kDMItemWinTravelBoots2Key)
		aCoder.encodeObject(quarterstaff, forKey: kDMItemWinQuarterstaffKey)
		aCoder.encodeObject(oblivionStaff, forKey: kDMItemWinOblivionStaffKey)
		aCoder.encodeObject(magicWand, forKey: kDMItemWinMagicWandKey)
		aCoder.encodeObject(glimmerCape, forKey: kDMItemWinGlimmerCapeKey)
		aCoder.encodeObject(ringOfAquila, forKey: kDMItemWinRingOfAquilaKey)
		aCoder.encodeObject(slippers, forKey: kDMItemWinSlippersKey)
		aCoder.encodeObject(lesserCrit, forKey: kDMItemWinLesserCritKey)
		aCoder.encodeObject(javelin, forKey: kDMItemWinJavelinKey)
		aCoder.encodeObject(helmOfTheDominator, forKey: kDMItemWinHelmOfTheDominatorKey)
		aCoder.encodeObject(cloak, forKey: kDMItemWinCloakKey)
		aCoder.encodeObject(gem, forKey: kDMItemWinGemKey)
		aCoder.encodeObject(bracer, forKey: kDMItemWinBracerKey)
		aCoder.encodeObject(robe, forKey: kDMItemWinRobeKey)
		aCoder.encodeObject(bottle, forKey: kDMItemWinBottleKey)
		aCoder.encodeObject(chainmail, forKey: kDMItemWinChainmailKey)

    }

}
