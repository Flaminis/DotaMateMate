//
//  DMPlayerProfile.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMPlayerProfile: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMPlayerProfileProfileKey: String = "profile"
	internal let kDMPlayerProfileTrackedUntilKey: String = "tracked_until"
	internal let kDMPlayerProfileMmrEstimateKey: String = "mmr_estimate"
	internal let kDMPlayerProfileCompetitiveRankKey: String = "competitive_rank"
	internal let kDMPlayerProfileSoloCompetitiveRankKey: String = "solo_competitive_rank"


    // MARK: Properties
	public var profile: DMProfile?
	public var trackedUntil: String?
	public var mmrEstimate: DMMmrEstimate?
//	public var competitiveRank: DMCompetitiveRank?
//	public var soloCompetitiveRank: DMSoloCompetitiveRank?


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
		profile = DMProfile(json: json[kDMPlayerProfileProfileKey])
		trackedUntil = json[kDMPlayerProfileTrackedUntilKey].string
		mmrEstimate = DMMmrEstimate(json: json[kDMPlayerProfileMmrEstimateKey])
//		competitiveRank = DMCompetitiveRank(json: json[kDMPlayerProfileCompetitiveRankKey])
//		soloCompetitiveRank = DMSoloCompetitiveRank(json: json[kDMPlayerProfileSoloCompetitiveRankKey])

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if profile != nil {
			dictionary.updateValue(profile!.dictionaryRepresentation(), forKey: kDMPlayerProfileProfileKey)
		}
		if trackedUntil != nil {
			dictionary.updateValue(trackedUntil!, forKey: kDMPlayerProfileTrackedUntilKey)
		}
		if mmrEstimate != nil {
			dictionary.updateValue(mmrEstimate!.dictionaryRepresentation(), forKey: kDMPlayerProfileMmrEstimateKey)
		}
//		if competitiveRank != nil {
//			dictionary.updateValue(competitiveRank!.dictionaryRepresentation(), forKey: kDMPlayerProfileCompetitiveRankKey)
//		}
//		if soloCompetitiveRank != nil {
//			dictionary.updateValue(soloCompetitiveRank!.dictionaryRepresentation(), forKey: kDMPlayerProfileSoloCompetitiveRankKey)
//		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.profile = aDecoder.decodeObjectForKey(kDMPlayerProfileProfileKey) as? DMProfile
		self.trackedUntil = aDecoder.decodeObjectForKey(kDMPlayerProfileTrackedUntilKey) as? String
		self.mmrEstimate = aDecoder.decodeObjectForKey(kDMPlayerProfileMmrEstimateKey) as? DMMmrEstimate
//		self.competitiveRank = aDecoder.decodeObjectForKey(kDMPlayerProfileCompetitiveRankKey) as? DMCompetitiveRank
//		self.soloCompetitiveRank = aDecoder.decodeObjectForKey(kDMPlayerProfileSoloCompetitiveRankKey) as? DMSoloCompetitiveRank

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(profile, forKey: kDMPlayerProfileProfileKey)
		aCoder.encodeObject(trackedUntil, forKey: kDMPlayerProfileTrackedUntilKey)
		aCoder.encodeObject(mmrEstimate, forKey: kDMPlayerProfileMmrEstimateKey)
//		aCoder.encodeObject(competitiveRank, forKey: kDMPlayerProfileCompetitiveRankKey)
//		aCoder.encodeObject(soloCompetitiveRank, forKey: kDMPlayerProfileSoloCompetitiveRankKey)

    }

}
