//
//  ImageCache.swift
//  DotaLobby
//
//  Created by Yerbol Kopzhassar on 5/16/16.
//  Copyright © 2016 Flaminis. All rights reserved.
//

import UIKit

class ImageCache {
    static let imageCache = NSCache()
    
    class func fetchImageWithURL(stringURL:String) -> UIImage? {
        
        let cache = self.imageCache
        var cachedImage:UIImage?
        
        if let image = cache.objectForKey(stringURL) as? UIImage {
            cachedImage = image
        } else {
            
            guard let url = NSURL(string:stringURL) else{
                return cachedImage
            }
            
            guard let data = NSData(contentsOfURL:url) else{
                return cachedImage
            }
            
            guard let image = UIImage(data:data) else {
                return cachedImage
            }
            
            cachedImage = image
            cache.setObject(image, forKey: stringURL)
        }
        
        return cachedImage
    }
    
    class func hasImageInCacheOfURL(stringURL:String) -> Bool {
        
        let cache = self.imageCache
        
        if (cache.objectForKey(stringURL)) != nil {
            return true
        } else {
            return false
        }
    }
    
    class func downloadAndCacheImageWithURL(url:String){
        let cache = self.imageCache
        
        guard let data = NSData(contentsOfURL: NSURL(string: url)!) else{
            return
        }
        
        guard let image = UIImage(data:data) else {
            return
        }
        
        cache.setObject(image, forKey: url)
    }
    
    class func cacheImage(image:UIImage,withKey string:String){
        let cache = self.imageCache
        cache.setObject(image, forKey: string)
    }
    
    class func deleteCachedImageWithURL(url:String){
        let cache = self.imageCache
        cache.removeObjectForKey(url)
    }
}
