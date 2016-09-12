//
//  DMHeroesSteamAPI.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMHeroesSteamAPI: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMHeroesSteamAPIResultKey: String = "result"


    // MARK: Properties
	public var result: DMResult?


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
		result = DMResult(json: json[kDMHeroesSteamAPIResultKey])

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if result != nil {
			dictionary.updateValue(result!.dictionaryRepresentation(), forKey: kDMHeroesSteamAPIResultKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.result = aDecoder.decodeObjectForKey(kDMHeroesSteamAPIResultKey) as? DMResult

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(result, forKey: kDMHeroesSteamAPIResultKey)

    }

}
