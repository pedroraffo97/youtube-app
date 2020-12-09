//
//  Video.swift
//  P011_YouTubeApp
//
//  Created by Pedro Raffo Leon on 05.11.20.
//

import Foundation
struct Video : Decodable {
    var videoID = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date ()
    
    enum CodingKeys: String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoID = "videoId"
        
        
    }
    init (from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
      
        // Parse the title
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        // Parse the description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        // Parse the publish date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        // Parse thumbnails, one level deeper on the JSON Object
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        // get into high, one level deeper on the JSON Object
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        //Parse Video ID
        
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        
        self.videoID =  try resourceIdContainer.decode(String.self, forKey: .videoID)
    }
    

}
