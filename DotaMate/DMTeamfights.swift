//
//  DMTeamfights.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMTeamfights: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMTeamfightsDeathsKey: String = "deaths"
	internal let kDMTeamfightsEndKey: String = "end"
	internal let kDMTeamfightsPlayersKey: String = "players"
	internal let kDMTeamfightsLastDeathKey: String = "last_death"
	internal let kDMTeamfightsStartKey: String = "start"


    // MARK: Properties
	public var deaths: Int?
	public var end: Int?
	public var players: [DMPlayers]?
	public var lastDeath: Int?
	public var start: Int?


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
		deaths = json[kDMTeamfightsDeathsKey].int
		end = json[kDMTeamfightsEndKey].int
		players = []
		if let items = json[kDMTeamfightsPlayersKey].array {
			for item in items {
				players?.append(DMPlayers(json: item))
			}
		} else {
			players = nil
		}
		lastDeath = json[kDMTeamfightsLastDeathKey].int
		start = json[kDMTeamfightsStartKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if deaths != nil {
			dictionary.updateValue(deaths!, forKey: kDMTeamfightsDeathsKey)
		}
		if end != nil {
			dictionary.updateValue(end!, forKey: kDMTeamfightsEndKey)
		}
		if players?.count > 0 {
			var temp: [AnyObject] = []
			for item in players! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMTeamfightsPlayersKey)
		}
		if lastDeath != nil {
			dictionary.updateValue(lastDeath!, forKey: kDMTeamfightsLastDeathKey)
		}
		if start != nil {
			dictionary.updateValue(start!, forKey: kDMTeamfightsStartKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.deaths = aDecoder.decodeObjectForKey(kDMTeamfightsDeathsKey) as? Int
		self.end = aDecoder.decodeObjectForKey(kDMTeamfightsEndKey) as? Int
		self.players = aDecoder.decodeObjectForKey(kDMTeamfightsPlayersKey) as? [DMPlayers]
		self.lastDeath = aDecoder.decodeObjectForKey(kDMTeamfightsLastDeathKey) as? Int
		self.start = aDecoder.decodeObjectForKey(kDMTeamfightsStartKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(deaths, forKey: kDMTeamfightsDeathsKey)
		aCoder.encodeObject(end, forKey: kDMTeamfightsEndKey)
		aCoder.encodeObject(players, forKey: kDMTeamfightsPlayersKey)
		aCoder.encodeObject(lastDeath, forKey: kDMTeamfightsLastDeathKey)
		aCoder.encodeObject(start, forKey: kDMTeamfightsStartKey)

    }

}
