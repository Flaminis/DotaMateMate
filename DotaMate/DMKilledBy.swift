//
//  DMKilledBy.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMKilledBy: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMKilledByNpcDotaHeroVengefulspiritKey: String = "npc_dota_hero_vengefulspirit"
	internal let kDMKilledByNpcDotaHeroAbaddonKey: String = "npc_dota_hero_abaddon"
	internal let kDMKilledByNpcDotaHeroArcWardenKey: String = "npc_dota_hero_arc_warden"
	internal let kDMKilledByNpcDotaHeroCrystalMaidenKey: String = "npc_dota_hero_crystal_maiden"
	internal let kDMKilledByNpcDotaHeroEmberSpiritKey: String = "npc_dota_hero_ember_spirit"
	internal let kDMKilledByNpcDotaHeroNevermoreKey: String = "npc_dota_hero_nevermore"
	internal let kDMKilledByNpcDotaHeroViperKey: String = "npc_dota_hero_viper"
	internal let kDMKilledByNpcDotaHeroBristlebackKey: String = "npc_dota_hero_bristleback"
	internal let kDMKilledByNpcDotaHeroKunkkaKey: String = "npc_dota_hero_kunkka"
	internal let kDMKilledByNpcDotaHeroJuggernautKey: String = "npc_dota_hero_juggernaut"


    // MARK: Properties
	public var npcDotaHeroVengefulspirit: Int?
	public var npcDotaHeroAbaddon: Int?
	public var npcDotaHeroArcWarden: Int?
	public var npcDotaHeroCrystalMaiden: Int?
	public var npcDotaHeroEmberSpirit: Int?
	public var npcDotaHeroNevermore: Int?
	public var npcDotaHeroViper: Int?
	public var npcDotaHeroBristleback: Int?
	public var npcDotaHeroKunkka: Int?
	public var npcDotaHeroJuggernaut: Int?


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
		npcDotaHeroVengefulspirit = json[kDMKilledByNpcDotaHeroVengefulspiritKey].int
		npcDotaHeroAbaddon = json[kDMKilledByNpcDotaHeroAbaddonKey].int
		npcDotaHeroArcWarden = json[kDMKilledByNpcDotaHeroArcWardenKey].int
		npcDotaHeroCrystalMaiden = json[kDMKilledByNpcDotaHeroCrystalMaidenKey].int
		npcDotaHeroEmberSpirit = json[kDMKilledByNpcDotaHeroEmberSpiritKey].int
		npcDotaHeroNevermore = json[kDMKilledByNpcDotaHeroNevermoreKey].int
		npcDotaHeroViper = json[kDMKilledByNpcDotaHeroViperKey].int
		npcDotaHeroBristleback = json[kDMKilledByNpcDotaHeroBristlebackKey].int
		npcDotaHeroKunkka = json[kDMKilledByNpcDotaHeroKunkkaKey].int
		npcDotaHeroJuggernaut = json[kDMKilledByNpcDotaHeroJuggernautKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if npcDotaHeroVengefulspirit != nil {
			dictionary.updateValue(npcDotaHeroVengefulspirit!, forKey: kDMKilledByNpcDotaHeroVengefulspiritKey)
		}
		if npcDotaHeroAbaddon != nil {
			dictionary.updateValue(npcDotaHeroAbaddon!, forKey: kDMKilledByNpcDotaHeroAbaddonKey)
		}
		if npcDotaHeroArcWarden != nil {
			dictionary.updateValue(npcDotaHeroArcWarden!, forKey: kDMKilledByNpcDotaHeroArcWardenKey)
		}
		if npcDotaHeroCrystalMaiden != nil {
			dictionary.updateValue(npcDotaHeroCrystalMaiden!, forKey: kDMKilledByNpcDotaHeroCrystalMaidenKey)
		}
		if npcDotaHeroEmberSpirit != nil {
			dictionary.updateValue(npcDotaHeroEmberSpirit!, forKey: kDMKilledByNpcDotaHeroEmberSpiritKey)
		}
		if npcDotaHeroNevermore != nil {
			dictionary.updateValue(npcDotaHeroNevermore!, forKey: kDMKilledByNpcDotaHeroNevermoreKey)
		}
		if npcDotaHeroViper != nil {
			dictionary.updateValue(npcDotaHeroViper!, forKey: kDMKilledByNpcDotaHeroViperKey)
		}
		if npcDotaHeroBristleback != nil {
			dictionary.updateValue(npcDotaHeroBristleback!, forKey: kDMKilledByNpcDotaHeroBristlebackKey)
		}
		if npcDotaHeroKunkka != nil {
			dictionary.updateValue(npcDotaHeroKunkka!, forKey: kDMKilledByNpcDotaHeroKunkkaKey)
		}
		if npcDotaHeroJuggernaut != nil {
			dictionary.updateValue(npcDotaHeroJuggernaut!, forKey: kDMKilledByNpcDotaHeroJuggernautKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.npcDotaHeroVengefulspirit = aDecoder.decodeObjectForKey(kDMKilledByNpcDotaHeroVengefulspiritKey) as? Int
		self.npcDotaHeroAbaddon = aDecoder.decodeObjectForKey(kDMKilledByNpcDotaHeroAbaddonKey) as? Int
		self.npcDotaHeroArcWarden = aDecoder.decodeObjectForKey(kDMKilledByNpcDotaHeroArcWardenKey) as? Int
		self.npcDotaHeroCrystalMaiden = aDecoder.decodeObjectForKey(kDMKilledByNpcDotaHeroCrystalMaidenKey) as? Int
		self.npcDotaHeroEmberSpirit = aDecoder.decodeObjectForKey(kDMKilledByNpcDotaHeroEmberSpiritKey) as? Int
		self.npcDotaHeroNevermore = aDecoder.decodeObjectForKey(kDMKilledByNpcDotaHeroNevermoreKey) as? Int
		self.npcDotaHeroViper = aDecoder.decodeObjectForKey(kDMKilledByNpcDotaHeroViperKey) as? Int
		self.npcDotaHeroBristleback = aDecoder.decodeObjectForKey(kDMKilledByNpcDotaHeroBristlebackKey) as? Int
		self.npcDotaHeroKunkka = aDecoder.decodeObjectForKey(kDMKilledByNpcDotaHeroKunkkaKey) as? Int
		self.npcDotaHeroJuggernaut = aDecoder.decodeObjectForKey(kDMKilledByNpcDotaHeroJuggernautKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(npcDotaHeroVengefulspirit, forKey: kDMKilledByNpcDotaHeroVengefulspiritKey)
		aCoder.encodeObject(npcDotaHeroAbaddon, forKey: kDMKilledByNpcDotaHeroAbaddonKey)
		aCoder.encodeObject(npcDotaHeroArcWarden, forKey: kDMKilledByNpcDotaHeroArcWardenKey)
		aCoder.encodeObject(npcDotaHeroCrystalMaiden, forKey: kDMKilledByNpcDotaHeroCrystalMaidenKey)
		aCoder.encodeObject(npcDotaHeroEmberSpirit, forKey: kDMKilledByNpcDotaHeroEmberSpiritKey)
		aCoder.encodeObject(npcDotaHeroNevermore, forKey: kDMKilledByNpcDotaHeroNevermoreKey)
		aCoder.encodeObject(npcDotaHeroViper, forKey: kDMKilledByNpcDotaHeroViperKey)
		aCoder.encodeObject(npcDotaHeroBristleback, forKey: kDMKilledByNpcDotaHeroBristlebackKey)
		aCoder.encodeObject(npcDotaHeroKunkka, forKey: kDMKilledByNpcDotaHeroKunkkaKey)
		aCoder.encodeObject(npcDotaHeroJuggernaut, forKey: kDMKilledByNpcDotaHeroJuggernautKey)

    }

}
