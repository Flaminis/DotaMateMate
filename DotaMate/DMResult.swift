//
//  DMResult.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMResult: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMResultStatusKey: String = "status"
	internal let kDMResultItemsKey: String = "items"


    // MARK: Properties
	public var status: Int?
	public var items: [DMItems]?


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
		status = json[kDMResultStatusKey].int
		items = []
		if let itemss = json[kDMResultItemsKey].array {
			for item in itemss {
				items?.append(DMItems(json: item))
			}
		} else {
			items = nil
		}

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if status != nil {
			dictionary.updateValue(status!, forKey: kDMResultStatusKey)
		}
		if items?.count > 0 {
			var temp: [AnyObject] = []
			for item in items! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kDMResultItemsKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.status = aDecoder.decodeObjectForKey(kDMResultStatusKey) as? Int
		self.items = aDecoder.decodeObjectForKey(kDMResultItemsKey) as? [DMItems]

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(status, forKey: kDMResultStatusKey)
		aCoder.encodeObject(items, forKey: kDMResultItemsKey)

    }

}
