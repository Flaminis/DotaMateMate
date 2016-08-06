
//  Guide.swift
//  DotaMate
//
//  Created by Yerbol Kopzhassar on 11/07/2016.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import Foundation
import Parse

class Guide: PFObject {
//    @NSManaged var username: String
    @NSManaged var author: User
    @NSManaged var uuid: String
    @NSManaged var heroIconPic: PFFile
    @NSManaged var title: String
    @NSManaged var guideDescription: String
    @NSManaged var heroGuideName: String
    @NSManaged var heroGuidePosition: String
    @NSManaged var guideLikes: Int
    @NSManaged var skillBuild: String
    @NSManaged var items: String
    @NSManaged var guideNumOfViews: Int
    @NSManaged var username : String


    
    
    var userLiked: Bool = false
}

extension Guide: PFSubclassing {
    override class func initialize() {
        struct Static {
            static var onceToken : dispatch_once_t = 0;
        }
        dispatch_once(&Static.onceToken){
            self.registerSubclass()
        }
    }
    static func parseClassName() -> String {
        return ParseClass.Guide
    }
}

extension Guide {
    class func fetchGuides(skip: Int = 0, limit: Int = 10, closure: ([Guide]?, NSError?) -> Void) {
        let query = PFQuery(className: ParseClass.Guide)
        query.includeKey("author")
        query.skip = skip
        query.limit = limit
        
        query.orderByDescending("createdAt")
        query.findObjectsInBackgroundWithBlock { (guides, error) in
            guard let guides = guides as? [Guide],
                currentUser = User.currentUser(),
                likeQuery = Like.query()?
                    .whereKey("guide", containedIn: guides)
                    .whereKey("author", equalTo: currentUser)else { return }
            
            likeQuery.findObjectsInBackgroundWithBlock { likes, error in
                guard let likes = likes as? [Like] else { return }
                let likedGuideObjectIds = likes.flatMap { $0.guide.objectId }
                guides.forEach {
                    guard let objectId = $0.objectId else { return }
                    $0.userLiked = likedGuideObjectIds.contains(objectId)
                }
                closure(guides, error)
            }
        }
    }
    
    func like(closure: (NSError?) -> Void){
        let like = Like()
        like.guide = self
        like.author = User.currentUser()!
        like.saveInBackgroundWithBlock { (finished, error) in

            closure(error)
        }
        self.guideLikes += 1
        
        self.saveInBackground()
        
        userLiked = true
    }
    
    func unlike(user: User, closure: (NSError?) -> Void) {
        Like.query()?
            .whereKey("guide", equalTo: self)
            .whereKey("author", equalTo: User.currentUser()!)
            .findObjectsInBackgroundWithBlock { likes, error in
                if let error = error {
                    closure(error)
                } else {
                    PFObject.deleteAllInBackground(likes) { _, error in
                        closure(error)
                    }
                }
        }
        
        self.guideLikes -= 1
        self.saveInBackground()
        
       


        userLiked = false
    }
}
