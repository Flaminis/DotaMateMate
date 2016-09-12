//
//  DMHeroHealingPerMin.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMHeroHealingPerMin: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMHeroHealingPerMinPctKey: String = "pct"
	internal let kDMHeroHealingPerMinRawKey: String = "raw"


    // MARK: Properties
	public var pct: Float?
	public var raw: Int?


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
		pct = json[kDMHeroHealingPerMinPctKey].float
		raw = json[kDMHeroHealingPerMinRawKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if pct != nil {
			dictionary.updateValue(pct!, forKey: kDMHeroHealingPerMinPctKey)
		}
		if raw != nil {
			dictionary.updateValue(raw!, forKey: kDMHeroHealingPerMinRawKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.pct = aDecoder.decodeObjectForKey(kDMHeroHealingPerMinPctKey) as? Float
		self.raw = aDecoder.decodeObjectForKey(kDMHeroHealingPerMinRawKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(pct, forKey: kDMHeroHealingPerMinPctKey)
		aCoder.encodeObject(raw, forKey: kDMHeroHealingPerMinRawKey)

    }

}
