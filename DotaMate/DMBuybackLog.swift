//
//  DMBuybackLog.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMBuybackLog: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMBuybackLogPlayerSlotKey: String = "player_slot"
	internal let kDMBuybackLogValueKey: String = "value"
	internal let kDMBuybackLogTargetsourcenameKey: String = "targetsourcename"
	internal let kDMBuybackLogTimeKey: String = "time"
	internal let kDMBuybackLogTargetheroKey: String = "targethero"
	internal let kDMBuybackLogAttackerheroKey: String = "attackerhero"
	internal let kDMBuybackLogSlotKey: String = "slot"
	internal let kDMBuybackLogInflictorKey: String = "inflictor"
	internal let kDMBuybackLogTypeKey: String = "type"
	internal let kDMBuybackLogAttackernameKey: String = "attackername"
	internal let kDMBuybackLogTargetnameKey: String = "targetname"
	internal let kDMBuybackLogSourcenameKey: String = "sourcename"
	internal let kDMBuybackLogGoldReasonKey: String = "gold_reason"
	internal let kDMBuybackLogAttackerillusionKey: String = "attackerillusion"
	internal let kDMBuybackLogTargetillusionKey: String = "targetillusion"
	internal let kDMBuybackLogXpReasonKey: String = "xp_reason"


    // MARK: Properties
	public var playerSlot: Int?
	public var value: Int?
	public var targetsourcename: String?
	public var time: Int?
	public var targethero: Bool = false
	public var attackerhero: Bool = false
	public var slot: Int?
	public var inflictor: String?
	public var type: String?
	public var attackername: String?
	public var targetname: String?
	public var sourcename: String?
	public var goldReason: Int?
	public var attackerillusion: Bool = false
	public var targetillusion: Bool = false
	public var xpReason: Int?


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
		playerSlot = json[kDMBuybackLogPlayerSlotKey].int
		value = json[kDMBuybackLogValueKey].int
		targetsourcename = json[kDMBuybackLogTargetsourcenameKey].string
		time = json[kDMBuybackLogTimeKey].int
		targethero = json[kDMBuybackLogTargetheroKey].boolValue
		attackerhero = json[kDMBuybackLogAttackerheroKey].boolValue
		slot = json[kDMBuybackLogSlotKey].int
		inflictor = json[kDMBuybackLogInflictorKey].string
		type = json[kDMBuybackLogTypeKey].string
		attackername = json[kDMBuybackLogAttackernameKey].string
		targetname = json[kDMBuybackLogTargetnameKey].string
		sourcename = json[kDMBuybackLogSourcenameKey].string
		goldReason = json[kDMBuybackLogGoldReasonKey].int
		attackerillusion = json[kDMBuybackLogAttackerillusionKey].boolValue
		targetillusion = json[kDMBuybackLogTargetillusionKey].boolValue
		xpReason = json[kDMBuybackLogXpReasonKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if playerSlot != nil {
			dictionary.updateValue(playerSlot!, forKey: kDMBuybackLogPlayerSlotKey)
		}
		if value != nil {
			dictionary.updateValue(value!, forKey: kDMBuybackLogValueKey)
		}
		if targetsourcename != nil {
			dictionary.updateValue(targetsourcename!, forKey: kDMBuybackLogTargetsourcenameKey)
		}
		if time != nil {
			dictionary.updateValue(time!, forKey: kDMBuybackLogTimeKey)
		}
		dictionary.updateValue(targethero, forKey: kDMBuybackLogTargetheroKey)
		dictionary.updateValue(attackerhero, forKey: kDMBuybackLogAttackerheroKey)
		if slot != nil {
			dictionary.updateValue(slot!, forKey: kDMBuybackLogSlotKey)
		}
		if inflictor != nil {
			dictionary.updateValue(inflictor!, forKey: kDMBuybackLogInflictorKey)
		}
		if type != nil {
			dictionary.updateValue(type!, forKey: kDMBuybackLogTypeKey)
		}
		if attackername != nil {
			dictionary.updateValue(attackername!, forKey: kDMBuybackLogAttackernameKey)
		}
		if targetname != nil {
			dictionary.updateValue(targetname!, forKey: kDMBuybackLogTargetnameKey)
		}
		if sourcename != nil {
			dictionary.updateValue(sourcename!, forKey: kDMBuybackLogSourcenameKey)
		}
		if goldReason != nil {
			dictionary.updateValue(goldReason!, forKey: kDMBuybackLogGoldReasonKey)
		}
		dictionary.updateValue(attackerillusion, forKey: kDMBuybackLogAttackerillusionKey)
		dictionary.updateValue(targetillusion, forKey: kDMBuybackLogTargetillusionKey)
		if xpReason != nil {
			dictionary.updateValue(xpReason!, forKey: kDMBuybackLogXpReasonKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.playerSlot = aDecoder.decodeObjectForKey(kDMBuybackLogPlayerSlotKey) as? Int
		self.value = aDecoder.decodeObjectForKey(kDMBuybackLogValueKey) as? Int
		self.targetsourcename = aDecoder.decodeObjectForKey(kDMBuybackLogTargetsourcenameKey) as? String
		self.time = aDecoder.decodeObjectForKey(kDMBuybackLogTimeKey) as? Int
		self.targethero = aDecoder.decodeBoolForKey(kDMBuybackLogTargetheroKey)
		self.attackerhero = aDecoder.decodeBoolForKey(kDMBuybackLogAttackerheroKey)
		self.slot = aDecoder.decodeObjectForKey(kDMBuybackLogSlotKey) as? Int
		self.inflictor = aDecoder.decodeObjectForKey(kDMBuybackLogInflictorKey) as? String
		self.type = aDecoder.decodeObjectForKey(kDMBuybackLogTypeKey) as? String
		self.attackername = aDecoder.decodeObjectForKey(kDMBuybackLogAttackernameKey) as? String
		self.targetname = aDecoder.decodeObjectForKey(kDMBuybackLogTargetnameKey) as? String
		self.sourcename = aDecoder.decodeObjectForKey(kDMBuybackLogSourcenameKey) as? String
		self.goldReason = aDecoder.decodeObjectForKey(kDMBuybackLogGoldReasonKey) as? Int
		self.attackerillusion = aDecoder.decodeBoolForKey(kDMBuybackLogAttackerillusionKey)
		self.targetillusion = aDecoder.decodeBoolForKey(kDMBuybackLogTargetillusionKey)
		self.xpReason = aDecoder.decodeObjectForKey(kDMBuybackLogXpReasonKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(playerSlot, forKey: kDMBuybackLogPlayerSlotKey)
		aCoder.encodeObject(value, forKey: kDMBuybackLogValueKey)
		aCoder.encodeObject(targetsourcename, forKey: kDMBuybackLogTargetsourcenameKey)
		aCoder.encodeObject(time, forKey: kDMBuybackLogTimeKey)
		aCoder.encodeBool(targethero, forKey: kDMBuybackLogTargetheroKey)
		aCoder.encodeBool(attackerhero, forKey: kDMBuybackLogAttackerheroKey)
		aCoder.encodeObject(slot, forKey: kDMBuybackLogSlotKey)
		aCoder.encodeObject(inflictor, forKey: kDMBuybackLogInflictorKey)
		aCoder.encodeObject(type, forKey: kDMBuybackLogTypeKey)
		aCoder.encodeObject(attackername, forKey: kDMBuybackLogAttackernameKey)
		aCoder.encodeObject(targetname, forKey: kDMBuybackLogTargetnameKey)
		aCoder.encodeObject(sourcename, forKey: kDMBuybackLogSourcenameKey)
		aCoder.encodeObject(goldReason, forKey: kDMBuybackLogGoldReasonKey)
		aCoder.encodeBool(attackerillusion, forKey: kDMBuybackLogAttackerillusionKey)
		aCoder.encodeBool(targetillusion, forKey: kDMBuybackLogTargetillusionKey)
		aCoder.encodeObject(xpReason, forKey: kDMBuybackLogXpReasonKey)

    }

}
