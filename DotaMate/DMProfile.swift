//
//  DMProfile.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMProfile: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMProfileCheeseKey: String = "cheese"
	internal let kDMProfileAvatarmediumKey: String = "avatarmedium"
	internal let kDMProfileLoccountrycodeKey: String = "loccountrycode"
	internal let kDMProfileProfileurlKey: String = "profileurl"
	internal let kDMProfileSteamidKey: String = "steamid"
	internal let kDMProfilePersonanameKey: String = "personaname"
	internal let kDMProfileAccountIdKey: String = "account_id"
	internal let kDMProfileAvatarKey: String = "avatar"
	internal let kDMProfileLastLoginKey: String = "last_login"
	internal let kDMProfileAvatarfullKey: String = "avatarfull"
	internal let kDMProfileNameKey: String = "name"


    // MARK: Properties
	public var cheese: Int?
	public var avatarmedium: String?
	public var loccountrycode: String?
	public var profileurl: String?
	public var steamid: String?
	public var personaname: String?
	public var accountId: Int?
	public var avatar: String?
	public var lastLogin: String?
	public var avatarfull: String?
//	public var name: DMName?


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
		cheese = json[kDMProfileCheeseKey].int
		avatarmedium = json[kDMProfileAvatarmediumKey].string
		loccountrycode = json[kDMProfileLoccountrycodeKey].string
		profileurl = json[kDMProfileProfileurlKey].string
		steamid = json[kDMProfileSteamidKey].string
		personaname = json[kDMProfilePersonanameKey].string
		accountId = json[kDMProfileAccountIdKey].int
		avatar = json[kDMProfileAvatarKey].string
		lastLogin = json[kDMProfileLastLoginKey].string
		avatarfull = json[kDMProfileAvatarfullKey].string
//		name = DMName(json: json[kDMProfileNameKey])

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if cheese != nil {
			dictionary.updateValue(cheese!, forKey: kDMProfileCheeseKey)
		}
		if avatarmedium != nil {
			dictionary.updateValue(avatarmedium!, forKey: kDMProfileAvatarmediumKey)
		}
		if loccountrycode != nil {
			dictionary.updateValue(loccountrycode!, forKey: kDMProfileLoccountrycodeKey)
		}
		if profileurl != nil {
			dictionary.updateValue(profileurl!, forKey: kDMProfileProfileurlKey)
		}
		if steamid != nil {
			dictionary.updateValue(steamid!, forKey: kDMProfileSteamidKey)
		}
		if personaname != nil {
			dictionary.updateValue(personaname!, forKey: kDMProfilePersonanameKey)
		}
		if accountId != nil {
			dictionary.updateValue(accountId!, forKey: kDMProfileAccountIdKey)
		}
		if avatar != nil {
			dictionary.updateValue(avatar!, forKey: kDMProfileAvatarKey)
		}
		if lastLogin != nil {
			dictionary.updateValue(lastLogin!, forKey: kDMProfileLastLoginKey)
		}
		if avatarfull != nil {
			dictionary.updateValue(avatarfull!, forKey: kDMProfileAvatarfullKey)
		}
//		if name != nil {
//			dictionary.updateValue(name!.dictionaryRepresentation(), forKey: kDMProfileNameKey)
//		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.cheese = aDecoder.decodeObjectForKey(kDMProfileCheeseKey) as? Int
		self.avatarmedium = aDecoder.decodeObjectForKey(kDMProfileAvatarmediumKey) as? String
		self.loccountrycode = aDecoder.decodeObjectForKey(kDMProfileLoccountrycodeKey) as? String
		self.profileurl = aDecoder.decodeObjectForKey(kDMProfileProfileurlKey) as? String
		self.steamid = aDecoder.decodeObjectForKey(kDMProfileSteamidKey) as? String
		self.personaname = aDecoder.decodeObjectForKey(kDMProfilePersonanameKey) as? String
		self.accountId = aDecoder.decodeObjectForKey(kDMProfileAccountIdKey) as? Int
		self.avatar = aDecoder.decodeObjectForKey(kDMProfileAvatarKey) as? String
		self.lastLogin = aDecoder.decodeObjectForKey(kDMProfileLastLoginKey) as? String
		self.avatarfull = aDecoder.decodeObjectForKey(kDMProfileAvatarfullKey) as? String
//		self.name = aDecoder.decodeObjectForKey(kDMProfileNameKey) as? DMName

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(cheese, forKey: kDMProfileCheeseKey)
		aCoder.encodeObject(avatarmedium, forKey: kDMProfileAvatarmediumKey)
		aCoder.encodeObject(loccountrycode, forKey: kDMProfileLoccountrycodeKey)
		aCoder.encodeObject(profileurl, forKey: kDMProfileProfileurlKey)
		aCoder.encodeObject(steamid, forKey: kDMProfileSteamidKey)
		aCoder.encodeObject(personaname, forKey: kDMProfilePersonanameKey)
		aCoder.encodeObject(accountId, forKey: kDMProfileAccountIdKey)
		aCoder.encodeObject(avatar, forKey: kDMProfileAvatarKey)
		aCoder.encodeObject(lastLogin, forKey: kDMProfileLastLoginKey)
		aCoder.encodeObject(avatarfull, forKey: kDMProfileAvatarfullKey)
//		aCoder.encodeObject(name, forKey: kDMProfileNameKey)

    }

}
