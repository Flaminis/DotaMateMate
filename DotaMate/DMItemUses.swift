//
//  DMItemUses.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMItemUses: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMItemUsesCourierKey: String = "courier"
	internal let kDMItemUsesTangoKey: String = "tango"
	internal let kDMItemUsesPowerTreadsKey: String = "power_treads"
	internal let kDMItemUsesTangoSingleKey: String = "tango_single"
	internal let kDMItemUsesRingOfBasiliusKey: String = "ring_of_basilius"
	internal let kDMItemUsesShadowAmuletKey: String = "shadow_amulet"
	internal let kDMItemUsesBloodthornKey: String = "bloodthorn"
	internal let kDMItemUsesClarityKey: String = "clarity"
	internal let kDMItemUsesPipeKey: String = "pipe"
	internal let kDMItemUsesInvisSwordKey: String = "invis_sword"
	internal let kDMItemUsesTravelBoots2Key: String = "travel_boots_2"
	internal let kDMItemUsesWardDispenserKey: String = "ward_dispenser"
	internal let kDMItemUsesMagicWandKey: String = "magic_wand"
	internal let kDMItemUsesEnchantedMangoKey: String = "enchanted_mango"
	internal let kDMItemUsesRiverPainter5Key: String = "river_painter5"
	internal let kDMItemUsesCrimsonGuardKey: String = "crimson_guard"
	internal let kDMItemUsesGlimmerCapeKey: String = "glimmer_cape"
	internal let kDMItemUsesSilverEdgeKey: String = "silver_edge"
	internal let kDMItemUsesUrnOfShadowsKey: String = "urn_of_shadows"
	internal let kDMItemUsesHoodOfDefianceKey: String = "hood_of_defiance"
	internal let kDMItemUsesMantaKey: String = "manta"
	internal let kDMItemUsesTomeOfKnowledgeKey: String = "tome_of_knowledge"
	internal let kDMItemUsesBfuryKey: String = "bfury"
	internal let kDMItemUsesMjollnirKey: String = "mjollnir"
	internal let kDMItemUsesDustKey: String = "dust"
	internal let kDMItemUsesFlaskKey: String = "flask"
	internal let kDMItemUsesWardObserverKey: String = "ward_observer"
	internal let kDMItemUsesOrchidKey: String = "orchid"
	internal let kDMItemUsesAncientJanggoKey: String = "ancient_janggo"
	internal let kDMItemUsesAbyssalBladeKey: String = "abyssal_blade"
	internal let kDMItemUsesMagicStickKey: String = "magic_stick"
	internal let kDMItemUsesTravelBootsKey: String = "travel_boots"
	internal let kDMItemUsesBottleKey: String = "bottle"
	internal let kDMItemUsesBlackKingBarKey: String = "black_king_bar"
	internal let kDMItemUsesTpscrollKey: String = "tpscroll"
	internal let kDMItemUsesFaerieFireKey: String = "faerie_fire"
	internal let kDMItemUsesPhaseBootsKey: String = "phase_boots"
	internal let kDMItemUsesMoonShardKey: String = "moon_shard"
	internal let kDMItemUsesSolarCrestKey: String = "solar_crest"
	internal let kDMItemUsesWardSentryKey: String = "ward_sentry"
	internal let kDMItemUsesArmletKey: String = "armlet"
	internal let kDMItemUsesBranchesKey: String = "branches"
	internal let kDMItemUsesHandOfMidasKey: String = "hand_of_midas"


    // MARK: Properties
	public var courier: Int?
	public var tango: Int?
	public var powerTreads: Int?
	public var tangoSingle: Int?
	public var ringOfBasilius: Int?
	public var shadowAmulet: Int?
	public var bloodthorn: Int?
	public var clarity: Int?
	public var pipe: Int?
	public var invisSword: Int?
	public var travelBoots2: Int?
	public var wardDispenser: Int?
	public var magicWand: Int?
	public var enchantedMango: Int?
	public var riverPainter5: Int?
	public var crimsonGuard: Int?
	public var glimmerCape: Int?
	public var silverEdge: Int?
	public var urnOfShadows: Int?
	public var hoodOfDefiance: Int?
	public var manta: Int?
	public var tomeOfKnowledge: Int?
	public var bfury: Int?
	public var mjollnir: Int?
	public var dust: Int?
	public var flask: Int?
	public var wardObserver: Int?
	public var orchid: Int?
	public var ancientJanggo: Int?
	public var abyssalBlade: Int?
	public var magicStick: Int?
	public var travelBoots: Int?
	public var bottle: Int?
	public var blackKingBar: Int?
	public var tpscroll: Int?
	public var faerieFire: Int?
	public var phaseBoots: Int?
	public var moonShard: Int?
	public var solarCrest: Int?
	public var wardSentry: Int?
	public var armlet: Int?
	public var branches: Int?
	public var handOfMidas: Int?


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
		courier = json[kDMItemUsesCourierKey].int
		tango = json[kDMItemUsesTangoKey].int
		powerTreads = json[kDMItemUsesPowerTreadsKey].int
		tangoSingle = json[kDMItemUsesTangoSingleKey].int
		ringOfBasilius = json[kDMItemUsesRingOfBasiliusKey].int
		shadowAmulet = json[kDMItemUsesShadowAmuletKey].int
		bloodthorn = json[kDMItemUsesBloodthornKey].int
		clarity = json[kDMItemUsesClarityKey].int
		pipe = json[kDMItemUsesPipeKey].int
		invisSword = json[kDMItemUsesInvisSwordKey].int
		travelBoots2 = json[kDMItemUsesTravelBoots2Key].int
		wardDispenser = json[kDMItemUsesWardDispenserKey].int
		magicWand = json[kDMItemUsesMagicWandKey].int
		enchantedMango = json[kDMItemUsesEnchantedMangoKey].int
		riverPainter5 = json[kDMItemUsesRiverPainter5Key].int
		crimsonGuard = json[kDMItemUsesCrimsonGuardKey].int
		glimmerCape = json[kDMItemUsesGlimmerCapeKey].int
		silverEdge = json[kDMItemUsesSilverEdgeKey].int
		urnOfShadows = json[kDMItemUsesUrnOfShadowsKey].int
		hoodOfDefiance = json[kDMItemUsesHoodOfDefianceKey].int
		manta = json[kDMItemUsesMantaKey].int
		tomeOfKnowledge = json[kDMItemUsesTomeOfKnowledgeKey].int
		bfury = json[kDMItemUsesBfuryKey].int
		mjollnir = json[kDMItemUsesMjollnirKey].int
		dust = json[kDMItemUsesDustKey].int
		flask = json[kDMItemUsesFlaskKey].int
		wardObserver = json[kDMItemUsesWardObserverKey].int
		orchid = json[kDMItemUsesOrchidKey].int
		ancientJanggo = json[kDMItemUsesAncientJanggoKey].int
		abyssalBlade = json[kDMItemUsesAbyssalBladeKey].int
		magicStick = json[kDMItemUsesMagicStickKey].int
		travelBoots = json[kDMItemUsesTravelBootsKey].int
		bottle = json[kDMItemUsesBottleKey].int
		blackKingBar = json[kDMItemUsesBlackKingBarKey].int
		tpscroll = json[kDMItemUsesTpscrollKey].int
		faerieFire = json[kDMItemUsesFaerieFireKey].int
		phaseBoots = json[kDMItemUsesPhaseBootsKey].int
		moonShard = json[kDMItemUsesMoonShardKey].int
		solarCrest = json[kDMItemUsesSolarCrestKey].int
		wardSentry = json[kDMItemUsesWardSentryKey].int
		armlet = json[kDMItemUsesArmletKey].int
		branches = json[kDMItemUsesBranchesKey].int
		handOfMidas = json[kDMItemUsesHandOfMidasKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if courier != nil {
			dictionary.updateValue(courier!, forKey: kDMItemUsesCourierKey)
		}
		if tango != nil {
			dictionary.updateValue(tango!, forKey: kDMItemUsesTangoKey)
		}
		if powerTreads != nil {
			dictionary.updateValue(powerTreads!, forKey: kDMItemUsesPowerTreadsKey)
		}
		if tangoSingle != nil {
			dictionary.updateValue(tangoSingle!, forKey: kDMItemUsesTangoSingleKey)
		}
		if ringOfBasilius != nil {
			dictionary.updateValue(ringOfBasilius!, forKey: kDMItemUsesRingOfBasiliusKey)
		}
		if shadowAmulet != nil {
			dictionary.updateValue(shadowAmulet!, forKey: kDMItemUsesShadowAmuletKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn!, forKey: kDMItemUsesBloodthornKey)
		}
		if clarity != nil {
			dictionary.updateValue(clarity!, forKey: kDMItemUsesClarityKey)
		}
		if pipe != nil {
			dictionary.updateValue(pipe!, forKey: kDMItemUsesPipeKey)
		}
		if invisSword != nil {
			dictionary.updateValue(invisSword!, forKey: kDMItemUsesInvisSwordKey)
		}
		if travelBoots2 != nil {
			dictionary.updateValue(travelBoots2!, forKey: kDMItemUsesTravelBoots2Key)
		}
		if wardDispenser != nil {
			dictionary.updateValue(wardDispenser!, forKey: kDMItemUsesWardDispenserKey)
		}
		if magicWand != nil {
			dictionary.updateValue(magicWand!, forKey: kDMItemUsesMagicWandKey)
		}
		if enchantedMango != nil {
			dictionary.updateValue(enchantedMango!, forKey: kDMItemUsesEnchantedMangoKey)
		}
		if riverPainter5 != nil {
			dictionary.updateValue(riverPainter5!, forKey: kDMItemUsesRiverPainter5Key)
		}
		if crimsonGuard != nil {
			dictionary.updateValue(crimsonGuard!, forKey: kDMItemUsesCrimsonGuardKey)
		}
		if glimmerCape != nil {
			dictionary.updateValue(glimmerCape!, forKey: kDMItemUsesGlimmerCapeKey)
		}
		if silverEdge != nil {
			dictionary.updateValue(silverEdge!, forKey: kDMItemUsesSilverEdgeKey)
		}
		if urnOfShadows != nil {
			dictionary.updateValue(urnOfShadows!, forKey: kDMItemUsesUrnOfShadowsKey)
		}
		if hoodOfDefiance != nil {
			dictionary.updateValue(hoodOfDefiance!, forKey: kDMItemUsesHoodOfDefianceKey)
		}
		if manta != nil {
			dictionary.updateValue(manta!, forKey: kDMItemUsesMantaKey)
		}
		if tomeOfKnowledge != nil {
			dictionary.updateValue(tomeOfKnowledge!, forKey: kDMItemUsesTomeOfKnowledgeKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury!, forKey: kDMItemUsesBfuryKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir!, forKey: kDMItemUsesMjollnirKey)
		}
		if dust != nil {
			dictionary.updateValue(dust!, forKey: kDMItemUsesDustKey)
		}
		if flask != nil {
			dictionary.updateValue(flask!, forKey: kDMItemUsesFlaskKey)
		}
		if wardObserver != nil {
			dictionary.updateValue(wardObserver!, forKey: kDMItemUsesWardObserverKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid!, forKey: kDMItemUsesOrchidKey)
		}
		if ancientJanggo != nil {
			dictionary.updateValue(ancientJanggo!, forKey: kDMItemUsesAncientJanggoKey)
		}
		if abyssalBlade != nil {
			dictionary.updateValue(abyssalBlade!, forKey: kDMItemUsesAbyssalBladeKey)
		}
		if magicStick != nil {
			dictionary.updateValue(magicStick!, forKey: kDMItemUsesMagicStickKey)
		}
		if travelBoots != nil {
			dictionary.updateValue(travelBoots!, forKey: kDMItemUsesTravelBootsKey)
		}
		if bottle != nil {
			dictionary.updateValue(bottle!, forKey: kDMItemUsesBottleKey)
		}
		if blackKingBar != nil {
			dictionary.updateValue(blackKingBar!, forKey: kDMItemUsesBlackKingBarKey)
		}
		if tpscroll != nil {
			dictionary.updateValue(tpscroll!, forKey: kDMItemUsesTpscrollKey)
		}
		if faerieFire != nil {
			dictionary.updateValue(faerieFire!, forKey: kDMItemUsesFaerieFireKey)
		}
		if phaseBoots != nil {
			dictionary.updateValue(phaseBoots!, forKey: kDMItemUsesPhaseBootsKey)
		}
		if moonShard != nil {
			dictionary.updateValue(moonShard!, forKey: kDMItemUsesMoonShardKey)
		}
		if solarCrest != nil {
			dictionary.updateValue(solarCrest!, forKey: kDMItemUsesSolarCrestKey)
		}
		if wardSentry != nil {
			dictionary.updateValue(wardSentry!, forKey: kDMItemUsesWardSentryKey)
		}
		if armlet != nil {
			dictionary.updateValue(armlet!, forKey: kDMItemUsesArmletKey)
		}
		if branches != nil {
			dictionary.updateValue(branches!, forKey: kDMItemUsesBranchesKey)
		}
		if handOfMidas != nil {
			dictionary.updateValue(handOfMidas!, forKey: kDMItemUsesHandOfMidasKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.courier = aDecoder.decodeObjectForKey(kDMItemUsesCourierKey) as? Int
		self.tango = aDecoder.decodeObjectForKey(kDMItemUsesTangoKey) as? Int
		self.powerTreads = aDecoder.decodeObjectForKey(kDMItemUsesPowerTreadsKey) as? Int
		self.tangoSingle = aDecoder.decodeObjectForKey(kDMItemUsesTangoSingleKey) as? Int
		self.ringOfBasilius = aDecoder.decodeObjectForKey(kDMItemUsesRingOfBasiliusKey) as? Int
		self.shadowAmulet = aDecoder.decodeObjectForKey(kDMItemUsesShadowAmuletKey) as? Int
		self.bloodthorn = aDecoder.decodeObjectForKey(kDMItemUsesBloodthornKey) as? Int
		self.clarity = aDecoder.decodeObjectForKey(kDMItemUsesClarityKey) as? Int
		self.pipe = aDecoder.decodeObjectForKey(kDMItemUsesPipeKey) as? Int
		self.invisSword = aDecoder.decodeObjectForKey(kDMItemUsesInvisSwordKey) as? Int
		self.travelBoots2 = aDecoder.decodeObjectForKey(kDMItemUsesTravelBoots2Key) as? Int
		self.wardDispenser = aDecoder.decodeObjectForKey(kDMItemUsesWardDispenserKey) as? Int
		self.magicWand = aDecoder.decodeObjectForKey(kDMItemUsesMagicWandKey) as? Int
		self.enchantedMango = aDecoder.decodeObjectForKey(kDMItemUsesEnchantedMangoKey) as? Int
		self.riverPainter5 = aDecoder.decodeObjectForKey(kDMItemUsesRiverPainter5Key) as? Int
		self.crimsonGuard = aDecoder.decodeObjectForKey(kDMItemUsesCrimsonGuardKey) as? Int
		self.glimmerCape = aDecoder.decodeObjectForKey(kDMItemUsesGlimmerCapeKey) as? Int
		self.silverEdge = aDecoder.decodeObjectForKey(kDMItemUsesSilverEdgeKey) as? Int
		self.urnOfShadows = aDecoder.decodeObjectForKey(kDMItemUsesUrnOfShadowsKey) as? Int
		self.hoodOfDefiance = aDecoder.decodeObjectForKey(kDMItemUsesHoodOfDefianceKey) as? Int
		self.manta = aDecoder.decodeObjectForKey(kDMItemUsesMantaKey) as? Int
		self.tomeOfKnowledge = aDecoder.decodeObjectForKey(kDMItemUsesTomeOfKnowledgeKey) as? Int
		self.bfury = aDecoder.decodeObjectForKey(kDMItemUsesBfuryKey) as? Int
		self.mjollnir = aDecoder.decodeObjectForKey(kDMItemUsesMjollnirKey) as? Int
		self.dust = aDecoder.decodeObjectForKey(kDMItemUsesDustKey) as? Int
		self.flask = aDecoder.decodeObjectForKey(kDMItemUsesFlaskKey) as? Int
		self.wardObserver = aDecoder.decodeObjectForKey(kDMItemUsesWardObserverKey) as? Int
		self.orchid = aDecoder.decodeObjectForKey(kDMItemUsesOrchidKey) as? Int
		self.ancientJanggo = aDecoder.decodeObjectForKey(kDMItemUsesAncientJanggoKey) as? Int
		self.abyssalBlade = aDecoder.decodeObjectForKey(kDMItemUsesAbyssalBladeKey) as? Int
		self.magicStick = aDecoder.decodeObjectForKey(kDMItemUsesMagicStickKey) as? Int
		self.travelBoots = aDecoder.decodeObjectForKey(kDMItemUsesTravelBootsKey) as? Int
		self.bottle = aDecoder.decodeObjectForKey(kDMItemUsesBottleKey) as? Int
		self.blackKingBar = aDecoder.decodeObjectForKey(kDMItemUsesBlackKingBarKey) as? Int
		self.tpscroll = aDecoder.decodeObjectForKey(kDMItemUsesTpscrollKey) as? Int
		self.faerieFire = aDecoder.decodeObjectForKey(kDMItemUsesFaerieFireKey) as? Int
		self.phaseBoots = aDecoder.decodeObjectForKey(kDMItemUsesPhaseBootsKey) as? Int
		self.moonShard = aDecoder.decodeObjectForKey(kDMItemUsesMoonShardKey) as? Int
		self.solarCrest = aDecoder.decodeObjectForKey(kDMItemUsesSolarCrestKey) as? Int
		self.wardSentry = aDecoder.decodeObjectForKey(kDMItemUsesWardSentryKey) as? Int
		self.armlet = aDecoder.decodeObjectForKey(kDMItemUsesArmletKey) as? Int
		self.branches = aDecoder.decodeObjectForKey(kDMItemUsesBranchesKey) as? Int
		self.handOfMidas = aDecoder.decodeObjectForKey(kDMItemUsesHandOfMidasKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(courier, forKey: kDMItemUsesCourierKey)
		aCoder.encodeObject(tango, forKey: kDMItemUsesTangoKey)
		aCoder.encodeObject(powerTreads, forKey: kDMItemUsesPowerTreadsKey)
		aCoder.encodeObject(tangoSingle, forKey: kDMItemUsesTangoSingleKey)
		aCoder.encodeObject(ringOfBasilius, forKey: kDMItemUsesRingOfBasiliusKey)
		aCoder.encodeObject(shadowAmulet, forKey: kDMItemUsesShadowAmuletKey)
		aCoder.encodeObject(bloodthorn, forKey: kDMItemUsesBloodthornKey)
		aCoder.encodeObject(clarity, forKey: kDMItemUsesClarityKey)
		aCoder.encodeObject(pipe, forKey: kDMItemUsesPipeKey)
		aCoder.encodeObject(invisSword, forKey: kDMItemUsesInvisSwordKey)
		aCoder.encodeObject(travelBoots2, forKey: kDMItemUsesTravelBoots2Key)
		aCoder.encodeObject(wardDispenser, forKey: kDMItemUsesWardDispenserKey)
		aCoder.encodeObject(magicWand, forKey: kDMItemUsesMagicWandKey)
		aCoder.encodeObject(enchantedMango, forKey: kDMItemUsesEnchantedMangoKey)
		aCoder.encodeObject(riverPainter5, forKey: kDMItemUsesRiverPainter5Key)
		aCoder.encodeObject(crimsonGuard, forKey: kDMItemUsesCrimsonGuardKey)
		aCoder.encodeObject(glimmerCape, forKey: kDMItemUsesGlimmerCapeKey)
		aCoder.encodeObject(silverEdge, forKey: kDMItemUsesSilverEdgeKey)
		aCoder.encodeObject(urnOfShadows, forKey: kDMItemUsesUrnOfShadowsKey)
		aCoder.encodeObject(hoodOfDefiance, forKey: kDMItemUsesHoodOfDefianceKey)
		aCoder.encodeObject(manta, forKey: kDMItemUsesMantaKey)
		aCoder.encodeObject(tomeOfKnowledge, forKey: kDMItemUsesTomeOfKnowledgeKey)
		aCoder.encodeObject(bfury, forKey: kDMItemUsesBfuryKey)
		aCoder.encodeObject(mjollnir, forKey: kDMItemUsesMjollnirKey)
		aCoder.encodeObject(dust, forKey: kDMItemUsesDustKey)
		aCoder.encodeObject(flask, forKey: kDMItemUsesFlaskKey)
		aCoder.encodeObject(wardObserver, forKey: kDMItemUsesWardObserverKey)
		aCoder.encodeObject(orchid, forKey: kDMItemUsesOrchidKey)
		aCoder.encodeObject(ancientJanggo, forKey: kDMItemUsesAncientJanggoKey)
		aCoder.encodeObject(abyssalBlade, forKey: kDMItemUsesAbyssalBladeKey)
		aCoder.encodeObject(magicStick, forKey: kDMItemUsesMagicStickKey)
		aCoder.encodeObject(travelBoots, forKey: kDMItemUsesTravelBootsKey)
		aCoder.encodeObject(bottle, forKey: kDMItemUsesBottleKey)
		aCoder.encodeObject(blackKingBar, forKey: kDMItemUsesBlackKingBarKey)
		aCoder.encodeObject(tpscroll, forKey: kDMItemUsesTpscrollKey)
		aCoder.encodeObject(faerieFire, forKey: kDMItemUsesFaerieFireKey)
		aCoder.encodeObject(phaseBoots, forKey: kDMItemUsesPhaseBootsKey)
		aCoder.encodeObject(moonShard, forKey: kDMItemUsesMoonShardKey)
		aCoder.encodeObject(solarCrest, forKey: kDMItemUsesSolarCrestKey)
		aCoder.encodeObject(wardSentry, forKey: kDMItemUsesWardSentryKey)
		aCoder.encodeObject(armlet, forKey: kDMItemUsesArmletKey)
		aCoder.encodeObject(branches, forKey: kDMItemUsesBranchesKey)
		aCoder.encodeObject(handOfMidas, forKey: kDMItemUsesHandOfMidasKey)

    }

}
