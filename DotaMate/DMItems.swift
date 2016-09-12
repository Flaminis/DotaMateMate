//
//  DMItems.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMItems: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMItemsNameKey: String = "name"
	internal let kDMItemsCostKey: String = "cost"
	internal let kDMItemsInternalIdentifierKey: String = "id"
	internal let kDMItemsSecretShopKey: String = "secret_shop"
	internal let kDMItemsRecipeKey: String = "recipe"
	internal let kDMItemsSideShopKey: String = "side_shop"


    // MARK: Properties
	public var name: String?
	public var cost: Int?
	public var internalIdentifier: Int?
	public var secretShop: Int?
	public var recipe: Int?
	public var sideShop: Int?
    public var imageUrl: String?


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
		name = json[kDMItemsNameKey].string
		cost = json[kDMItemsCostKey].int
		internalIdentifier = json[kDMItemsInternalIdentifierKey].int
		secretShop = json[kDMItemsSecretShopKey].int
		recipe = json[kDMItemsRecipeKey].int
		sideShop = json[kDMItemsSideShopKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if name != nil {
			dictionary.updateValue(name!, forKey: kDMItemsNameKey)
		}
		if cost != nil {
			dictionary.updateValue(cost!, forKey: kDMItemsCostKey)
		}
		if internalIdentifier != nil {
			dictionary.updateValue(internalIdentifier!, forKey: kDMItemsInternalIdentifierKey)
		}
		if secretShop != nil {
			dictionary.updateValue(secretShop!, forKey: kDMItemsSecretShopKey)
		}
		if recipe != nil {
			dictionary.updateValue(recipe!, forKey: kDMItemsRecipeKey)
		}
		if sideShop != nil {
			dictionary.updateValue(sideShop!, forKey: kDMItemsSideShopKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.name = aDecoder.decodeObjectForKey(kDMItemsNameKey) as? String
		self.cost = aDecoder.decodeObjectForKey(kDMItemsCostKey) as? Int
		self.internalIdentifier = aDecoder.decodeObjectForKey(kDMItemsInternalIdentifierKey) as? Int
		self.secretShop = aDecoder.decodeObjectForKey(kDMItemsSecretShopKey) as? Int
		self.recipe = aDecoder.decodeObjectForKey(kDMItemsRecipeKey) as? Int
		self.sideShop = aDecoder.decodeObjectForKey(kDMItemsSideShopKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(name, forKey: kDMItemsNameKey)
		aCoder.encodeObject(cost, forKey: kDMItemsCostKey)
		aCoder.encodeObject(internalIdentifier, forKey: kDMItemsInternalIdentifierKey)
		aCoder.encodeObject(secretShop, forKey: kDMItemsSecretShopKey)
		aCoder.encodeObject(recipe, forKey: kDMItemsRecipeKey)
		aCoder.encodeObject(sideShop, forKey: kDMItemsSideShopKey)

    }

}
