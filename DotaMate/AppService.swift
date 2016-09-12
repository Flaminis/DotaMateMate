//
//  AppService.swift
//  DotaMate
//
//  Created by Philip DesJean on 9/5/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

class AppService: NSObject {
    
    static let sharedInstance = AppService()
    
    let api = DotaMateApi()
    
    var items = [Int:DMItems]()
    
    var heroes = [Int:DMHeroes]()
    
    func setup() {
        api.getItems()
        api.downloadHeroesFromAPI()
    }
    
    func getSearchResults(searchString : String, success: (result: [ApiUser]?) -> Void, failure: (result: NSError?) -> Void) {
        
        let queryParams = ["q" : searchString]

        api.getSearchResults(queryParams) { response, error in
            
            if error != nil {
                //explode
            }
            
            success(result: response)
            
        }
        
    }
    
    func getMatch(matchId: Int, success: (result: DMMatch?) -> Void, failure: (result: NSError?) -> Void) {
        
        api.getMatch(matchId) { response, error in
            
            if error != nil {
                //explode
            }
            
            success(result: response)
        }
        
    }
    
    func getPlayerProfile(accountId: Int, success: (result: DMPlayerProfile?) -> Void, failure: (result: NSError?) -> Void) {
        
        api.getPlayerProfile(accountId) { response, error in
            
            if error != nil {
                //explode
            }
            
            success(result: response)
        }
        
    }

    
    func getImage(url: String, imageView: UIImageView) {
        api.getImage(url, imageView: imageView)
    }

    
}
