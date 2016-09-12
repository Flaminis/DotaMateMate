//
//  DMAllWordCounts.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMAllWordCounts: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMAllWordCountsGgKey: String = "gg"
	internal let kDMAllWordCountsGegeKey: String = "gege"
	internal let kDMAllWordCountsLelKey: String = "lel"
	internal let kDMAllWordCountsHappensKey: String = "happens"
	internal let kDMAllWordCountsWtfKey: String = "wtf"
	internal let kDMAllWordCountsWellKey: String = "well"
	internal let kDMAllWordCountsLulKey: String = "lul"
	internal let kDMAllWordCountsThatKey: String = "that"
	internal let kDMAllWordCountsHahahahaKey: String = "hahahaha"
	internal let kDMAllWordCountsWpKey: String = "wp"
	internal let kDMAllWordCountsHahahaKey: String = "hahaha"
	internal let kDMAllWordCountsEzKey: String = "ez"
	internal let kDMAllWordCountsHahahKey: String = "hahah"


    // MARK: Properties
	public var gg: Int?
	public var gege: Int?
	public var lel: Int?
	public var happens: Int?
	public var wtf: Int?
	public var well: Int?
	public var lul: Int?
	public var that: Int?
	public var hahahaha: Int?
	public var wp: Int?
	public var hahaha: Int?
	public var ez: Int?
	public var hahah: Int?


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
		gg = json[kDMAllWordCountsGgKey].int
		gege = json[kDMAllWordCountsGegeKey].int
		lel = json[kDMAllWordCountsLelKey].int
		happens = json[kDMAllWordCountsHappensKey].int
		wtf = json[kDMAllWordCountsWtfKey].int
		well = json[kDMAllWordCountsWellKey].int
		lul = json[kDMAllWordCountsLulKey].int
		that = json[kDMAllWordCountsThatKey].int
		hahahaha = json[kDMAllWordCountsHahahahaKey].int
		wp = json[kDMAllWordCountsWpKey].int
		hahaha = json[kDMAllWordCountsHahahaKey].int
		ez = json[kDMAllWordCountsEzKey].int
		hahah = json[kDMAllWordCountsHahahKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if gg != nil {
			dictionary.updateValue(gg!, forKey: kDMAllWordCountsGgKey)
		}
		if gege != nil {
			dictionary.updateValue(gege!, forKey: kDMAllWordCountsGegeKey)
		}
		if lel != nil {
			dictionary.updateValue(lel!, forKey: kDMAllWordCountsLelKey)
		}
		if happens != nil {
			dictionary.updateValue(happens!, forKey: kDMAllWordCountsHappensKey)
		}
		if wtf != nil {
			dictionary.updateValue(wtf!, forKey: kDMAllWordCountsWtfKey)
		}
		if well != nil {
			dictionary.updateValue(well!, forKey: kDMAllWordCountsWellKey)
		}
		if lul != nil {
			dictionary.updateValue(lul!, forKey: kDMAllWordCountsLulKey)
		}
		if that != nil {
			dictionary.updateValue(that!, forKey: kDMAllWordCountsThatKey)
		}
		if hahahaha != nil {
			dictionary.updateValue(hahahaha!, forKey: kDMAllWordCountsHahahahaKey)
		}
		if wp != nil {
			dictionary.updateValue(wp!, forKey: kDMAllWordCountsWpKey)
		}
		if hahaha != nil {
			dictionary.updateValue(hahaha!, forKey: kDMAllWordCountsHahahaKey)
		}
		if ez != nil {
			dictionary.updateValue(ez!, forKey: kDMAllWordCountsEzKey)
		}
		if hahah != nil {
			dictionary.updateValue(hahah!, forKey: kDMAllWordCountsHahahKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.gg = aDecoder.decodeObjectForKey(kDMAllWordCountsGgKey) as? Int
		self.gege = aDecoder.decodeObjectForKey(kDMAllWordCountsGegeKey) as? Int
		self.lel = aDecoder.decodeObjectForKey(kDMAllWordCountsLelKey) as? Int
		self.happens = aDecoder.decodeObjectForKey(kDMAllWordCountsHappensKey) as? Int
		self.wtf = aDecoder.decodeObjectForKey(kDMAllWordCountsWtfKey) as? Int
		self.well = aDecoder.decodeObjectForKey(kDMAllWordCountsWellKey) as? Int
		self.lul = aDecoder.decodeObjectForKey(kDMAllWordCountsLulKey) as? Int
		self.that = aDecoder.decodeObjectForKey(kDMAllWordCountsThatKey) as? Int
		self.hahahaha = aDecoder.decodeObjectForKey(kDMAllWordCountsHahahahaKey) as? Int
		self.wp = aDecoder.decodeObjectForKey(kDMAllWordCountsWpKey) as? Int
		self.hahaha = aDecoder.decodeObjectForKey(kDMAllWordCountsHahahaKey) as? Int
		self.ez = aDecoder.decodeObjectForKey(kDMAllWordCountsEzKey) as? Int
		self.hahah = aDecoder.decodeObjectForKey(kDMAllWordCountsHahahKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(gg, forKey: kDMAllWordCountsGgKey)
		aCoder.encodeObject(gege, forKey: kDMAllWordCountsGegeKey)
		aCoder.encodeObject(lel, forKey: kDMAllWordCountsLelKey)
		aCoder.encodeObject(happens, forKey: kDMAllWordCountsHappensKey)
		aCoder.encodeObject(wtf, forKey: kDMAllWordCountsWtfKey)
		aCoder.encodeObject(well, forKey: kDMAllWordCountsWellKey)
		aCoder.encodeObject(lul, forKey: kDMAllWordCountsLulKey)
		aCoder.encodeObject(that, forKey: kDMAllWordCountsThatKey)
		aCoder.encodeObject(hahahaha, forKey: kDMAllWordCountsHahahahaKey)
		aCoder.encodeObject(wp, forKey: kDMAllWordCountsWpKey)
		aCoder.encodeObject(hahaha, forKey: kDMAllWordCountsHahahaKey)
		aCoder.encodeObject(ez, forKey: kDMAllWordCountsEzKey)
		aCoder.encodeObject(hahah, forKey: kDMAllWordCountsHahahKey)

    }

}
