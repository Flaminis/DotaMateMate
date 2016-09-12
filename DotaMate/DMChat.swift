//
//  DMChat.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMChat: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMChatSlotKey: String = "slot"
	internal let kDMChatPlayerSlotKey: String = "player_slot"
	internal let kDMChatUnitKey: String = "unit"
	internal let kDMChatKeyKey: String = "key"
	internal let kDMChatTimeKey: String = "time"
	internal let kDMChatTypeKey: String = "type"


    // MARK: Properties
	public var slot: Int?
	public var playerSlot: Int?
	public var unit: String?
	public var key: String?
	public var time: Int?
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
		slot = json[kDMChatSlotKey].int
		playerSlot = json[kDMChatPlayerSlotKey].int
		unit = json[kDMChatUnitKey].string
		key = json[kDMChatKeyKey].string
		time = json[kDMChatTimeKey].int
		type = json[kDMChatTypeKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if slot != nil {
			dictionary.updateValue(slot!, forKey: kDMChatSlotKey)
		}
		if playerSlot != nil {
			dictionary.updateValue(playerSlot!, forKey: kDMChatPlayerSlotKey)
		}
		if unit != nil {
			dictionary.updateValue(unit!, forKey: kDMChatUnitKey)
		}
		if key != nil {
			dictionary.updateValue(key!, forKey: kDMChatKeyKey)
		}
		if time != nil {
			dictionary.updateValue(time!, forKey: kDMChatTimeKey)
		}
		if type != nil {
			dictionary.updateValue(type!, forKey: kDMChatTypeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.slot = aDecoder.decodeObjectForKey(kDMChatSlotKey) as? Int
		self.playerSlot = aDecoder.decodeObjectForKey(kDMChatPlayerSlotKey) as? Int
		self.unit = aDecoder.decodeObjectForKey(kDMChatUnitKey) as? String
		self.key = aDecoder.decodeObjectForKey(kDMChatKeyKey) as? String
		self.time = aDecoder.decodeObjectForKey(kDMChatTimeKey) as? Int
		self.type = aDecoder.decodeObjectForKey(kDMChatTypeKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(slot, forKey: kDMChatSlotKey)
		aCoder.encodeObject(playerSlot, forKey: kDMChatPlayerSlotKey)
		aCoder.encodeObject(unit, forKey: kDMChatUnitKey)
		aCoder.encodeObject(key, forKey: kDMChatKeyKey)
		aCoder.encodeObject(time, forKey: kDMChatTimeKey)
		aCoder.encodeObject(type, forKey: kDMChatTypeKey)

    }

}
