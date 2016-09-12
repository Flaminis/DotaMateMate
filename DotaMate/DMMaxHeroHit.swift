//
//  DMMaxHeroHit.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMMaxHeroHit: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMMaxHeroHitPlayerSlotKey: String = "player_slot"
	internal let kDMMaxHeroHitValueKey: String = "value"
	internal let kDMMaxHeroHitKeyKey: String = "key"
	internal let kDMMaxHeroHitTimeKey: String = "time"
	internal let kDMMaxHeroHitMaxKey: String = "max"
	internal let kDMMaxHeroHitInflictorKey: String = "inflictor"
	internal let kDMMaxHeroHitSlotKey: String = "slot"
	internal let kDMMaxHeroHitUnitKey: String = "unit"
	internal let kDMMaxHeroHitTypeKey: String = "type"


    // MARK: Properties
	public var playerSlot: Int?
	public var value: Int?
	public var key: String?
	public var time: Int?
	public var max: Bool = false
	public var inflictor: String?
	public var slot: Int?
	public var unit: String?
	public var type: String?


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
		playerSlot = json[kDMMaxHeroHitPlayerSlotKey].int
		value = json[kDMMaxHeroHitValueKey].int
		key = json[kDMMaxHeroHitKeyKey].string
		time = json[kDMMaxHeroHitTimeKey].int
		max = json[kDMMaxHeroHitMaxKey].boolValue
		inflictor = json[kDMMaxHeroHitInflictorKey].string
		slot = json[kDMMaxHeroHitSlotKey].int
		unit = json[kDMMaxHeroHitUnitKey].string
		type = json[kDMMaxHeroHitTypeKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if playerSlot != nil {
			dictionary.updateValue(playerSlot!, forKey: kDMMaxHeroHitPlayerSlotKey)
		}
		if value != nil {
			dictionary.updateValue(value!, forKey: kDMMaxHeroHitValueKey)
		}
		if key != nil {
			dictionary.updateValue(key!, forKey: kDMMaxHeroHitKeyKey)
		}
		if time != nil {
			dictionary.updateValue(time!, forKey: kDMMaxHeroHitTimeKey)
		}
		dictionary.updateValue(max, forKey: kDMMaxHeroHitMaxKey)
		if inflictor != nil {
			dictionary.updateValue(inflictor!, forKey: kDMMaxHeroHitInflictorKey)
		}
		if slot != nil {
			dictionary.updateValue(slot!, forKey: kDMMaxHeroHitSlotKey)
		}
		if unit != nil {
			dictionary.updateValue(unit!, forKey: kDMMaxHeroHitUnitKey)
		}
		if type != nil {
			dictionary.updateValue(type!, forKey: kDMMaxHeroHitTypeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.playerSlot = aDecoder.decodeObjectForKey(kDMMaxHeroHitPlayerSlotKey) as? Int
		self.value = aDecoder.decodeObjectForKey(kDMMaxHeroHitValueKey) as? Int
		self.key = aDecoder.decodeObjectForKey(kDMMaxHeroHitKeyKey) as? String
		self.time = aDecoder.decodeObjectForKey(kDMMaxHeroHitTimeKey) as? Int
		self.max = aDecoder.decodeBoolForKey(kDMMaxHeroHitMaxKey)
		self.inflictor = aDecoder.decodeObjectForKey(kDMMaxHeroHitInflictorKey) as? String
		self.slot = aDecoder.decodeObjectForKey(kDMMaxHeroHitSlotKey) as? Int
		self.unit = aDecoder.decodeObjectForKey(kDMMaxHeroHitUnitKey) as? String
		self.type = aDecoder.decodeObjectForKey(kDMMaxHeroHitTypeKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(playerSlot, forKey: kDMMaxHeroHitPlayerSlotKey)
		aCoder.encodeObject(value, forKey: kDMMaxHeroHitValueKey)
		aCoder.encodeObject(key, forKey: kDMMaxHeroHitKeyKey)
		aCoder.encodeObject(time, forKey: kDMMaxHeroHitTimeKey)
		aCoder.encodeBool(max, forKey: kDMMaxHeroHitMaxKey)
		aCoder.encodeObject(inflictor, forKey: kDMMaxHeroHitInflictorKey)
		aCoder.encodeObject(slot, forKey: kDMMaxHeroHitSlotKey)
		aCoder.encodeObject(unit, forKey: kDMMaxHeroHitUnitKey)
		aCoder.encodeObject(type, forKey: kDMMaxHeroHitTypeKey)

    }

}
