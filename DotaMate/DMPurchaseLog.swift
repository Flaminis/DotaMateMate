//
//  DMPurchaseLog.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMPurchaseLog: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMPurchaseLogKeyKey: String = "key"
	internal let kDMPurchaseLogTimeKey: String = "time"


    // MARK: Properties
	public var key: String?
	public var time: Int?


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
		key = json[kDMPurchaseLogKeyKey].string
		time = json[kDMPurchaseLogTimeKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if key != nil {
			dictionary.updateValue(key!, forKey: kDMPurchaseLogKeyKey)
		}
		if time != nil {
			dictionary.updateValue(time!, forKey: kDMPurchaseLogTimeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.key = aDecoder.decodeObjectForKey(kDMPurchaseLogKeyKey) as? String
		self.time = aDecoder.decodeObjectForKey(kDMPurchaseLogTimeKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(key, forKey: kDMPurchaseLogKeyKey)
		aCoder.encodeObject(time, forKey: kDMPurchaseLogTimeKey)

    }

}
