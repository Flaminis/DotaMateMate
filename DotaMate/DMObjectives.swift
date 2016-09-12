//
//  DMObjectives.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMObjectives: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMObjectivesPlayer2Key: String = "player2"
	internal let kDMObjectivesPlayerSlotKey: String = "player_slot"
	internal let kDMObjectivesValueKey: String = "value"
	internal let kDMObjectivesPlayer1Key: String = "player1"
	internal let kDMObjectivesTimeKey: String = "time"
	internal let kDMObjectivesKeyKey: String = "key"
	internal let kDMObjectivesSlotKey: String = "slot"
	internal let kDMObjectivesTeamKey: String = "team"
	internal let kDMObjectivesTypeKey: String = "type"


    // MARK: Properties
	public var player2: Int?
	public var playerSlot: Int?
	public var value: Int?
	public var player1: Int?
	public var time: Int?
	public var key: String?
	public var slot: Int?
	public var team: Int?
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
		player2 = json[kDMObjectivesPlayer2Key].int
		playerSlot = json[kDMObjectivesPlayerSlotKey].int
		value = json[kDMObjectivesValueKey].int
		player1 = json[kDMObjectivesPlayer1Key].int
		time = json[kDMObjectivesTimeKey].int
		key = json[kDMObjectivesKeyKey].string
		slot = json[kDMObjectivesSlotKey].int
		team = json[kDMObjectivesTeamKey].int
		type = json[kDMObjectivesTypeKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if player2 != nil {
			dictionary.updateValue(player2!, forKey: kDMObjectivesPlayer2Key)
		}
		if playerSlot != nil {
			dictionary.updateValue(playerSlot!, forKey: kDMObjectivesPlayerSlotKey)
		}
		if value != nil {
			dictionary.updateValue(value!, forKey: kDMObjectivesValueKey)
		}
		if player1 != nil {
			dictionary.updateValue(player1!, forKey: kDMObjectivesPlayer1Key)
		}
		if time != nil {
			dictionary.updateValue(time!, forKey: kDMObjectivesTimeKey)
		}
		if key != nil {
			dictionary.updateValue(key!, forKey: kDMObjectivesKeyKey)
		}
		if slot != nil {
			dictionary.updateValue(slot!, forKey: kDMObjectivesSlotKey)
		}
		if team != nil {
			dictionary.updateValue(team!, forKey: kDMObjectivesTeamKey)
		}
		if type != nil {
			dictionary.updateValue(type!, forKey: kDMObjectivesTypeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.player2 = aDecoder.decodeObjectForKey(kDMObjectivesPlayer2Key) as? Int
		self.playerSlot = aDecoder.decodeObjectForKey(kDMObjectivesPlayerSlotKey) as? Int
		self.value = aDecoder.decodeObjectForKey(kDMObjectivesValueKey) as? Int
		self.player1 = aDecoder.decodeObjectForKey(kDMObjectivesPlayer1Key) as? Int
		self.time = aDecoder.decodeObjectForKey(kDMObjectivesTimeKey) as? Int
		self.key = aDecoder.decodeObjectForKey(kDMObjectivesKeyKey) as? String
		self.slot = aDecoder.decodeObjectForKey(kDMObjectivesSlotKey) as? Int
		self.team = aDecoder.decodeObjectForKey(kDMObjectivesTeamKey) as? Int
		self.type = aDecoder.decodeObjectForKey(kDMObjectivesTypeKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(player2, forKey: kDMObjectivesPlayer2Key)
		aCoder.encodeObject(playerSlot, forKey: kDMObjectivesPlayerSlotKey)
		aCoder.encodeObject(value, forKey: kDMObjectivesValueKey)
		aCoder.encodeObject(player1, forKey: kDMObjectivesPlayer1Key)
		aCoder.encodeObject(time, forKey: kDMObjectivesTimeKey)
		aCoder.encodeObject(key, forKey: kDMObjectivesKeyKey)
		aCoder.encodeObject(slot, forKey: kDMObjectivesSlotKey)
		aCoder.encodeObject(team, forKey: kDMObjectivesTeamKey)
		aCoder.encodeObject(type, forKey: kDMObjectivesTypeKey)

    }

}
