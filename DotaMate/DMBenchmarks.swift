//
//  DMBenchmarks.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMBenchmarks: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMBenchmarksHeroDamagePerMinKey: String = "hero_damage_per_min"
	internal let kDMBenchmarksTowerDamageKey: String = "tower_damage"
	internal let kDMBenchmarksHeroHealingPerMinKey: String = "hero_healing_per_min"
	internal let kDMBenchmarksXpPerMinKey: String = "xp_per_min"
	internal let kDMBenchmarksKillsPerMinKey: String = "kills_per_min"
	internal let kDMBenchmarksGoldPerMinKey: String = "gold_per_min"
	internal let kDMBenchmarksLastHitsPerMinKey: String = "last_hits_per_min"


    // MARK: Properties
	public var heroDamagePerMin: DMHeroDamagePerMin?
	public var towerDamage: DMTowerDamage?
	public var heroHealingPerMin: DMHeroHealingPerMin?
	public var xpPerMin: DMXpPerMin?
	public var killsPerMin: DMKillsPerMin?
	public var goldPerMin: DMGoldPerMin?
	public var lastHitsPerMin: DMLastHitsPerMin?


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
		heroDamagePerMin = DMHeroDamagePerMin(json: json[kDMBenchmarksHeroDamagePerMinKey])
		towerDamage = DMTowerDamage(json: json[kDMBenchmarksTowerDamageKey])
		heroHealingPerMin = DMHeroHealingPerMin(json: json[kDMBenchmarksHeroHealingPerMinKey])
		xpPerMin = DMXpPerMin(json: json[kDMBenchmarksXpPerMinKey])
		killsPerMin = DMKillsPerMin(json: json[kDMBenchmarksKillsPerMinKey])
		goldPerMin = DMGoldPerMin(json: json[kDMBenchmarksGoldPerMinKey])
		lastHitsPerMin = DMLastHitsPerMin(json: json[kDMBenchmarksLastHitsPerMinKey])

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if heroDamagePerMin != nil {
			dictionary.updateValue(heroDamagePerMin!.dictionaryRepresentation(), forKey: kDMBenchmarksHeroDamagePerMinKey)
		}
		if towerDamage != nil {
			dictionary.updateValue(towerDamage!.dictionaryRepresentation(), forKey: kDMBenchmarksTowerDamageKey)
		}
		if heroHealingPerMin != nil {
			dictionary.updateValue(heroHealingPerMin!.dictionaryRepresentation(), forKey: kDMBenchmarksHeroHealingPerMinKey)
		}
		if xpPerMin != nil {
			dictionary.updateValue(xpPerMin!.dictionaryRepresentation(), forKey: kDMBenchmarksXpPerMinKey)
		}
		if killsPerMin != nil {
			dictionary.updateValue(killsPerMin!.dictionaryRepresentation(), forKey: kDMBenchmarksKillsPerMinKey)
		}
		if goldPerMin != nil {
			dictionary.updateValue(goldPerMin!.dictionaryRepresentation(), forKey: kDMBenchmarksGoldPerMinKey)
		}
		if lastHitsPerMin != nil {
			dictionary.updateValue(lastHitsPerMin!.dictionaryRepresentation(), forKey: kDMBenchmarksLastHitsPerMinKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.heroDamagePerMin = aDecoder.decodeObjectForKey(kDMBenchmarksHeroDamagePerMinKey) as? DMHeroDamagePerMin
		self.towerDamage = aDecoder.decodeObjectForKey(kDMBenchmarksTowerDamageKey) as? DMTowerDamage
		self.heroHealingPerMin = aDecoder.decodeObjectForKey(kDMBenchmarksHeroHealingPerMinKey) as? DMHeroHealingPerMin
		self.xpPerMin = aDecoder.decodeObjectForKey(kDMBenchmarksXpPerMinKey) as? DMXpPerMin
		self.killsPerMin = aDecoder.decodeObjectForKey(kDMBenchmarksKillsPerMinKey) as? DMKillsPerMin
		self.goldPerMin = aDecoder.decodeObjectForKey(kDMBenchmarksGoldPerMinKey) as? DMGoldPerMin
		self.lastHitsPerMin = aDecoder.decodeObjectForKey(kDMBenchmarksLastHitsPerMinKey) as? DMLastHitsPerMin

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(heroDamagePerMin, forKey: kDMBenchmarksHeroDamagePerMinKey)
		aCoder.encodeObject(towerDamage, forKey: kDMBenchmarksTowerDamageKey)
		aCoder.encodeObject(heroHealingPerMin, forKey: kDMBenchmarksHeroHealingPerMinKey)
		aCoder.encodeObject(xpPerMin, forKey: kDMBenchmarksXpPerMinKey)
		aCoder.encodeObject(killsPerMin, forKey: kDMBenchmarksKillsPerMinKey)
		aCoder.encodeObject(goldPerMin, forKey: kDMBenchmarksGoldPerMinKey)
		aCoder.encodeObject(lastHitsPerMin, forKey: kDMBenchmarksLastHitsPerMinKey)

    }

}
