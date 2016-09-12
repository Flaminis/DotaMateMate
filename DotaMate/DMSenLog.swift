//
//  DMSenLog.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMSenLog: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMSenLogEntityleftKey: String = "entityleft"
	internal let kDMSenLogPlayerSlotKey: String = "player_slot"
	internal let kDMSenLogEhandleKey: String = "ehandle"
	internal let kDMSenLogTimeKey: String = "time"
	internal let kDMSenLogKeyKey: String = "key"
	internal let kDMSenLogSlotKey: String = "slot"
	internal let kDMSenLogXKey: String = "x"
	internal let kDMSenLogYKey: String = "y"
	internal let kDMSenLogZKey: String = "z"
	internal let kDMSenLogTypeKey: String = "type"


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
		entityleft = json[kDMSenLogEntityleftKey].boolValue
		playerSlot = json[kDMSenLogPlayerSlotKey].int
		ehandle = json[kDMSenLogEhandleKey].int
		time = json[kDMSenLogTimeKey].int
		key = json[kDMSenLogKeyKey].string
		slot = json[kDMSenLogSlotKey].int
		x = json[kDMSenLogXKey].int
		y = json[kDMSenLogYKey].int
		z = json[kDMSenLogZKey].int
		type = json[kDMSenLogTypeKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		dictionary.updateValue(entityleft, forKey: kDMSenLogEntityleftKey)
		if playerSlot != nil {
			dictionary.updateValue(playerSlot!, forKey: kDMSenLogPlayerSlotKey)
		}
		if ehandle != nil {
			dictionary.updateValue(ehandle!, forKey: kDMSenLogEhandleKey)
		}
		if time != nil {
			dictionary.updateValue(time!, forKey: kDMSenLogTimeKey)
		}
		if key != nil {
			dictionary.updateValue(key!, forKey: kDMSenLogKeyKey)
		}
		if slot != nil {
			dictionary.updateValue(slot!, forKey: kDMSenLogSlotKey)
		}
		if x != nil {
			dictionary.updateValue(x!, forKey: kDMSenLogXKey)
		}
		if y != nil {
			dictionary.updateValue(y!, forKey: kDMSenLogYKey)
		}
		if z != nil {
			dictionary.updateValue(z!, forKey: kDMSenLogZKey)
		}
		if type != nil {
			dictionary.updateValue(type!, forKey: kDMSenLogTypeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.entityleft = aDecoder.decodeBoolForKey(kDMSenLogEntityleftKey)
		self.playerSlot = aDecoder.decodeObjectForKey(kDMSenLogPlayerSlotKey) as? Int
		self.ehandle = aDecoder.decodeObjectForKey(kDMSenLogEhandleKey) as? Int
		self.time = aDecoder.decodeObjectForKey(kDMSenLogTimeKey) as? Int
		self.key = aDecoder.decodeObjectForKey(kDMSenLogKeyKey) as? String
		self.slot = aDecoder.decodeObjectForKey(kDMSenLogSlotKey) as? Int
		self.x = aDecoder.decodeObjectForKey(kDMSenLogXKey) as? Int
		self.y = aDecoder.decodeObjectForKey(kDMSenLogYKey) as? Int
		self.z = aDecoder.decodeObjectForKey(kDMSenLogZKey) as? Int
		self.type = aDecoder.decodeObjectForKey(kDMSenLogTypeKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeBool(entityleft, forKey: kDMSenLogEntityleftKey)
		aCoder.encodeObject(playerSlot, forKey: kDMSenLogPlayerSlotKey)
		aCoder.encodeObject(ehandle, forKey: kDMSenLogEhandleKey)
		aCoder.encodeObject(time, forKey: kDMSenLogTimeKey)
		aCoder.encodeObject(key, forKey: kDMSenLogKeyKey)
		aCoder.encodeObject(slot, forKey: kDMSenLogSlotKey)
		aCoder.encodeObject(x, forKey: kDMSenLogXKey)
		aCoder.encodeObject(y, forKey: kDMSenLogYKey)
		aCoder.encodeObject(z, forKey: kDMSenLogZKey)
		aCoder.encodeObject(type, forKey: kDMSenLogTypeKey)

    }

}
