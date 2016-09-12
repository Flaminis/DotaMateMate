//
//  DMObsLog.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMObsLog: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMObsLogEntityleftKey: String = "entityleft"
	internal let kDMObsLogPlayerSlotKey: String = "player_slot"
	internal let kDMObsLogEhandleKey: String = "ehandle"
	internal let kDMObsLogTimeKey: String = "time"
	internal let kDMObsLogKeyKey: String = "key"
	internal let kDMObsLogSlotKey: String = "slot"
	internal let kDMObsLogXKey: String = "x"
	internal let kDMObsLogYKey: String = "y"
	internal let kDMObsLogZKey: String = "z"
	internal let kDMObsLogTypeKey: String = "type"


    // MARK: Properties
	public var entityleft: Bool = false
	public var playerSlot: Int?
	public var ehandle: Int?
	public var time: Int?
	public var key: String?
	public var slot: Int?
	public var x: Int?
	public var y: Int?
	public var z: Int?
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
		entityleft = json[kDMObsLogEntityleftKey].boolValue
		playerSlot = json[kDMObsLogPlayerSlotKey].int
		ehandle = json[kDMObsLogEhandleKey].int
		time = json[kDMObsLogTimeKey].int
		key = json[kDMObsLogKeyKey].string
		slot = json[kDMObsLogSlotKey].int
		x = json[kDMObsLogXKey].int
		y = json[kDMObsLogYKey].int
		z = json[kDMObsLogZKey].int
		type = json[kDMObsLogTypeKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		dictionary.updateValue(entityleft, forKey: kDMObsLogEntityleftKey)
		if playerSlot != nil {
			dictionary.updateValue(playerSlot!, forKey: kDMObsLogPlayerSlotKey)
		}
		if ehandle != nil {
			dictionary.updateValue(ehandle!, forKey: kDMObsLogEhandleKey)
		}
		if time != nil {
			dictionary.updateValue(time!, forKey: kDMObsLogTimeKey)
		}
		if key != nil {
			dictionary.updateValue(key!, forKey: kDMObsLogKeyKey)
		}
		if slot != nil {
			dictionary.updateValue(slot!, forKey: kDMObsLogSlotKey)
		}
		if x != nil {
			dictionary.updateValue(x!, forKey: kDMObsLogXKey)
		}
		if y != nil {
			dictionary.updateValue(y!, forKey: kDMObsLogYKey)
		}
		if z != nil {
			dictionary.updateValue(z!, forKey: kDMObsLogZKey)
		}
		if type != nil {
			dictionary.updateValue(type!, forKey: kDMObsLogTypeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.entityleft = aDecoder.decodeBoolForKey(kDMObsLogEntityleftKey)
		self.playerSlot = aDecoder.decodeObjectForKey(kDMObsLogPlayerSlotKey) as? Int
		self.ehandle = aDecoder.decodeObjectForKey(kDMObsLogEhandleKey) as? Int
		self.time = aDecoder.decodeObjectForKey(kDMObsLogTimeKey) as? Int
		self.key = aDecoder.decodeObjectForKey(kDMObsLogKeyKey) as? String
		self.slot = aDecoder.decodeObjectForKey(kDMObsLogSlotKey) as? Int
		self.x = aDecoder.decodeObjectForKey(kDMObsLogXKey) as? Int
		self.y = aDecoder.decodeObjectForKey(kDMObsLogYKey) as? Int
		self.z = aDecoder.decodeObjectForKey(kDMObsLogZKey) as? Int
		self.type = aDecoder.decodeObjectForKey(kDMObsLogTypeKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeBool(entityleft, forKey: kDMObsLogEntityleftKey)
		aCoder.encodeObject(playerSlot, forKey: kDMObsLogPlayerSlotKey)
		aCoder.encodeObject(ehandle, forKey: kDMObsLogEhandleKey)
		aCoder.encodeObject(time, forKey: kDMObsLogTimeKey)
		aCoder.encodeObject(key, forKey: kDMObsLogKeyKey)
		aCoder.encodeObject(slot, forKey: kDMObsLogSlotKey)
		aCoder.encodeObject(x, forKey: kDMObsLogXKey)
		aCoder.encodeObject(y, forKey: kDMObsLogYKey)
		aCoder.encodeObject(z, forKey: kDMObsLogZKey)
		aCoder.encodeObject(type, forKey: kDMObsLogTypeKey)

    }

}
