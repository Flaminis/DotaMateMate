//
//  DMPosData.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMPosData: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMPosDataLanePosKey: String = "lane_pos"
	internal let kDMPosDataObsKey: String = "obs"
	internal let kDMPosDataSenKey: String = "sen"


    // MARK: Properties
	public var lanePos: [DMLanePos]?
	public var obs: [DMObs]?


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
		lanePos = []
		if let items = json[kDMPosDataLanePosKey].array {
			for item in items {
				lanePos?.append(DMLanePos(json: item))
			}
		} else {
			lanePos = nil
		}
		obs = []
		if let items = json[kDMPosDataObsKey].array {
			for item in items {
				obs?.append(DMObs(json: item))
			}
		} else {
			obs = nil
		}
		
    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if lanePos?.count > 0 {
			var temp: [AnyObject] = []
			for item in lanePos! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPosDataLanePosKey)
		}
		if obs?.count > 0 {
			var temp: [AnyObject] = []
			for item in obs! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMPosDataObsKey)
		}
		

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.lanePos = aDecoder.decodeObjectForKey(kDMPosDataLanePosKey) as? [DMLanePos]
		self.obs = aDecoder.decodeObjectForKey(kDMPosDataObsKey) as? [DMObs]

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(lanePos, forKey: kDMPosDataLanePosKey)
		aCoder.encodeObject(obs, forKey: kDMPosDataObsKey)

    }

}
