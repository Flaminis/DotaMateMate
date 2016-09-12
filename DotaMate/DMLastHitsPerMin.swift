//
//  DMLastHitsPerMin.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMLastHitsPerMin: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMLastHitsPerMinPctKey: String = "pct"
	internal let kDMLastHitsPerMinRawKey: String = "raw"


    // MARK: Properties
	public var pct: Float?
	public var raw: Float?


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
		pct = json[kDMLastHitsPerMinPctKey].float
		raw = json[kDMLastHitsPerMinRawKey].float

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if pct != nil {
			dictionary.updateValue(pct!, forKey: kDMLastHitsPerMinPctKey)
		}
		if raw != nil {
			dictionary.updateValue(raw!, forKey: kDMLastHitsPerMinRawKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.pct = aDecoder.decodeObjectForKey(kDMLastHitsPerMinPctKey) as? Float
		self.raw = aDecoder.decodeObjectForKey(kDMLastHitsPerMinRawKey) as? Float

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(pct, forKey: kDMLastHitsPerMinPctKey)
		aCoder.encodeObject(raw, forKey: kDMLastHitsPerMinRawKey)

    }

}
