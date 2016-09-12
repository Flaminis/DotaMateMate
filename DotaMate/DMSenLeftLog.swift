//
//  DMSenLeftLog.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMSenLeftLog: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMSenLeftLogEntityleftKey: String = "entityleft"
	internal let kDMSenLeftLogPlayerSlotKey: String = "player_slot"
	internal let kDMSenLeftLogEhandleKey: String = "ehandle"
	internal let kDMSenLeftLogTimeKey: String = "time"
	internal let kDMSenLeftLogKeyKey: String = "key"
	internal let kDMSenLeftLogSlotKey: String = "slot"
	internal let kDMSenLeftLogXKey: String = "x"
	internal let kDMSenLeftLogYKey: String = "y"
	internal let kDMSenLeftLogZKey: String = "z"
	internal let kDMSenLeftLogTypeKey: String = "type"


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
		entityleft = json[kDMSenLeftLogEntityleftKey].boolValue
		playerSlot = json[kDMSenLeftLogPlayerSlotKey].int
		ehandle = json[kDMSenLeftLogEhandleKey].int
		time = json[kDMSenLeftLogTimeKey].int
		key = json[kDMSenLeftLogKeyKey].string
		slot = json[kDMSenLeftLogSlotKey].int
		x = json[kDMSenLeftLogXKey].int
		y = json[kDMSenLeftLogYKey].int
		z = json[kDMSenLeftLogZKey].int
		type = json[kDMSenLeftLogTypeKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		dictionary.updateValue(entityleft, forKey: kDMSenLeftLogEntityleftKey)
		if playerSlot != nil {
			dictionary.updateValue(playerSlot!, forKey: kDMSenLeftLogPlayerSlotKey)
		}
		if ehandle != nil {
			dictionary.updateValue(ehandle!, forKey: kDMSenLeftLogEhandleKey)
		}
		if time != nil {
			dictionary.updateValue(time!, forKey: kDMSenLeftLogTimeKey)
		}
		if key != nil {
			dictionary.updateValue(key!, forKey: kDMSenLeftLogKeyKey)
		}
		if slot != nil {
			dictionary.updateValue(slot!, forKey: kDMSenLeftLogSlotKey)
		}
		if x != nil {
			dictionary.updateValue(x!, forKey: kDMSenLeftLogXKey)
		}
		if y != nil {
			dictionary.updateValue(y!, forKey: kDMSenLeftLogYKey)
		}
		if z != nil {
			dictionary.updateValue(z!, forKey: kDMSenLeftLogZKey)
		}
		if type != nil {
			dictionary.updateValue(type!, forKey: kDMSenLeftLogTypeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.entityleft = aDecoder.decodeBoolForKey(kDMSenLeftLogEntityleftKey)
		self.playerSlot = aDecoder.decodeObjectForKey(kDMSenLeftLogPlayerSlotKey) as? Int
		self.ehandle = aDecoder.decodeObjectForKey(kDMSenLeftLogEhandleKey) as? Int
		self.time = aDecoder.decodeObjectForKey(kDMSenLeftLogTimeKey) as? Int
		self.key = aDecoder.decodeObjectForKey(kDMSenLeftLogKeyKey) as? String
		self.slot = aDecoder.decodeObjectForKey(kDMSenLeftLogSlotKey) as? Int
		self.x = aDecoder.decodeObjectForKey(kDMSenLeftLogXKey) as? Int
		self.y = aDecoder.decodeObjectForKey(kDMSenLeftLogYKey) as? Int
		self.z = aDecoder.decodeObjectForKey(kDMSenLeftLogZKey) as? Int
		self.type = aDecoder.decodeObjectForKey(kDMSenLeftLogTypeKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeBool(entityleft, forKey: kDMSenLeftLogEntityleftKey)
		aCoder.encodeObject(playerSlot, forKey: kDMSenLeftLogPlayerSlotKey)
		aCoder.encodeObject(ehandle, forKey: kDMSenLeftLogEhandleKey)
		aCoder.encodeObject(time, forKey: kDMSenLeftLogTimeKey)
		aCoder.encodeObject(key, forKey: kDMSenLeftLogKeyKey)
		aCoder.encodeObject(slot, forKey: kDMSenLeftLogSlotKey)
		aCoder.encodeObject(x, forKey: kDMSenLeftLogXKey)
		aCoder.encodeObject(y, forKey: kDMSenLeftLogYKey)
		aCoder.encodeObject(z, forKey: kDMSenLeftLogZKey)
		aCoder.encodeObject(type, forKey: kDMSenLeftLogTypeKey)

    }

}
