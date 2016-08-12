//
//  Like.swift
//  DotaMate
//
//  Created by Yerbol Kopzhassar on 22/07/2016.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import Parse

class Like: PFObject {
    @NSManaged var author: User
    @NSManaged var guide: Guide
}

extension Like: PFSubclassing {
    override class func initialize() {
        struct Static {
            static var onceToken : dispatch_once_t = 0;
        }
        dispatch_once(&Static.onceToken){
            self.registerSubclass()
        }
    }
    
    static func parseClassName() -> String {
        return ParseClass.Like
    }
}
