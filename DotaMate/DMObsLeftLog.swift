//
//  DMObsLeftLog.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMObsLeftLog: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMObsLeftLogEntityleftKey: String = "entityleft"
	internal let kDMObsLeftLogPlayerSlotKey: String = "player_slot"
	internal let kDMObsLeftLogEhandleKey: String = "ehandle"
	internal let kDMObsLeftLogTimeKey: String = "time"
	internal let kDMObsLeftLogKeyKey: String = "key"
	internal let kDMObsLeftLogSlotKey: String = "slot"
	internal let kDMObsLeftLogXKey: String = "x"
	internal let kDMObsLeftLogYKey: String = "y"
	internal let kDMObsLeftLogZKey: String = "z"
	internal let kDMObsLeftLogTypeKey: String = "type"


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
		entityleft = json[kDMObsLeftLogEntityleftKey].boolValue
		playerSlot = json[kDMObsLeftLogPlayerSlotKey].int
		ehandle = json[kDMObsLeftLogEhandleKey].int
		time = json[kDMObsLeftLogTimeKey].int
		key = json[kDMObsLeftLogKeyKey].string
		slot = json[kDMObsLeftLogSlotKey].int
		x = json[kDMObsLeftLogXKey].int
		y = json[kDMObsLeftLogYKey].int
		z = json[kDMObsLeftLogZKey].int
		type = json[kDMObsLeftLogTypeKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		dictionary.updateValue(entityleft, forKey: kDMObsLeftLogEntityleftKey)
		if playerSlot != nil {
			dictionary.updateValue(playerSlot!, forKey: kDMObsLeftLogPlayerSlotKey)
		}
		if ehandle != nil {
			dictionary.updateValue(ehandle!, forKey: kDMObsLeftLogEhandleKey)
		}
		if time != nil {
			dictionary.updateValue(time!, forKey: kDMObsLeftLogTimeKey)
		}
		if key != nil {
			dictionary.updateValue(key!, forKey: kDMObsLeftLogKeyKey)
		}
		if slot != nil {
			dictionary.updateValue(slot!, forKey: kDMObsLeftLogSlotKey)
		}
		if x != nil {
			dictionary.updateValue(x!, forKey: kDMObsLeftLogXKey)
		}
		if y != nil {
			dictionary.updateValue(y!, forKey: kDMObsLeftLogYKey)
		}
		if z != nil {
			dictionary.updateValue(z!, forKey: kDMObsLeftLogZKey)
		}
		if type != nil {
			dictionary.updateValue(type!, forKey: kDMObsLeftLogTypeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.entityleft = aDecoder.decodeBoolForKey(kDMObsLeftLogEntityleftKey)
		self.playerSlot = aDecoder.decodeObjectForKey(kDMObsLeftLogPlayerSlotKey) as? Int
		self.ehandle = aDecoder.decodeObjectForKey(kDMObsLeftLogEhandleKey) as? Int
		self.time = aDecoder.decodeObjectForKey(kDMObsLeftLogTimeKey) as? Int
		self.key = aDecoder.decodeObjectForKey(kDMObsLeftLogKeyKey) as? String
		self.slot = aDecoder.decodeObjectForKey(kDMObsLeftLogSlotKey) as? Int
		self.x = aDecoder.decodeObjectForKey(kDMObsLeftLogXKey) as? Int
		self.y = aDecoder.decodeObjectForKey(kDMObsLeftLogYKey) as? Int
		self.z = aDecoder.decodeObjectForKey(kDMObsLeftLogZKey) as? Int
		self.type = aDecoder.decodeObjectForKey(kDMObsLeftLogTypeKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeBool(entityleft, forKey: kDMObsLeftLogEntityleftKey)
		aCoder.encodeObject(playerSlot, forKey: kDMObsLeftLogPlayerSlotKey)
		aCoder.encodeObject(ehandle, forKey: kDMObsLeftLogEhandleKey)
		aCoder.encodeObject(time, forKey: kDMObsLeftLogTimeKey)
		aCoder.encodeObject(key, forKey: kDMObsLeftLogKeyKey)
		aCoder.encodeObject(slot, forKey: kDMObsLeftLogSlotKey)
		aCoder.encodeObject(x, forKey: kDMObsLeftLogXKey)
		aCoder.encodeObject(y, forKey: kDMObsLeftLogYKey)
		aCoder.encodeObject(z, forKey: kDMObsLeftLogZKey)
		aCoder.encodeObject(type, forKey: kDMObsLeftLogTypeKey)

    }

}
