//
//  CacheManager.swift
//  P011_YouTubeApp
//
//  Created by Pedro Raffo Leon on 22.12.20.
//

import Foundation

class cacheManager {
 
    
    // static dictionary because we are not going to create an instance of this cache
   
    static var cache = [String: Data]()
    //static methods because we are not going to create an instance of this cache
    
    static func setVideoCache (_ url: String, _ data: Data?) {
        
        //Store the image data and use the url as the key
        cache[url] = data
        
    }
    
    static func getvideoCache (_ url: String) -> Data? {
        
        //Try to get the Data for the specified url, if not is going to return nil (?)
        return cache[url]
    }
}
