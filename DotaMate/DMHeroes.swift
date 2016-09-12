//
//  DMHeroes.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMHeroes: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMHeroesInternalIdentifierKey: String = "id"
	internal let kDMHeroesLocalizedNameKey: String = "localized_name"
	internal let kDMHeroesNameKey: String = "name"


    // MARK: Properties
	public var internalIdentifier: Int?
	public var localizedName: String?
	public var name: String?
    public var smallUrl: String?
    public var largeUrl: String?
    public var portraitUrl: String?


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
		internalIdentifier = json[kDMHeroesInternalIdentifierKey].int
		localizedName = json[kDMHeroesLocalizedNameKey].string
		name = json[kDMHeroesNameKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if internalIdentifier != nil {
			dictionary.updateValue(internalIdentifier!, forKey: kDMHeroesInternalIdentifierKey)
		}
		if localizedName != nil {
			dictionary.updateValue(localizedName!, forKey: kDMHeroesLocalizedNameKey)
		}
		if name != nil {
			dictionary.updateValue(name!, forKey: kDMHeroesNameKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.internalIdentifier = aDecoder.decodeObjectForKey(kDMHeroesInternalIdentifierKey) as? Int
		self.localizedName = aDecoder.decodeObjectForKey(kDMHeroesLocalizedNameKey) as? String
		self.name = aDecoder.decodeObjectForKey(kDMHeroesNameKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(internalIdentifier, forKey: kDMHeroesInternalIdentifierKey)
		aCoder.encodeObject(localizedName, forKey: kDMHeroesLocalizedNameKey)
		aCoder.encodeObject(name, forKey: kDMHeroesNameKey)

    }

}
