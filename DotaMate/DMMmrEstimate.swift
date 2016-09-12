//
//  DMMmrEstimate.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMMmrEstimate: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMMmrEstimateNKey: String = "n"
	internal let kDMMmrEstimateEstimateKey: String = "estimate"
	internal let kDMMmrEstimateStdDevKey: String = "stdDev"


    // MARK: Properties
	public var n: Int?
	public var estimate: Int?
	public var stdDev: Float?


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
		n = json[kDMMmrEstimateNKey].int
		estimate = json[kDMMmrEstimateEstimateKey].int
		stdDev = json[kDMMmrEstimateStdDevKey].float

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if n != nil {
			dictionary.updateValue(n!, forKey: kDMMmrEstimateNKey)
		}
		if estimate != nil {
			dictionary.updateValue(estimate!, forKey: kDMMmrEstimateEstimateKey)
		}
		if stdDev != nil {
			dictionary.updateValue(stdDev!, forKey: kDMMmrEstimateStdDevKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.n = aDecoder.decodeObjectForKey(kDMMmrEstimateNKey) as? Int
		self.estimate = aDecoder.decodeObjectForKey(kDMMmrEstimateEstimateKey) as? Int
		self.stdDev = aDecoder.decodeObjectForKey(kDMMmrEstimateStdDevKey) as? Float

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(n, forKey: kDMMmrEstimateNKey)
		aCoder.encodeObject(estimate, forKey: kDMMmrEstimateEstimateKey)
		aCoder.encodeObject(stdDev, forKey: kDMMmrEstimateStdDevKey)

    }

}
