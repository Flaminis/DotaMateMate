//
//  DotaMateApi.swift
//  DotaMate
//
//  Created by Philip DesJean on 9/5/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class DotaMateApi: NSObject {
        
    let baseUrl = "https://api.opendota.com/api"
    
    func getRequest(url : String, pathParams : [String:String]?=nil, queryParams : [String:AnyObject]?=nil, completionHandler: (AnyObject?, NSError?) -> ()) {
        
        var finalUrl = baseUrl
        
        if pathParams != nil {
            finalUrl = finalUrl + applyPathParams(url, pathParams: pathParams!)
        } else {
            finalUrl = finalUrl + url
        }
        
        print(finalUrl)
        
        Alamofire.request(.GET, finalUrl, parameters: queryParams, encoding: .URL, headers: nil).responseJSON { (response: Response<AnyObject, NSError>) in
                        
            switch response.result {
            case .Success:
                completionHandler(response.result.value, nil)
            case .Failure(let error):
                completionHandler(nil, error)
            }
        }
    }
    
    func applyPathParams(url: String, pathParams : [String:String]) -> String {
        var finalUrl = url
        
        for keyName in pathParams.keys {
            finalUrl = finalUrl.stringByReplacingOccurrencesOfString("{"+keyName+"}", withString: pathParams[keyName]!)
        }
        
        return finalUrl;
    }
    
    func getImage(url: String, imageView: UIImageView) {
        Alamofire.request(.GET, url).responseData { (response: Response<NSData, NSError>) in
            let image = UIImage(data: response.data!)
            
            dispatch_async(dispatch_get_main_queue(), {
                imageView.image = image
            })
        }
    }
    
    func getSearchResults(queryParams: [String : AnyObject], completionHandler: ([ApiUser]?, NSError?) -> ()) {
        let url = DotaMateApiResources.Resource.ResourceSearch.rawValue
        
        getRequest(url, queryParams: queryParams) { response, error in
            if error != nil {
                //fix later
                print("something went wrong")
            }
            
            let count = response!.count
            
            var x = 0
            
            var users = [ApiUser]()
            
            repeat {
                
                let json = JSON.init(response![x])
                
                let newUser = ApiUser.init(json: json)
                
                print(newUser.displayName!)
                
                users.append(newUser)
                
                x += 1
                
            } while x < count
            
            completionHandler(users, error)

        }
        
    }
    
    func getMatch(matchId: Int, completionHandler: (DMMatch?, NSError?) -> ()) {
        let url = DotaMateApiResources.Resource.ResourceMatch.rawValue
        
        let pathParams = ["matchId": "\(matchId)"]
        
        getRequest(url, pathParams: pathParams) { responseObject, error in
            let json = JSON.init(responseObject!)
            
            let match = DMMatch.init(json: json)
            
            completionHandler(match, error)
        }
    }
    
    func getPlayerProfile(accountId: Int, completionHandler: (DMPlayerProfile?, NSError?) -> ()) {
        let url = DotaMateApiResources.Resource.ResourcePlayerGet.rawValue
        
        let pathParams = ["accountId": "\(accountId)"]
        
        getRequest(url, pathParams: pathParams) { responseObject, error in
            let json = JSON.init(responseObject!)
            
            let match = DMPlayerProfile.init(json: json)
            
            completionHandler(match, error)
        }
    }
    
    func getItems() {
        let url = "https://api.steampowered.com/IEconDOTA2_570/GetGameItems/v1/?key=A041063D0F9386FD666F26E04598C9D0&format=json"
        
        Alamofire.request(.GET, url).responseJSON { (response: Response<AnyObject, NSError>) in
            
            let json = JSON.init(response.result.value!)
            
            let result = DMResult.init(json: json["result"])
            
            AppService.sharedInstance.items.removeAll()
            
            for item in result.items! {
                
                let name = item.name!.stringByReplacingOccurrencesOfString("item_", withString: "")
                
                let url = "http://media.steampowered.com/apps/dota2/images/items/\(name)_lg.png?"
                
                item.imageUrl = url
                
                AppService.sharedInstance.items.updateValue(item, forKey: item.internalIdentifier!)
                
            }
            
        }
        
    }
    
    func downloadHeroesFromAPI() {
        
        let queryParams = ["language":"en-us", "key" : "A041063D0F9386FD666F26E04598C9D0"]
        
        Alamofire.request(.GET, "http://api.steampowered.com/IEconDOTA2_570/GetHeroes/v0001/",parameters: queryParams,encoding: .URL).validate().responseJSON(){ response in
            
            let json = JSON.init(response.result.value!)
            
            let heroes = DMResultHero.init(json: json["result"])
            
            for hero in heroes.heroes! {
                
                let name = hero.name!
                let imageHeroName = name.stringByReplacingOccurrencesOfString("npc_dota_hero_", withString: "")
                hero.largeUrl = "http://cdn.dota2.com/apps/dota2/images/heroes/\(imageHeroName)_lg.png"
                hero.smallUrl = "http://media.steampowered.com/apps/dota2/images/heroes/\(imageHeroName)_sb.png"
                hero.portraitUrl = "http://cdn.dota2.com/apps/dota2/images/heroes/\(imageHeroName)_vert.jpg"
                
                AppService.sharedInstance.heroes.updateValue(hero, forKey: hero.internalIdentifier!)
            }
            
        }
    }
}
