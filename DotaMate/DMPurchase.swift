//
//  DMPurchase.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMPurchase: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMPurchaseEnergyBoosterKey: String = "energy_booster"
	internal let kDMPurchaseTangoKey: String = "tango"
	internal let kDMPurchaseRecipePipeKey: String = "recipe_pipe"
	internal let kDMPurchaseRecipeAncientJanggoKey: String = "recipe_ancient_janggo"
	internal let kDMPurchaseAetherLensKey: String = "aether_lens"
	internal let kDMPurchaseEnchantedMangoKey: String = "enchanted_mango"
	internal let kDMPurchaseRiverPainter5Key: String = "river_painter5"
	internal let kDMPurchaseRecipeVladmirKey: String = "recipe_vladmir"
	internal let kDMPurchaseRecipeYashaKey: String = "recipe_yasha"
	internal let kDMPurchaseRecipeHeartKey: String = "recipe_heart"
	internal let kDMPurchaseRecipeCrimsonGuardKey: String = "recipe_crimson_guard"
	internal let kDMPurchaseSkadiKey: String = "skadi"
	internal let kDMPurchaseBfuryKey: String = "bfury"
	internal let kDMPurchaseTranquilBootsKey: String = "tranquil_boots"
	internal let kDMPurchaseMjollnirKey: String = "mjollnir"
	internal let kDMPurchasePersKey: String = "pers"
	internal let kDMPurchaseClaymoreKey: String = "claymore"
	internal let kDMPurchaseLifestealKey: String = "lifesteal"
	internal let kDMPurchaseBlightStoneKey: String = "blight_stone"
	internal let kDMPurchaseMonkeyKingBarKey: String = "monkey_king_bar"
	internal let kDMPurchaseUltimateOrbKey: String = "ultimate_orb"
	internal let kDMPurchaseFlaskKey: String = "flask"
	internal let kDMPurchaseDesolatorKey: String = "desolator"
	internal let kDMPurchaseStoutShieldKey: String = "stout_shield"
	internal let kDMPurchaseOrchidKey: String = "orchid"
	internal let kDMPurchaseAncientJanggoKey: String = "ancient_janggo"
	internal let kDMPurchaseMagicStickKey: String = "magic_stick"
	internal let kDMPurchasePoorMansShieldKey: String = "poor_mans_shield"
	internal let kDMPurchaseAssaultKey: String = "assault"
	internal let kDMPurchaseBranchesKey: String = "branches"
	internal let kDMPurchaseBladesOfAttackKey: String = "blades_of_attack"
	internal let kDMPurchaseRingOfBasiliusKey: String = "ring_of_basilius"
	internal let kDMPurchaseMaelstromKey: String = "maelstrom"
	internal let kDMPurchaseBeltOfStrengthKey: String = "belt_of_strength"
	internal let kDMPurchaseRecipeTravelBootsKey: String = "recipe_travel_boots"
	internal let kDMPurchaseRecipeBucklerKey: String = "recipe_buckler"
	internal let kDMPurchaseRingOfRegenKey: String = "ring_of_regen"
	internal let kDMPurchaseCrimsonGuardKey: String = "crimson_guard"
	internal let kDMPurchaseMedallionOfCourageKey: String = "medallion_of_courage"
	internal let kDMPurchaseDemonEdgeKey: String = "demon_edge"
	internal let kDMPurchaseUrnOfShadowsKey: String = "urn_of_shadows"
	internal let kDMPurchaseRecipeBasherKey: String = "recipe_basher"
	internal let kDMPurchaseOgreAxeKey: String = "ogre_axe"
	internal let kDMPurchaseRecipeSilverEdgeKey: String = "recipe_silver_edge"
	internal let kDMPurchaseRecipeGreaterCritKey: String = "recipe_greater_crit"
	internal let kDMPurchaseCircletKey: String = "circlet"
	internal let kDMPurchaseBucklerKey: String = "buckler"
	internal let kDMPurchaseTomeOfKnowledgeKey: String = "tome_of_knowledge"
	internal let kDMPurchaseDustKey: String = "dust"
	internal let kDMPurchaseRecipeAetherLensKey: String = "recipe_aether_lens"
	internal let kDMPurchaseUltimateScepterKey: String = "ultimate_scepter"
	internal let kDMPurchaseVitalityBoosterKey: String = "vitality_booster"
	internal let kDMPurchaseRingOfProtectionKey: String = "ring_of_protection"
	internal let kDMPurchasePlatemailKey: String = "platemail"
	internal let kDMPurchaseRecipeWraithBandKey: String = "recipe_wraith_band"
	internal let kDMPurchaseSangeAndYashaKey: String = "sange_and_yasha"
	internal let kDMPurchaseHyperstoneKey: String = "hyperstone"
	internal let kDMPurchaseBasherKey: String = "basher"
	internal let kDMPurchaseWardSentryKey: String = "ward_sentry"
	internal let kDMPurchaseHeaddressKey: String = "headdress"
	internal let kDMPurchaseBootsKey: String = "boots"
	internal let kDMPurchaseSangeKey: String = "sange"
	internal let kDMPurchaseGlovesKey: String = "gloves"
	internal let kDMPurchaseTpscrollKey: String = "tpscroll"
	internal let kDMPurchaseMoonShardKey: String = "moon_shard"
	internal let kDMPurchaseBroadswordKey: String = "broadsword"
	internal let kDMPurchaseQuellingBladeKey: String = "quelling_blade"
	internal let kDMPurchaseAbyssalBladeKey: String = "abyssal_blade"
	internal let kDMPurchaseArmletKey: String = "armlet"
	internal let kDMPurchaseHandOfMidasKey: String = "hand_of_midas"
	internal let kDMPurchaseOrbOfVenomKey: String = "orb_of_venom"
	internal let kDMPurchaseCourierKey: String = "courier"
	internal let kDMPurchaseShadowAmuletKey: String = "shadow_amulet"
	internal let kDMPurchasePowerTreadsKey: String = "power_treads"
	internal let kDMPurchasePipeKey: String = "pipe"
	internal let kDMPurchaseWardDispenserKey: String = "ward_dispenser"
	internal let kDMPurchaseBootsOfElvesKey: String = "boots_of_elves"
	internal let kDMPurchaseInvisSwordKey: String = "invis_sword"
	internal let kDMPurchaseGauntletsKey: String = "gauntlets"
	internal let kDMPurchaseRecipeMantaKey: String = "recipe_manta"
	internal let kDMPurchaseHelmOfIronWillKey: String = "helm_of_iron_will"
	internal let kDMPurchaseTalismanOfEvasionKey: String = "talisman_of_evasion"
	internal let kDMPurchaseVoidStoneKey: String = "void_stone"
	internal let kDMPurchaseRecipeHandOfMidasKey: String = "recipe_hand_of_midas"
	internal let kDMPurchaseSilverEdgeKey: String = "silver_edge"
	internal let kDMPurchaseReaverKey: String = "reaver"
	internal let kDMPurchaseRingOfHealthKey: String = "ring_of_health"
	internal let kDMPurchasePointBoosterKey: String = "point_booster"
	internal let kDMPurchaseMantaKey: String = "manta"
	internal let kDMPurchaseHoodOfDefianceKey: String = "hood_of_defiance"
	internal let kDMPurchaseRecipeUrnOfShadowsKey: String = "recipe_urn_of_shadows"
	internal let kDMPurchaseRecipeHeaddressKey: String = "recipe_headdress"
	internal let kDMPurchaseVanguardKey: String = "vanguard"
	internal let kDMPurchaseRecipeArmletKey: String = "recipe_armlet"
	internal let kDMPurchaseBladeOfAlacrityKey: String = "blade_of_alacrity"
	internal let kDMPurchaseStaffOfWizardryKey: String = "staff_of_wizardry"
	internal let kDMPurchaseInfusedRaindropKey: String = "infused_raindrop"
	internal let kDMPurchaseRecipeAssaultKey: String = "recipe_assault"
	internal let kDMPurchaseRecipeBloodthornKey: String = "recipe_bloodthorn"
	internal let kDMPurchaseWardObserverKey: String = "ward_observer"
	internal let kDMPurchaseRecipeBlackKingBarKey: String = "recipe_black_king_bar"
	internal let kDMPurchaseTravelBootsKey: String = "travel_boots"
	internal let kDMPurchaseBlackKingBarKey: String = "black_king_bar"
	internal let kDMPurchasePhaseBootsKey: String = "phase_boots"
	internal let kDMPurchaseFaerieFireKey: String = "faerie_fire"
	internal let kDMPurchaseVladmirKey: String = "vladmir"
	internal let kDMPurchaseSobiMaskKey: String = "sobi_mask"
	internal let kDMPurchaseWindLaceKey: String = "wind_lace"
	internal let kDMPurchaseGreaterCritKey: String = "greater_crit"
	internal let kDMPurchaseSolarCrestKey: String = "solar_crest"
	internal let kDMPurchaseFlyingCourierKey: String = "flying_courier"
	internal let kDMPurchaseMithrilHammerKey: String = "mithril_hammer"
	internal let kDMPurchaseYashaKey: String = "yasha"
	internal let kDMPurchaseWraithBandKey: String = "wraith_band"
	internal let kDMPurchaseHeartKey: String = "heart"
	internal let kDMPurchaseClarityKey: String = "clarity"
	internal let kDMPurchaseBloodthornKey: String = "bloodthorn"
	internal let kDMPurchaseTravelBoots2Key: String = "travel_boots_2"
	internal let kDMPurchaseQuarterstaffKey: String = "quarterstaff"
	internal let kDMPurchaseRecipeMaelstromKey: String = "recipe_maelstrom"
	internal let kDMPurchaseOblivionStaffKey: String = "oblivion_staff"
	internal let kDMPurchaseMagicWandKey: String = "magic_wand"
	internal let kDMPurchaseRecipeBracerKey: String = "recipe_bracer"
	internal let kDMPurchaseGlimmerCapeKey: String = "glimmer_cape"
	internal let kDMPurchaseRingOfAquilaKey: String = "ring_of_aquila"
	internal let kDMPurchaseSlippersKey: String = "slippers"
	internal let kDMPurchaseLesserCritKey: String = "lesser_crit"
	internal let kDMPurchaseRecipeSangeKey: String = "recipe_sange"
	internal let kDMPurchaseJavelinKey: String = "javelin"
	internal let kDMPurchaseHelmOfTheDominatorKey: String = "helm_of_the_dominator"
	internal let kDMPurchaseCloakKey: String = "cloak"
	internal let kDMPurchaseRecipeAbyssalBladeKey: String = "recipe_abyssal_blade"
	internal let kDMPurchaseGemKey: String = "gem"
	internal let kDMPurchaseBracerKey: String = "bracer"
	internal let kDMPurchaseRobeKey: String = "robe"
	internal let kDMPurchaseRecipeOrchidKey: String = "recipe_orchid"
	internal let kDMPurchaseRecipeLesserCritKey: String = "recipe_lesser_crit"
	internal let kDMPurchaseBottleKey: String = "bottle"
	internal let kDMPurchaseChainmailKey: String = "chainmail"
	internal let kDMPurchaseRecipeMjollnirKey: String = "recipe_mjollnir"


    // MARK: Properties
	public var energyBooster: Int?
	public var tango: Int?
	public var recipePipe: Int?
	public var recipeAncientJanggo: Int?
	public var aetherLens: Int?
	public var enchantedMango: Int?
	public var riverPainter5: Int?
	public var recipeVladmir: Int?
	public var recipeYasha: Int?
	public var recipeHeart: Int?
	public var recipeCrimsonGuard: Int?
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
	public var recipeTravelBoots: Int?
	public var recipeBuckler: Int?
	public var ringOfRegen: Int?
	public var crimsonGuard: Int?
	public var medallionOfCourage: Int?
	public var demonEdge: Int?
	public var urnOfShadows: Int?
	public var recipeBasher: Int?
	public var ogreAxe: Int?
	public var recipeSilverEdge: Int?
	public var recipeGreaterCrit: Int?
	public var circlet: Int?
	public var buckler: Int?
	public var tomeOfKnowledge: Int?
	public var dust: Int?
	public var recipeAetherLens: Int?
	public var ultimateScepter: Int?
	public var vitalityBooster: Int?
	public var ringOfProtection: Int?
	public var platemail: Int?
	public var recipeWraithBand: Int?
	public var sangeAndYasha: Int?
	public var hyperstone: Int?
	public var basher: Int?
	public var wardSentry: Int?
	public var headdress: Int?
	public var boots: Int?
	public var sange: Int?
	public var gloves: Int?
	public var tpscroll: Int?
	public var moonShard: Int?
	public var broadsword: Int?
	public var quellingBlade: Int?
	public var abyssalBlade: Int?
	public var armlet: Int?
	public var handOfMidas: Int?
	public var orbOfVenom: Int?
	public var courier: Int?
	public var shadowAmulet: Int?
	public var powerTreads: Int?
	public var pipe: Int?
	public var wardDispenser: Int?
	public var bootsOfElves: Int?
	public var invisSword: Int?
	public var gauntlets: Int?
	public var recipeManta: Int?
	public var helmOfIronWill: Int?
	public var talismanOfEvasion: Int?
	public var voidStone: Int?
	public var recipeHandOfMidas: Int?
	public var silverEdge: Int?
	public var reaver: Int?
	public var ringOfHealth: Int?
	public var pointBooster: Int?
	public var manta: Int?
	public var hoodOfDefiance: Int?
	public var recipeUrnOfShadows: Int?
	public var recipeHeaddress: Int?
	public var vanguard: Int?
	public var recipeArmlet: Int?
	public var bladeOfAlacrity: Int?
	public var staffOfWizardry: Int?
	public var infusedRaindrop: Int?
	public var recipeAssault: Int?
	public var recipeBloodthorn: Int?
	public var wardObserver: Int?
	public var recipeBlackKingBar: Int?
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
	public var recipeMaelstrom: Int?
	public var oblivionStaff: Int?
	public var magicWand: Int?
	public var recipeBracer: Int?
	public var glimmerCape: Int?
	public var ringOfAquila: Int?
	public var slippers: Int?
	public var lesserCrit: Int?
	public var recipeSange: Int?
	public var javelin: Int?
	public var helmOfTheDominator: Int?
	public var cloak: Int?
	public var recipeAbyssalBlade: Int?
	public var gem: Int?
	public var bracer: Int?
	public var robe: Int?
	public var recipeOrchid: Int?
	public var recipeLesserCrit: Int?
	public var bottle: Int?
	public var chainmail: Int?
	public var recipeMjollnir: Int?


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
		energyBooster = json[kDMPurchaseEnergyBoosterKey].int
		tango = json[kDMPurchaseTangoKey].int
		recipePipe = json[kDMPurchaseRecipePipeKey].int
		recipeAncientJanggo = json[kDMPurchaseRecipeAncientJanggoKey].int
		aetherLens = json[kDMPurchaseAetherLensKey].int
		enchantedMango = json[kDMPurchaseEnchantedMangoKey].int
		riverPainter5 = json[kDMPurchaseRiverPainter5Key].int
		recipeVladmir = json[kDMPurchaseRecipeVladmirKey].int
		recipeYasha = json[kDMPurchaseRecipeYashaKey].int
		recipeHeart = json[kDMPurchaseRecipeHeartKey].int
		recipeCrimsonGuard = json[kDMPurchaseRecipeCrimsonGuardKey].int
		skadi = json[kDMPurchaseSkadiKey].int
		bfury = json[kDMPurchaseBfuryKey].int
		tranquilBoots = json[kDMPurchaseTranquilBootsKey].int
		mjollnir = json[kDMPurchaseMjollnirKey].int
		pers = json[kDMPurchasePersKey].int
		claymore = json[kDMPurchaseClaymoreKey].int
		lifesteal = json[kDMPurchaseLifestealKey].int
		blightStone = json[kDMPurchaseBlightStoneKey].int
		monkeyKingBar = json[kDMPurchaseMonkeyKingBarKey].int
		ultimateOrb = json[kDMPurchaseUltimateOrbKey].int
		flask = json[kDMPurchaseFlaskKey].int
		desolator = json[kDMPurchaseDesolatorKey].int
		stoutShield = json[kDMPurchaseStoutShieldKey].int
		orchid = json[kDMPurchaseOrchidKey].int
		ancientJanggo = json[kDMPurchaseAncientJanggoKey].int
		magicStick = json[kDMPurchaseMagicStickKey].int
		poorMansShield = json[kDMPurchasePoorMansShieldKey].int
		assault = json[kDMPurchaseAssaultKey].int
		branches = json[kDMPurchaseBranchesKey].int
		bladesOfAttack = json[kDMPurchaseBladesOfAttackKey].int
		ringOfBasilius = json[kDMPurchaseRingOfBasiliusKey].int
		maelstrom = json[kDMPurchaseMaelstromKey].int
		beltOfStrength = json[kDMPurchaseBeltOfStrengthKey].int
		recipeTravelBoots = json[kDMPurchaseRecipeTravelBootsKey].int
		recipeBuckler = json[kDMPurchaseRecipeBucklerKey].int
		ringOfRegen = json[kDMPurchaseRingOfRegenKey].int
		crimsonGuard = json[kDMPurchaseCrimsonGuardKey].int
		medallionOfCourage = json[kDMPurchaseMedallionOfCourageKey].int
		demonEdge = json[kDMPurchaseDemonEdgeKey].int
		urnOfShadows = json[kDMPurchaseUrnOfShadowsKey].int
		recipeBasher = json[kDMPurchaseRecipeBasherKey].int
		ogreAxe = json[kDMPurchaseOgreAxeKey].int
		recipeSilverEdge = json[kDMPurchaseRecipeSilverEdgeKey].int
		recipeGreaterCrit = json[kDMPurchaseRecipeGreaterCritKey].int
		circlet = json[kDMPurchaseCircletKey].int
		buckler = json[kDMPurchaseBucklerKey].int
		tomeOfKnowledge = json[kDMPurchaseTomeOfKnowledgeKey].int
		dust = json[kDMPurchaseDustKey].int
		recipeAetherLens = json[kDMPurchaseRecipeAetherLensKey].int
		ultimateScepter = json[kDMPurchaseUltimateScepterKey].int
		vitalityBooster = json[kDMPurchaseVitalityBoosterKey].int
		ringOfProtection = json[kDMPurchaseRingOfProtectionKey].int
		platemail = json[kDMPurchasePlatemailKey].int
		recipeWraithBand = json[kDMPurchaseRecipeWraithBandKey].int
		sangeAndYasha = json[kDMPurchaseSangeAndYashaKey].int
		hyperstone = json[kDMPurchaseHyperstoneKey].int
		basher = json[kDMPurchaseBasherKey].int
		wardSentry = json[kDMPurchaseWardSentryKey].int
		headdress = json[kDMPurchaseHeaddressKey].int
		boots = json[kDMPurchaseBootsKey].int
		sange = json[kDMPurchaseSangeKey].int
		gloves = json[kDMPurchaseGlovesKey].int
		tpscroll = json[kDMPurchaseTpscrollKey].int
		moonShard = json[kDMPurchaseMoonShardKey].int
		broadsword = json[kDMPurchaseBroadswordKey].int
		quellingBlade = json[kDMPurchaseQuellingBladeKey].int
		abyssalBlade = json[kDMPurchaseAbyssalBladeKey].int
		armlet = json[kDMPurchaseArmletKey].int
		handOfMidas = json[kDMPurchaseHandOfMidasKey].int
		orbOfVenom = json[kDMPurchaseOrbOfVenomKey].int
		courier = json[kDMPurchaseCourierKey].int
		shadowAmulet = json[kDMPurchaseShadowAmuletKey].int
		powerTreads = json[kDMPurchasePowerTreadsKey].int
		pipe = json[kDMPurchasePipeKey].int
		wardDispenser = json[kDMPurchaseWardDispenserKey].int
		bootsOfElves = json[kDMPurchaseBootsOfElvesKey].int
		invisSword = json[kDMPurchaseInvisSwordKey].int
		gauntlets = json[kDMPurchaseGauntletsKey].int
		recipeManta = json[kDMPurchaseRecipeMantaKey].int
		helmOfIronWill = json[kDMPurchaseHelmOfIronWillKey].int
		talismanOfEvasion = json[kDMPurchaseTalismanOfEvasionKey].int
		voidStone = json[kDMPurchaseVoidStoneKey].int
		recipeHandOfMidas = json[kDMPurchaseRecipeHandOfMidasKey].int
		silverEdge = json[kDMPurchaseSilverEdgeKey].int
		reaver = json[kDMPurchaseReaverKey].int
		ringOfHealth = json[kDMPurchaseRingOfHealthKey].int
		pointBooster = json[kDMPurchasePointBoosterKey].int
		manta = json[kDMPurchaseMantaKey].int
		hoodOfDefiance = json[kDMPurchaseHoodOfDefianceKey].int
		recipeUrnOfShadows = json[kDMPurchaseRecipeUrnOfShadowsKey].int
		recipeHeaddress = json[kDMPurchaseRecipeHeaddressKey].int
		vanguard = json[kDMPurchaseVanguardKey].int
		recipeArmlet = json[kDMPurchaseRecipeArmletKey].int
		bladeOfAlacrity = json[kDMPurchaseBladeOfAlacrityKey].int
		staffOfWizardry = json[kDMPurchaseStaffOfWizardryKey].int
		infusedRaindrop = json[kDMPurchaseInfusedRaindropKey].int
		recipeAssault = json[kDMPurchaseRecipeAssaultKey].int
		recipeBloodthorn = json[kDMPurchaseRecipeBloodthornKey].int
		wardObserver = json[kDMPurchaseWardObserverKey].int
		recipeBlackKingBar = json[kDMPurchaseRecipeBlackKingBarKey].int
		travelBoots = json[kDMPurchaseTravelBootsKey].int
		blackKingBar = json[kDMPurchaseBlackKingBarKey].int
		phaseBoots = json[kDMPurchasePhaseBootsKey].int
		faerieFire = json[kDMPurchaseFaerieFireKey].int
		vladmir = json[kDMPurchaseVladmirKey].int
		sobiMask = json[kDMPurchaseSobiMaskKey].int
		windLace = json[kDMPurchaseWindLaceKey].int
		greaterCrit = json[kDMPurchaseGreaterCritKey].int
		solarCrest = json[kDMPurchaseSolarCrestKey].int
		flyingCourier = json[kDMPurchaseFlyingCourierKey].int
		mithrilHammer = json[kDMPurchaseMithrilHammerKey].int
		yasha = json[kDMPurchaseYashaKey].int
		wraithBand = json[kDMPurchaseWraithBandKey].int
		heart = json[kDMPurchaseHeartKey].int
		clarity = json[kDMPurchaseClarityKey].int
		bloodthorn = json[kDMPurchaseBloodthornKey].int
		travelBoots2 = json[kDMPurchaseTravelBoots2Key].int
		quarterstaff = json[kDMPurchaseQuarterstaffKey].int
		recipeMaelstrom = json[kDMPurchaseRecipeMaelstromKey].int
		oblivionStaff = json[kDMPurchaseOblivionStaffKey].int
		magicWand = json[kDMPurchaseMagicWandKey].int
		recipeBracer = json[kDMPurchaseRecipeBracerKey].int
		glimmerCape = json[kDMPurchaseGlimmerCapeKey].int
		ringOfAquila = json[kDMPurchaseRingOfAquilaKey].int
		slippers = json[kDMPurchaseSlippersKey].int
		lesserCrit = json[kDMPurchaseLesserCritKey].int
		recipeSange = json[kDMPurchaseRecipeSangeKey].int
		javelin = json[kDMPurchaseJavelinKey].int
		helmOfTheDominator = json[kDMPurchaseHelmOfTheDominatorKey].int
		cloak = json[kDMPurchaseCloakKey].int
		recipeAbyssalBlade = json[kDMPurchaseRecipeAbyssalBladeKey].int
		gem = json[kDMPurchaseGemKey].int
		bracer = json[kDMPurchaseBracerKey].int
		robe = json[kDMPurchaseRobeKey].int
		recipeOrchid = json[kDMPurchaseRecipeOrchidKey].int
		recipeLesserCrit = json[kDMPurchaseRecipeLesserCritKey].int
		bottle = json[kDMPurchaseBottleKey].int
		chainmail = json[kDMPurchaseChainmailKey].int
		recipeMjollnir = json[kDMPurchaseRecipeMjollnirKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if energyBooster != nil {
			dictionary.updateValue(energyBooster!, forKey: kDMPurchaseEnergyBoosterKey)
		}
		if tango != nil {
			dictionary.updateValue(tango!, forKey: kDMPurchaseTangoKey)
		}
		if recipePipe != nil {
			dictionary.updateValue(recipePipe!, forKey: kDMPurchaseRecipePipeKey)
		}
		if recipeAncientJanggo != nil {
			dictionary.updateValue(recipeAncientJanggo!, forKey: kDMPurchaseRecipeAncientJanggoKey)
		}
		if aetherLens != nil {
			dictionary.updateValue(aetherLens!, forKey: kDMPurchaseAetherLensKey)
		}
		if enchantedMango != nil {
			dictionary.updateValue(enchantedMango!, forKey: kDMPurchaseEnchantedMangoKey)
		}
		if riverPainter5 != nil {
			dictionary.updateValue(riverPainter5!, forKey: kDMPurchaseRiverPainter5Key)
		}
		if recipeVladmir != nil {
			dictionary.updateValue(recipeVladmir!, forKey: kDMPurchaseRecipeVladmirKey)
		}
		if recipeYasha != nil {
			dictionary.updateValue(recipeYasha!, forKey: kDMPurchaseRecipeYashaKey)
		}
		if recipeHeart != nil {
			dictionary.updateValue(recipeHeart!, forKey: kDMPurchaseRecipeHeartKey)
		}
		if recipeCrimsonGuard != nil {
			dictionary.updateValue(recipeCrimsonGuard!, forKey: kDMPurchaseRecipeCrimsonGuardKey)
		}
		if skadi != nil {
			dictionary.updateValue(skadi!, forKey: kDMPurchaseSkadiKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury!, forKey: kDMPurchaseBfuryKey)
		}
		if tranquilBoots != nil {
			dictionary.updateValue(tranquilBoots!, forKey: kDMPurchaseTranquilBootsKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir!, forKey: kDMPurchaseMjollnirKey)
		}
		if pers != nil {
			dictionary.updateValue(pers!, forKey: kDMPurchasePersKey)
		}
		if claymore != nil {
			dictionary.updateValue(claymore!, forKey: kDMPurchaseClaymoreKey)
		}
		if lifesteal != nil {
			dictionary.updateValue(lifesteal!, forKey: kDMPurchaseLifestealKey)
		}
		if blightStone != nil {
			dictionary.updateValue(blightStone!, forKey: kDMPurchaseBlightStoneKey)
		}
		if monkeyKingBar != nil {
			dictionary.updateValue(monkeyKingBar!, forKey: kDMPurchaseMonkeyKingBarKey)
		}
		if ultimateOrb != nil {
			dictionary.updateValue(ultimateOrb!, forKey: kDMPurchaseUltimateOrbKey)
		}
		if flask != nil {
			dictionary.updateValue(flask!, forKey: kDMPurchaseFlaskKey)
		}
		if desolator != nil {
			dictionary.updateValue(desolator!, forKey: kDMPurchaseDesolatorKey)
		}
		if stoutShield != nil {
			dictionary.updateValue(stoutShield!, forKey: kDMPurchaseStoutShieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid!, forKey: kDMPurchaseOrchidKey)
		}
		if ancientJanggo != nil {
			dictionary.updateValue(ancientJanggo!, forKey: kDMPurchaseAncientJanggoKey)
		}
		if magicStick != nil {
			dictionary.updateValue(magicStick!, forKey: kDMPurchaseMagicStickKey)
		}
		if poorMansShield != nil {
			dictionary.updateValue(poorMansShield!, forKey: kDMPurchasePoorMansShieldKey)
		}
		if assault != nil {
			dictionary.updateValue(assault!, forKey: kDMPurchaseAssaultKey)
		}
		if branches != nil {
			dictionary.updateValue(branches!, forKey: kDMPurchaseBranchesKey)
		}
		if bladesOfAttack != nil {
			dictionary.updateValue(bladesOfAttack!, forKey: kDMPurchaseBladesOfAttackKey)
		}
		if ringOfBasilius != nil {
			dictionary.updateValue(ringOfBasilius!, forKey: kDMPurchaseRingOfBasiliusKey)
		}
		if maelstrom != nil {
			dictionary.updateValue(maelstrom!, forKey: kDMPurchaseMaelstromKey)
		}
		if beltOfStrength != nil {
			dictionary.updateValue(beltOfStrength!, forKey: kDMPurchaseBeltOfStrengthKey)
		}
		if recipeTravelBoots != nil {
			dictionary.updateValue(recipeTravelBoots!, forKey: kDMPurchaseRecipeTravelBootsKey)
		}
		if recipeBuckler != nil {
			dictionary.updateValue(recipeBuckler!, forKey: kDMPurchaseRecipeBucklerKey)
		}
		if ringOfRegen != nil {
			dictionary.updateValue(ringOfRegen!, forKey: kDMPurchaseRingOfRegenKey)
		}
		if crimsonGuard != nil {
			dictionary.updateValue(crimsonGuard!, forKey: kDMPurchaseCrimsonGuardKey)
		}
		if medallionOfCourage != nil {
			dictionary.updateValue(medallionOfCourage!, forKey: kDMPurchaseMedallionOfCourageKey)
		}
		if demonEdge != nil {
			dictionary.updateValue(demonEdge!, forKey: kDMPurchaseDemonEdgeKey)
		}
		if urnOfShadows != nil {
			dictionary.updateValue(urnOfShadows!, forKey: kDMPurchaseUrnOfShadowsKey)
		}
		if recipeBasher != nil {
			dictionary.updateValue(recipeBasher!, forKey: kDMPurchaseRecipeBasherKey)
		}
		if ogreAxe != nil {
			dictionary.updateValue(ogreAxe!, forKey: kDMPurchaseOgreAxeKey)
		}
		if recipeSilverEdge != nil {
			dictionary.updateValue(recipeSilverEdge!, forKey: kDMPurchaseRecipeSilverEdgeKey)
		}
		if recipeGreaterCrit != nil {
			dictionary.updateValue(recipeGreaterCrit!, forKey: kDMPurchaseRecipeGreaterCritKey)
		}
		if circlet != nil {
			dictionary.updateValue(circlet!, forKey: kDMPurchaseCircletKey)
		}
		if buckler != nil {
			dictionary.updateValue(buckler!, forKey: kDMPurchaseBucklerKey)
		}
		if tomeOfKnowledge != nil {
			dictionary.updateValue(tomeOfKnowledge!, forKey: kDMPurchaseTomeOfKnowledgeKey)
		}
		if dust != nil {
			dictionary.updateValue(dust!, forKey: kDMPurchaseDustKey)
		}
		if recipeAetherLens != nil {
			dictionary.updateValue(recipeAetherLens!, forKey: kDMPurchaseRecipeAetherLensKey)
		}
		if ultimateScepter != nil {
			dictionary.updateValue(ultimateScepter!, forKey: kDMPurchaseUltimateScepterKey)
		}
		if vitalityBooster != nil {
			dictionary.updateValue(vitalityBooster!, forKey: kDMPurchaseVitalityBoosterKey)
		}
		if ringOfProtection != nil {
			dictionary.updateValue(ringOfProtection!, forKey: kDMPurchaseRingOfProtectionKey)
		}
		if platemail != nil {
			dictionary.updateValue(platemail!, forKey: kDMPurchasePlatemailKey)
		}
		if recipeWraithBand != nil {
			dictionary.updateValue(recipeWraithBand!, forKey: kDMPurchaseRecipeWraithBandKey)
		}
		if sangeAndYasha != nil {
			dictionary.updateValue(sangeAndYasha!, forKey: kDMPurchaseSangeAndYashaKey)
		}
		if hyperstone != nil {
			dictionary.updateValue(hyperstone!, forKey: kDMPurchaseHyperstoneKey)
		}
		if basher != nil {
			dictionary.updateValue(basher!, forKey: kDMPurchaseBasherKey)
		}
		if wardSentry != nil {
			dictionary.updateValue(wardSentry!, forKey: kDMPurchaseWardSentryKey)
		}
		if headdress != nil {
			dictionary.updateValue(headdress!, forKey: kDMPurchaseHeaddressKey)
		}
		if boots != nil {
			dictionary.updateValue(boots!, forKey: kDMPurchaseBootsKey)
		}
		if sange != nil {
			dictionary.updateValue(sange!, forKey: kDMPurchaseSangeKey)
		}
		if gloves != nil {
			dictionary.updateValue(gloves!, forKey: kDMPurchaseGlovesKey)
		}
		if tpscroll != nil {
			dictionary.updateValue(tpscroll!, forKey: kDMPurchaseTpscrollKey)
		}
		if moonShard != nil {
			dictionary.updateValue(moonShard!, forKey: kDMPurchaseMoonShardKey)
		}
		if broadsword != nil {
			dictionary.updateValue(broadsword!, forKey: kDMPurchaseBroadswordKey)
		}
		if quellingBlade != nil {
			dictionary.updateValue(quellingBlade!, forKey: kDMPurchaseQuellingBladeKey)
		}
		if abyssalBlade != nil {
			dictionary.updateValue(abyssalBlade!, forKey: kDMPurchaseAbyssalBladeKey)
		}
		if armlet != nil {
			dictionary.updateValue(armlet!, forKey: kDMPurchaseArmletKey)
		}
		if handOfMidas != nil {
			dictionary.updateValue(handOfMidas!, forKey: kDMPurchaseHandOfMidasKey)
		}
		if orbOfVenom != nil {
			dictionary.updateValue(orbOfVenom!, forKey: kDMPurchaseOrbOfVenomKey)
		}
		if courier != nil {
			dictionary.updateValue(courier!, forKey: kDMPurchaseCourierKey)
		}
		if shadowAmulet != nil {
			dictionary.updateValue(shadowAmulet!, forKey: kDMPurchaseShadowAmuletKey)
		}
		if powerTreads != nil {
			dictionary.updateValue(powerTreads!, forKey: kDMPurchasePowerTreadsKey)
		}
		if pipe != nil {
			dictionary.updateValue(pipe!, forKey: kDMPurchasePipeKey)
		}
		if wardDispenser != nil {
			dictionary.updateValue(wardDispenser!, forKey: kDMPurchaseWardDispenserKey)
		}
		if bootsOfElves != nil {
			dictionary.updateValue(bootsOfElves!, forKey: kDMPurchaseBootsOfElvesKey)
		}
		if invisSword != nil {
			dictionary.updateValue(invisSword!, forKey: kDMPurchaseInvisSwordKey)
		}
		if gauntlets != nil {
			dictionary.updateValue(gauntlets!, forKey: kDMPurchaseGauntletsKey)
		}
		if recipeManta != nil {
			dictionary.updateValue(recipeManta!, forKey: kDMPurchaseRecipeMantaKey)
		}
		if helmOfIronWill != nil {
			dictionary.updateValue(helmOfIronWill!, forKey: kDMPurchaseHelmOfIronWillKey)
		}
		if talismanOfEvasion != nil {
			dictionary.updateValue(talismanOfEvasion!, forKey: kDMPurchaseTalismanOfEvasionKey)
		}
		if voidStone != nil {
			dictionary.updateValue(voidStone!, forKey: kDMPurchaseVoidStoneKey)
		}
		if recipeHandOfMidas != nil {
			dictionary.updateValue(recipeHandOfMidas!, forKey: kDMPurchaseRecipeHandOfMidasKey)
		}
		if silverEdge != nil {
			dictionary.updateValue(silverEdge!, forKey: kDMPurchaseSilverEdgeKey)
		}
		if reaver != nil {
			dictionary.updateValue(reaver!, forKey: kDMPurchaseReaverKey)
		}
		if ringOfHealth != nil {
			dictionary.updateValue(ringOfHealth!, forKey: kDMPurchaseRingOfHealthKey)
		}
		if pointBooster != nil {
			dictionary.updateValue(pointBooster!, forKey: kDMPurchasePointBoosterKey)
		}
		if manta != nil {
			dictionary.updateValue(manta!, forKey: kDMPurchaseMantaKey)
		}
		if hoodOfDefiance != nil {
			dictionary.updateValue(hoodOfDefiance!, forKey: kDMPurchaseHoodOfDefianceKey)
		}
		if recipeUrnOfShadows != nil {
			dictionary.updateValue(recipeUrnOfShadows!, forKey: kDMPurchaseRecipeUrnOfShadowsKey)
		}
		if recipeHeaddress != nil {
			dictionary.updateValue(recipeHeaddress!, forKey: kDMPurchaseRecipeHeaddressKey)
		}
		if vanguard != nil {
			dictionary.updateValue(vanguard!, forKey: kDMPurchaseVanguardKey)
		}
		if recipeArmlet != nil {
			dictionary.updateValue(recipeArmlet!, forKey: kDMPurchaseRecipeArmletKey)
		}
		if bladeOfAlacrity != nil {
			dictionary.updateValue(bladeOfAlacrity!, forKey: kDMPurchaseBladeOfAlacrityKey)
		}
		if staffOfWizardry != nil {
			dictionary.updateValue(staffOfWizardry!, forKey: kDMPurchaseStaffOfWizardryKey)
		}
		if infusedRaindrop != nil {
			dictionary.updateValue(infusedRaindrop!, forKey: kDMPurchaseInfusedRaindropKey)
		}
		if recipeAssault != nil {
			dictionary.updateValue(recipeAssault!, forKey: kDMPurchaseRecipeAssaultKey)
		}
		if recipeBloodthorn != nil {
			dictionary.updateValue(recipeBloodthorn!, forKey: kDMPurchaseRecipeBloodthornKey)
		}
		if wardObserver != nil {
			dictionary.updateValue(wardObserver!, forKey: kDMPurchaseWardObserverKey)
		}
		if recipeBlackKingBar != nil {
			dictionary.updateValue(recipeBlackKingBar!, forKey: kDMPurchaseRecipeBlackKingBarKey)
		}
		if travelBoots != nil {
			dictionary.updateValue(travelBoots!, forKey: kDMPurchaseTravelBootsKey)
		}
		if blackKingBar != nil {
			dictionary.updateValue(blackKingBar!, forKey: kDMPurchaseBlackKingBarKey)
		}
		if phaseBoots != nil {
			dictionary.updateValue(phaseBoots!, forKey: kDMPurchasePhaseBootsKey)
		}
		if faerieFire != nil {
			dictionary.updateValue(faerieFire!, forKey: kDMPurchaseFaerieFireKey)
		}
		if vladmir != nil {
			dictionary.updateValue(vladmir!, forKey: kDMPurchaseVladmirKey)
		}
		if sobiMask != nil {
			dictionary.updateValue(sobiMask!, forKey: kDMPurchaseSobiMaskKey)
		}
		if windLace != nil {
			dictionary.updateValue(windLace!, forKey: kDMPurchaseWindLaceKey)
		}
		if greaterCrit != nil {
			dictionary.updateValue(greaterCrit!, forKey: kDMPurchaseGreaterCritKey)
		}
		if solarCrest != nil {
			dictionary.updateValue(solarCrest!, forKey: kDMPurchaseSolarCrestKey)
		}
		if flyingCourier != nil {
			dictionary.updateValue(flyingCourier!, forKey: kDMPurchaseFlyingCourierKey)
		}
		if mithrilHammer != nil {
			dictionary.updateValue(mithrilHammer!, forKey: kDMPurchaseMithrilHammerKey)
		}
		if yasha != nil {
			dictionary.updateValue(yasha!, forKey: kDMPurchaseYashaKey)
		}
		if wraithBand != nil {
			dictionary.updateValue(wraithBand!, forKey: kDMPurchaseWraithBandKey)
		}
		if heart != nil {
			dictionary.updateValue(heart!, forKey: kDMPurchaseHeartKey)
		}
		if clarity != nil {
			dictionary.updateValue(clarity!, forKey: kDMPurchaseClarityKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn!, forKey: kDMPurchaseBloodthornKey)
		}
		if travelBoots2 != nil {
			dictionary.updateValue(travelBoots2!, forKey: kDMPurchaseTravelBoots2Key)
		}
		if quarterstaff != nil {
			dictionary.updateValue(quarterstaff!, forKey: kDMPurchaseQuarterstaffKey)
		}
		if recipeMaelstrom != nil {
			dictionary.updateValue(recipeMaelstrom!, forKey: kDMPurchaseRecipeMaelstromKey)
		}
		if oblivionStaff != nil {
			dictionary.updateValue(oblivionStaff!, forKey: kDMPurchaseOblivionStaffKey)
		}
		if magicWand != nil {
			dictionary.updateValue(magicWand!, forKey: kDMPurchaseMagicWandKey)
		}
		if recipeBracer != nil {
			dictionary.updateValue(recipeBracer!, forKey: kDMPurchaseRecipeBracerKey)
		}
		if glimmerCape != nil {
			dictionary.updateValue(glimmerCape!, forKey: kDMPurchaseGlimmerCapeKey)
		}
		if ringOfAquila != nil {
			dictionary.updateValue(ringOfAquila!, forKey: kDMPurchaseRingOfAquilaKey)
		}
		if slippers != nil {
			dictionary.updateValue(slippers!, forKey: kDMPurchaseSlippersKey)
		}
		if lesserCrit != nil {
			dictionary.updateValue(lesserCrit!, forKey: kDMPurchaseLesserCritKey)
		}
		if recipeSange != nil {
			dictionary.updateValue(recipeSange!, forKey: kDMPurchaseRecipeSangeKey)
		}
		if javelin != nil {
			dictionary.updateValue(javelin!, forKey: kDMPurchaseJavelinKey)
		}
		if helmOfTheDominator != nil {
			dictionary.updateValue(helmOfTheDominator!, forKey: kDMPurchaseHelmOfTheDominatorKey)
		}
		if cloak != nil {
			dictionary.updateValue(cloak!, forKey: kDMPurchaseCloakKey)
		}
		if recipeAbyssalBlade != nil {
			dictionary.updateValue(recipeAbyssalBlade!, forKey: kDMPurchaseRecipeAbyssalBladeKey)
		}
		if gem != nil {
			dictionary.updateValue(gem!, forKey: kDMPurchaseGemKey)
		}
		if bracer != nil {
			dictionary.updateValue(bracer!, forKey: kDMPurchaseBracerKey)
		}
		if robe != nil {
			dictionary.updateValue(robe!, forKey: kDMPurchaseRobeKey)
		}
		if recipeOrchid != nil {
			dictionary.updateValue(recipeOrchid!, forKey: kDMPurchaseRecipeOrchidKey)
		}
		if recipeLesserCrit != nil {
			dictionary.updateValue(recipeLesserCrit!, forKey: kDMPurchaseRecipeLesserCritKey)
		}
		if bottle != nil {
			dictionary.updateValue(bottle!, forKey: kDMPurchaseBottleKey)
		}
		if chainmail != nil {
			dictionary.updateValue(chainmail!, forKey: kDMPurchaseChainmailKey)
		}
		if recipeMjollnir != nil {
			dictionary.updateValue(recipeMjollnir!, forKey: kDMPurchaseRecipeMjollnirKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.energyBooster = aDecoder.decodeObjectForKey(kDMPurchaseEnergyBoosterKey) as? Int
		self.tango = aDecoder.decodeObjectForKey(kDMPurchaseTangoKey) as? Int
		self.recipePipe = aDecoder.decodeObjectForKey(kDMPurchaseRecipePipeKey) as? Int
		self.recipeAncientJanggo = aDecoder.decodeObjectForKey(kDMPurchaseRecipeAncientJanggoKey) as? Int
		self.aetherLens = aDecoder.decodeObjectForKey(kDMPurchaseAetherLensKey) as? Int
		self.enchantedMango = aDecoder.decodeObjectForKey(kDMPurchaseEnchantedMangoKey) as? Int
		self.riverPainter5 = aDecoder.decodeObjectForKey(kDMPurchaseRiverPainter5Key) as? Int
		self.recipeVladmir = aDecoder.decodeObjectForKey(kDMPurchaseRecipeVladmirKey) as? Int
		self.recipeYasha = aDecoder.decodeObjectForKey(kDMPurchaseRecipeYashaKey) as? Int
		self.recipeHeart = aDecoder.decodeObjectForKey(kDMPurchaseRecipeHeartKey) as? Int
		self.recipeCrimsonGuard = aDecoder.decodeObjectForKey(kDMPurchaseRecipeCrimsonGuardKey) as? Int
		self.skadi = aDecoder.decodeObjectForKey(kDMPurchaseSkadiKey) as? Int
		self.bfury = aDecoder.decodeObjectForKey(kDMPurchaseBfuryKey) as? Int
		self.tranquilBoots = aDecoder.decodeObjectForKey(kDMPurchaseTranquilBootsKey) as? Int
		self.mjollnir = aDecoder.decodeObjectForKey(kDMPurchaseMjollnirKey) as? Int
		self.pers = aDecoder.decodeObjectForKey(kDMPurchasePersKey) as? Int
		self.claymore = aDecoder.decodeObjectForKey(kDMPurchaseClaymoreKey) as? Int
		self.lifesteal = aDecoder.decodeObjectForKey(kDMPurchaseLifestealKey) as? Int
		self.blightStone = aDecoder.decodeObjectForKey(kDMPurchaseBlightStoneKey) as? Int
		self.monkeyKingBar = aDecoder.decodeObjectForKey(kDMPurchaseMonkeyKingBarKey) as? Int
		self.ultimateOrb = aDecoder.decodeObjectForKey(kDMPurchaseUltimateOrbKey) as? Int
		self.flask = aDecoder.decodeObjectForKey(kDMPurchaseFlaskKey) as? Int
		self.desolator = aDecoder.decodeObjectForKey(kDMPurchaseDesolatorKey) as? Int
		self.stoutShield = aDecoder.decodeObjectForKey(kDMPurchaseStoutShieldKey) as? Int
		self.orchid = aDecoder.decodeObjectForKey(kDMPurchaseOrchidKey) as? Int
		self.ancientJanggo = aDecoder.decodeObjectForKey(kDMPurchaseAncientJanggoKey) as? Int
		self.magicStick = aDecoder.decodeObjectForKey(kDMPurchaseMagicStickKey) as? Int
		self.poorMansShield = aDecoder.decodeObjectForKey(kDMPurchasePoorMansShieldKey) as? Int
		self.assault = aDecoder.decodeObjectForKey(kDMPurchaseAssaultKey) as? Int
		self.branches = aDecoder.decodeObjectForKey(kDMPurchaseBranchesKey) as? Int
		self.bladesOfAttack = aDecoder.decodeObjectForKey(kDMPurchaseBladesOfAttackKey) as? Int
		self.ringOfBasilius = aDecoder.decodeObjectForKey(kDMPurchaseRingOfBasiliusKey) as? Int
		self.maelstrom = aDecoder.decodeObjectForKey(kDMPurchaseMaelstromKey) as? Int
		self.beltOfStrength = aDecoder.decodeObjectForKey(kDMPurchaseBeltOfStrengthKey) as? Int
		self.recipeTravelBoots = aDecoder.decodeObjectForKey(kDMPurchaseRecipeTravelBootsKey) as? Int
		self.recipeBuckler = aDecoder.decodeObjectForKey(kDMPurchaseRecipeBucklerKey) as? Int
		self.ringOfRegen = aDecoder.decodeObjectForKey(kDMPurchaseRingOfRegenKey) as? Int
		self.crimsonGuard = aDecoder.decodeObjectForKey(kDMPurchaseCrimsonGuardKey) as? Int
		self.medallionOfCourage = aDecoder.decodeObjectForKey(kDMPurchaseMedallionOfCourageKey) as? Int
		self.demonEdge = aDecoder.decodeObjectForKey(kDMPurchaseDemonEdgeKey) as? Int
		self.urnOfShadows = aDecoder.decodeObjectForKey(kDMPurchaseUrnOfShadowsKey) as? Int
		self.recipeBasher = aDecoder.decodeObjectForKey(kDMPurchaseRecipeBasherKey) as? Int
		self.ogreAxe = aDecoder.decodeObjectForKey(kDMPurchaseOgreAxeKey) as? Int
		self.recipeSilverEdge = aDecoder.decodeObjectForKey(kDMPurchaseRecipeSilverEdgeKey) as? Int
		self.recipeGreaterCrit = aDecoder.decodeObjectForKey(kDMPurchaseRecipeGreaterCritKey) as? Int
		self.circlet = aDecoder.decodeObjectForKey(kDMPurchaseCircletKey) as? Int
		self.buckler = aDecoder.decodeObjectForKey(kDMPurchaseBucklerKey) as? Int
		self.tomeOfKnowledge = aDecoder.decodeObjectForKey(kDMPurchaseTomeOfKnowledgeKey) as? Int
		self.dust = aDecoder.decodeObjectForKey(kDMPurchaseDustKey) as? Int
		self.recipeAetherLens = aDecoder.decodeObjectForKey(kDMPurchaseRecipeAetherLensKey) as? Int
		self.ultimateScepter = aDecoder.decodeObjectForKey(kDMPurchaseUltimateScepterKey) as? Int
		self.vitalityBooster = aDecoder.decodeObjectForKey(kDMPurchaseVitalityBoosterKey) as? Int
		self.ringOfProtection = aDecoder.decodeObjectForKey(kDMPurchaseRingOfProtectionKey) as? Int
		self.platemail = aDecoder.decodeObjectForKey(kDMPurchasePlatemailKey) as? Int
		self.recipeWraithBand = aDecoder.decodeObjectForKey(kDMPurchaseRecipeWraithBandKey) as? Int
		self.sangeAndYasha = aDecoder.decodeObjectForKey(kDMPurchaseSangeAndYashaKey) as? Int
		self.hyperstone = aDecoder.decodeObjectForKey(kDMPurchaseHyperstoneKey) as? Int
		self.basher = aDecoder.decodeObjectForKey(kDMPurchaseBasherKey) as? Int
		self.wardSentry = aDecoder.decodeObjectForKey(kDMPurchaseWardSentryKey) as? Int
		self.headdress = aDecoder.decodeObjectForKey(kDMPurchaseHeaddressKey) as? Int
		self.boots = aDecoder.decodeObjectForKey(kDMPurchaseBootsKey) as? Int
		self.sange = aDecoder.decodeObjectForKey(kDMPurchaseSangeKey) as? Int
		self.gloves = aDecoder.decodeObjectForKey(kDMPurchaseGlovesKey) as? Int
		self.tpscroll = aDecoder.decodeObjectForKey(kDMPurchaseTpscrollKey) as? Int
		self.moonShard = aDecoder.decodeObjectForKey(kDMPurchaseMoonShardKey) as? Int
		self.broadsword = aDecoder.decodeObjectForKey(kDMPurchaseBroadswordKey) as? Int
		self.quellingBlade = aDecoder.decodeObjectForKey(kDMPurchaseQuellingBladeKey) as? Int
		self.abyssalBlade = aDecoder.decodeObjectForKey(kDMPurchaseAbyssalBladeKey) as? Int
		self.armlet = aDecoder.decodeObjectForKey(kDMPurchaseArmletKey) as? Int
		self.handOfMidas = aDecoder.decodeObjectForKey(kDMPurchaseHandOfMidasKey) as? Int
		self.orbOfVenom = aDecoder.decodeObjectForKey(kDMPurchaseOrbOfVenomKey) as? Int
		self.courier = aDecoder.decodeObjectForKey(kDMPurchaseCourierKey) as? Int
		self.shadowAmulet = aDecoder.decodeObjectForKey(kDMPurchaseShadowAmuletKey) as? Int
		self.powerTreads = aDecoder.decodeObjectForKey(kDMPurchasePowerTreadsKey) as? Int
		self.pipe = aDecoder.decodeObjectForKey(kDMPurchasePipeKey) as? Int
		self.wardDispenser = aDecoder.decodeObjectForKey(kDMPurchaseWardDispenserKey) as? Int
		self.bootsOfElves = aDecoder.decodeObjectForKey(kDMPurchaseBootsOfElvesKey) as? Int
		self.invisSword = aDecoder.decodeObjectForKey(kDMPurchaseInvisSwordKey) as? Int
		self.gauntlets = aDecoder.decodeObjectForKey(kDMPurchaseGauntletsKey) as? Int
		self.recipeManta = aDecoder.decodeObjectForKey(kDMPurchaseRecipeMantaKey) as? Int
		self.helmOfIronWill = aDecoder.decodeObjectForKey(kDMPurchaseHelmOfIronWillKey) as? Int
		self.talismanOfEvasion = aDecoder.decodeObjectForKey(kDMPurchaseTalismanOfEvasionKey) as? Int
		self.voidStone = aDecoder.decodeObjectForKey(kDMPurchaseVoidStoneKey) as? Int
		self.recipeHandOfMidas = aDecoder.decodeObjectForKey(kDMPurchaseRecipeHandOfMidasKey) as? Int
		self.silverEdge = aDecoder.decodeObjectForKey(kDMPurchaseSilverEdgeKey) as? Int
		self.reaver = aDecoder.decodeObjectForKey(kDMPurchaseReaverKey) as? Int
		self.ringOfHealth = aDecoder.decodeObjectForKey(kDMPurchaseRingOfHealthKey) as? Int
		self.pointBooster = aDecoder.decodeObjectForKey(kDMPurchasePointBoosterKey) as? Int
		self.manta = aDecoder.decodeObjectForKey(kDMPurchaseMantaKey) as? Int
		self.hoodOfDefiance = aDecoder.decodeObjectForKey(kDMPurchaseHoodOfDefianceKey) as? Int
		self.recipeUrnOfShadows = aDecoder.decodeObjectForKey(kDMPurchaseRecipeUrnOfShadowsKey) as? Int
		self.recipeHeaddress = aDecoder.decodeObjectForKey(kDMPurchaseRecipeHeaddressKey) as? Int
		self.vanguard = aDecoder.decodeObjectForKey(kDMPurchaseVanguardKey) as? Int
		self.recipeArmlet = aDecoder.decodeObjectForKey(kDMPurchaseRecipeArmletKey) as? Int
		self.bladeOfAlacrity = aDecoder.decodeObjectForKey(kDMPurchaseBladeOfAlacrityKey) as? Int
		self.staffOfWizardry = aDecoder.decodeObjectForKey(kDMPurchaseStaffOfWizardryKey) as? Int
		self.infusedRaindrop = aDecoder.decodeObjectForKey(kDMPurchaseInfusedRaindropKey) as? Int
		self.recipeAssault = aDecoder.decodeObjectForKey(kDMPurchaseRecipeAssaultKey) as? Int
		self.recipeBloodthorn = aDecoder.decodeObjectForKey(kDMPurchaseRecipeBloodthornKey) as? Int
		self.wardObserver = aDecoder.decodeObjectForKey(kDMPurchaseWardObserverKey) as? Int
		self.recipeBlackKingBar = aDecoder.decodeObjectForKey(kDMPurchaseRecipeBlackKingBarKey) as? Int
		self.travelBoots = aDecoder.decodeObjectForKey(kDMPurchaseTravelBootsKey) as? Int
		self.blackKingBar = aDecoder.decodeObjectForKey(kDMPurchaseBlackKingBarKey) as? Int
		self.phaseBoots = aDecoder.decodeObjectForKey(kDMPurchasePhaseBootsKey) as? Int
		self.faerieFire = aDecoder.decodeObjectForKey(kDMPurchaseFaerieFireKey) as? Int
		self.vladmir = aDecoder.decodeObjectForKey(kDMPurchaseVladmirKey) as? Int
		self.sobiMask = aDecoder.decodeObjectForKey(kDMPurchaseSobiMaskKey) as? Int
		self.windLace = aDecoder.decodeObjectForKey(kDMPurchaseWindLaceKey) as? Int
		self.greaterCrit = aDecoder.decodeObjectForKey(kDMPurchaseGreaterCritKey) as? Int
		self.solarCrest = aDecoder.decodeObjectForKey(kDMPurchaseSolarCrestKey) as? Int
		self.flyingCourier = aDecoder.decodeObjectForKey(kDMPurchaseFlyingCourierKey) as? Int
		self.mithrilHammer = aDecoder.decodeObjectForKey(kDMPurchaseMithrilHammerKey) as? Int
		self.yasha = aDecoder.decodeObjectForKey(kDMPurchaseYashaKey) as? Int
		self.wraithBand = aDecoder.decodeObjectForKey(kDMPurchaseWraithBandKey) as? Int
		self.heart = aDecoder.decodeObjectForKey(kDMPurchaseHeartKey) as? Int
		self.clarity = aDecoder.decodeObjectForKey(kDMPurchaseClarityKey) as? Int
		self.bloodthorn = aDecoder.decodeObjectForKey(kDMPurchaseBloodthornKey) as? Int
		self.travelBoots2 = aDecoder.decodeObjectForKey(kDMPurchaseTravelBoots2Key) as? Int
		self.quarterstaff = aDecoder.decodeObjectForKey(kDMPurchaseQuarterstaffKey) as? Int
		self.recipeMaelstrom = aDecoder.decodeObjectForKey(kDMPurchaseRecipeMaelstromKey) as? Int
		self.oblivionStaff = aDecoder.decodeObjectForKey(kDMPurchaseOblivionStaffKey) as? Int
		self.magicWand = aDecoder.decodeObjectForKey(kDMPurchaseMagicWandKey) as? Int
		self.recipeBracer = aDecoder.decodeObjectForKey(kDMPurchaseRecipeBracerKey) as? Int
		self.glimmerCape = aDecoder.decodeObjectForKey(kDMPurchaseGlimmerCapeKey) as? Int
		self.ringOfAquila = aDecoder.decodeObjectForKey(kDMPurchaseRingOfAquilaKey) as? Int
		self.slippers = aDecoder.decodeObjectForKey(kDMPurchaseSlippersKey) as? Int
		self.lesserCrit = aDecoder.decodeObjectForKey(kDMPurchaseLesserCritKey) as? Int
		self.recipeSange = aDecoder.decodeObjectForKey(kDMPurchaseRecipeSangeKey) as? Int
		self.javelin = aDecoder.decodeObjectForKey(kDMPurchaseJavelinKey) as? Int
		self.helmOfTheDominator = aDecoder.decodeObjectForKey(kDMPurchaseHelmOfTheDominatorKey) as? Int
		self.cloak = aDecoder.decodeObjectForKey(kDMPurchaseCloakKey) as? Int
		self.recipeAbyssalBlade = aDecoder.decodeObjectForKey(kDMPurchaseRecipeAbyssalBladeKey) as? Int
		self.gem = aDecoder.decodeObjectForKey(kDMPurchaseGemKey) as? Int
		self.bracer = aDecoder.decodeObjectForKey(kDMPurchaseBracerKey) as? Int
		self.robe = aDecoder.decodeObjectForKey(kDMPurchaseRobeKey) as? Int
		self.recipeOrchid = aDecoder.decodeObjectForKey(kDMPurchaseRecipeOrchidKey) as? Int
		self.recipeLesserCrit = aDecoder.decodeObjectForKey(kDMPurchaseRecipeLesserCritKey) as? Int
		self.bottle = aDecoder.decodeObjectForKey(kDMPurchaseBottleKey) as? Int
		self.chainmail = aDecoder.decodeObjectForKey(kDMPurchaseChainmailKey) as? Int
		self.recipeMjollnir = aDecoder.decodeObjectForKey(kDMPurchaseRecipeMjollnirKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(energyBooster, forKey: kDMPurchaseEnergyBoosterKey)
		aCoder.encodeObject(tango, forKey: kDMPurchaseTangoKey)
		aCoder.encodeObject(recipePipe, forKey: kDMPurchaseRecipePipeKey)
		aCoder.encodeObject(recipeAncientJanggo, forKey: kDMPurchaseRecipeAncientJanggoKey)
		aCoder.encodeObject(aetherLens, forKey: kDMPurchaseAetherLensKey)
		aCoder.encodeObject(enchantedMango, forKey: kDMPurchaseEnchantedMangoKey)
		aCoder.encodeObject(riverPainter5, forKey: kDMPurchaseRiverPainter5Key)
		aCoder.encodeObject(recipeVladmir, forKey: kDMPurchaseRecipeVladmirKey)
		aCoder.encodeObject(recipeYasha, forKey: kDMPurchaseRecipeYashaKey)
		aCoder.encodeObject(recipeHeart, forKey: kDMPurchaseRecipeHeartKey)
		aCoder.encodeObject(recipeCrimsonGuard, forKey: kDMPurchaseRecipeCrimsonGuardKey)
		aCoder.encodeObject(skadi, forKey: kDMPurchaseSkadiKey)
		aCoder.encodeObject(bfury, forKey: kDMPurchaseBfuryKey)
		aCoder.encodeObject(tranquilBoots, forKey: kDMPurchaseTranquilBootsKey)
		aCoder.encodeObject(mjollnir, forKey: kDMPurchaseMjollnirKey)
		aCoder.encodeObject(pers, forKey: kDMPurchasePersKey)
		aCoder.encodeObject(claymore, forKey: kDMPurchaseClaymoreKey)
		aCoder.encodeObject(lifesteal, forKey: kDMPurchaseLifestealKey)
		aCoder.encodeObject(blightStone, forKey: kDMPurchaseBlightStoneKey)
		aCoder.encodeObject(monkeyKingBar, forKey: kDMPurchaseMonkeyKingBarKey)
		aCoder.encodeObject(ultimateOrb, forKey: kDMPurchaseUltimateOrbKey)
		aCoder.encodeObject(flask, forKey: kDMPurchaseFlaskKey)
		aCoder.encodeObject(desolator, forKey: kDMPurchaseDesolatorKey)
		aCoder.encodeObject(stoutShield, forKey: kDMPurchaseStoutShieldKey)
		aCoder.encodeObject(orchid, forKey: kDMPurchaseOrchidKey)
		aCoder.encodeObject(ancientJanggo, forKey: kDMPurchaseAncientJanggoKey)
		aCoder.encodeObject(magicStick, forKey: kDMPurchaseMagicStickKey)
		aCoder.encodeObject(poorMansShield, forKey: kDMPurchasePoorMansShieldKey)
		aCoder.encodeObject(assault, forKey: kDMPurchaseAssaultKey)
		aCoder.encodeObject(branches, forKey: kDMPurchaseBranchesKey)
		aCoder.encodeObject(bladesOfAttack, forKey: kDMPurchaseBladesOfAttackKey)
		aCoder.encodeObject(ringOfBasilius, forKey: kDMPurchaseRingOfBasiliusKey)
		aCoder.encodeObject(maelstrom, forKey: kDMPurchaseMaelstromKey)
		aCoder.encodeObject(beltOfStrength, forKey: kDMPurchaseBeltOfStrengthKey)
		aCoder.encodeObject(recipeTravelBoots, forKey: kDMPurchaseRecipeTravelBootsKey)
		aCoder.encodeObject(recipeBuckler, forKey: kDMPurchaseRecipeBucklerKey)
		aCoder.encodeObject(ringOfRegen, forKey: kDMPurchaseRingOfRegenKey)
		aCoder.encodeObject(crimsonGuard, forKey: kDMPurchaseCrimsonGuardKey)
		aCoder.encodeObject(medallionOfCourage, forKey: kDMPurchaseMedallionOfCourageKey)
		aCoder.encodeObject(demonEdge, forKey: kDMPurchaseDemonEdgeKey)
		aCoder.encodeObject(urnOfShadows, forKey: kDMPurchaseUrnOfShadowsKey)
		aCoder.encodeObject(recipeBasher, forKey: kDMPurchaseRecipeBasherKey)
		aCoder.encodeObject(ogreAxe, forKey: kDMPurchaseOgreAxeKey)
		aCoder.encodeObject(recipeSilverEdge, forKey: kDMPurchaseRecipeSilverEdgeKey)
		aCoder.encodeObject(recipeGreaterCrit, forKey: kDMPurchaseRecipeGreaterCritKey)
		aCoder.encodeObject(circlet, forKey: kDMPurchaseCircletKey)
		aCoder.encodeObject(buckler, forKey: kDMPurchaseBucklerKey)
		aCoder.encodeObject(tomeOfKnowledge, forKey: kDMPurchaseTomeOfKnowledgeKey)
		aCoder.encodeObject(dust, forKey: kDMPurchaseDustKey)
		aCoder.encodeObject(recipeAetherLens, forKey: kDMPurchaseRecipeAetherLensKey)
		aCoder.encodeObject(ultimateScepter, forKey: kDMPurchaseUltimateScepterKey)
		aCoder.encodeObject(vitalityBooster, forKey: kDMPurchaseVitalityBoosterKey)
		aCoder.encodeObject(ringOfProtection, forKey: kDMPurchaseRingOfProtectionKey)
		aCoder.encodeObject(platemail, forKey: kDMPurchasePlatemailKey)
		aCoder.encodeObject(recipeWraithBand, forKey: kDMPurchaseRecipeWraithBandKey)
		aCoder.encodeObject(sangeAndYasha, forKey: kDMPurchaseSangeAndYashaKey)
		aCoder.encodeObject(hyperstone, forKey: kDMPurchaseHyperstoneKey)
		aCoder.encodeObject(basher, forKey: kDMPurchaseBasherKey)
		aCoder.encodeObject(wardSentry, forKey: kDMPurchaseWardSentryKey)
		aCoder.encodeObject(headdress, forKey: kDMPurchaseHeaddressKey)
		aCoder.encodeObject(boots, forKey: kDMPurchaseBootsKey)
		aCoder.encodeObject(sange, forKey: kDMPurchaseSangeKey)
		aCoder.encodeObject(gloves, forKey: kDMPurchaseGlovesKey)
		aCoder.encodeObject(tpscroll, forKey: kDMPurchaseTpscrollKey)
		aCoder.encodeObject(moonShard, forKey: kDMPurchaseMoonShardKey)
		aCoder.encodeObject(broadsword, forKey: kDMPurchaseBroadswordKey)
		aCoder.encodeObject(quellingBlade, forKey: kDMPurchaseQuellingBladeKey)
		aCoder.encodeObject(abyssalBlade, forKey: kDMPurchaseAbyssalBladeKey)
		aCoder.encodeObject(armlet, forKey: kDMPurchaseArmletKey)
		aCoder.encodeObject(handOfMidas, forKey: kDMPurchaseHandOfMidasKey)
		aCoder.encodeObject(orbOfVenom, forKey: kDMPurchaseOrbOfVenomKey)
		aCoder.encodeObject(courier, forKey: kDMPurchaseCourierKey)
		aCoder.encodeObject(shadowAmulet, forKey: kDMPurchaseShadowAmuletKey)
		aCoder.encodeObject(powerTreads, forKey: kDMPurchasePowerTreadsKey)
		aCoder.encodeObject(pipe, forKey: kDMPurchasePipeKey)
		aCoder.encodeObject(wardDispenser, forKey: kDMPurchaseWardDispenserKey)
		aCoder.encodeObject(bootsOfElves, forKey: kDMPurchaseBootsOfElvesKey)
		aCoder.encodeObject(invisSword, forKey: kDMPurchaseInvisSwordKey)
		aCoder.encodeObject(gauntlets, forKey: kDMPurchaseGauntletsKey)
		aCoder.encodeObject(recipeManta, forKey: kDMPurchaseRecipeMantaKey)
		aCoder.encodeObject(helmOfIronWill, forKey: kDMPurchaseHelmOfIronWillKey)
		aCoder.encodeObject(talismanOfEvasion, forKey: kDMPurchaseTalismanOfEvasionKey)
		aCoder.encodeObject(voidStone, forKey: kDMPurchaseVoidStoneKey)
		aCoder.encodeObject(recipeHandOfMidas, forKey: kDMPurchaseRecipeHandOfMidasKey)
		aCoder.encodeObject(silverEdge, forKey: kDMPurchaseSilverEdgeKey)
		aCoder.encodeObject(reaver, forKey: kDMPurchaseReaverKey)
		aCoder.encodeObject(ringOfHealth, forKey: kDMPurchaseRingOfHealthKey)
		aCoder.encodeObject(pointBooster, forKey: kDMPurchasePointBoosterKey)
		aCoder.encodeObject(manta, forKey: kDMPurchaseMantaKey)
		aCoder.encodeObject(hoodOfDefiance, forKey: kDMPurchaseHoodOfDefianceKey)
		aCoder.encodeObject(recipeUrnOfShadows, forKey: kDMPurchaseRecipeUrnOfShadowsKey)
		aCoder.encodeObject(recipeHeaddress, forKey: kDMPurchaseRecipeHeaddressKey)
		aCoder.encodeObject(vanguard, forKey: kDMPurchaseVanguardKey)
		aCoder.encodeObject(recipeArmlet, forKey: kDMPurchaseRecipeArmletKey)
		aCoder.encodeObject(bladeOfAlacrity, forKey: kDMPurchaseBladeOfAlacrityKey)
		aCoder.encodeObject(staffOfWizardry, forKey: kDMPurchaseStaffOfWizardryKey)
		aCoder.encodeObject(infusedRaindrop, forKey: kDMPurchaseInfusedRaindropKey)
		aCoder.encodeObject(recipeAssault, forKey: kDMPurchaseRecipeAssaultKey)
		aCoder.encodeObject(recipeBloodthorn, forKey: kDMPurchaseRecipeBloodthornKey)
		aCoder.encodeObject(wardObserver, forKey: kDMPurchaseWardObserverKey)
		aCoder.encodeObject(recipeBlackKingBar, forKey: kDMPurchaseRecipeBlackKingBarKey)
		aCoder.encodeObject(travelBoots, forKey: kDMPurchaseTravelBootsKey)
		aCoder.encodeObject(blackKingBar, forKey: kDMPurchaseBlackKingBarKey)
		aCoder.encodeObject(phaseBoots, forKey: kDMPurchasePhaseBootsKey)
		aCoder.encodeObject(faerieFire, forKey: kDMPurchaseFaerieFireKey)
		aCoder.encodeObject(vladmir, forKey: kDMPurchaseVladmirKey)
		aCoder.encodeObject(sobiMask, forKey: kDMPurchaseSobiMaskKey)
		aCoder.encodeObject(windLace, forKey: kDMPurchaseWindLaceKey)
		aCoder.encodeObject(greaterCrit, forKey: kDMPurchaseGreaterCritKey)
		aCoder.encodeObject(solarCrest, forKey: kDMPurchaseSolarCrestKey)
		aCoder.encodeObject(flyingCourier, forKey: kDMPurchaseFlyingCourierKey)
		aCoder.encodeObject(mithrilHammer, forKey: kDMPurchaseMithrilHammerKey)
		aCoder.encodeObject(yasha, forKey: kDMPurchaseYashaKey)
		aCoder.encodeObject(wraithBand, forKey: kDMPurchaseWraithBandKey)
		aCoder.encodeObject(heart, forKey: kDMPurchaseHeartKey)
		aCoder.encodeObject(clarity, forKey: kDMPurchaseClarityKey)
		aCoder.encodeObject(bloodthorn, forKey: kDMPurchaseBloodthornKey)
		aCoder.encodeObject(travelBoots2, forKey: kDMPurchaseTravelBoots2Key)
		aCoder.encodeObject(quarterstaff, forKey: kDMPurchaseQuarterstaffKey)
		aCoder.encodeObject(recipeMaelstrom, forKey: kDMPurchaseRecipeMaelstromKey)
		aCoder.encodeObject(oblivionStaff, forKey: kDMPurchaseOblivionStaffKey)
		aCoder.encodeObject(magicWand, forKey: kDMPurchaseMagicWandKey)
		aCoder.encodeObject(recipeBracer, forKey: kDMPurchaseRecipeBracerKey)
		aCoder.encodeObject(glimmerCape, forKey: kDMPurchaseGlimmerCapeKey)
		aCoder.encodeObject(ringOfAquila, forKey: kDMPurchaseRingOfAquilaKey)
		aCoder.encodeObject(slippers, forKey: kDMPurchaseSlippersKey)
		aCoder.encodeObject(lesserCrit, forKey: kDMPurchaseLesserCritKey)
		aCoder.encodeObject(recipeSange, forKey: kDMPurchaseRecipeSangeKey)
		aCoder.encodeObject(javelin, forKey: kDMPurchaseJavelinKey)
		aCoder.encodeObject(helmOfTheDominator, forKey: kDMPurchaseHelmOfTheDominatorKey)
		aCoder.encodeObject(cloak, forKey: kDMPurchaseCloakKey)
		aCoder.encodeObject(recipeAbyssalBlade, forKey: kDMPurchaseRecipeAbyssalBladeKey)
		aCoder.encodeObject(gem, forKey: kDMPurchaseGemKey)
		aCoder.encodeObject(bracer, forKey: kDMPurchaseBracerKey)
		aCoder.encodeObject(robe, forKey: kDMPurchaseRobeKey)
		aCoder.encodeObject(recipeOrchid, forKey: kDMPurchaseRecipeOrchidKey)
		aCoder.encodeObject(recipeLesserCrit, forKey: kDMPurchaseRecipeLesserCritKey)
		aCoder.encodeObject(bottle, forKey: kDMPurchaseBottleKey)
		aCoder.encodeObject(chainmail, forKey: kDMPurchaseChainmailKey)
		aCoder.encodeObject(recipeMjollnir, forKey: kDMPurchaseRecipeMjollnirKey)

    }

}
