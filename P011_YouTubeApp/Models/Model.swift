//
//  Model.swift
//  P011_YouTubeApp
//
//  Created by Pedro Raffo Leon on 05.11.20.
//

import Foundation

protocol ModelDelegate {
    func VideosFetched (_ videos:[Video])
    
    
}

class Model {
    
    var delegate: ModelDelegate?
    
    func getVideos () {
        // Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil
        else {
            return
        }
        // Get a URLSession object --> Networking Heavylifting
        let session = URLSession.shared
        
        // Get a data task from the URLSession object --> single call to the API
        let dataTask = session.dataTask(with: url!) {(data, response, error) in
            if error != nil || data == nil {
                return
            }
            do {
                // Parsing the data into the video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response =  try decoder.decode(Response.self, from: data!)
                
                if response.items != nil {
                    DispatchQueue.main.async{
                    // Call the "VideosFetched" method of the delegate
                    self.delegate?.VideosFetched(response.items!)
                    }
                }
                
                dump(response)
            }
            
            catch {
                
            }
        
            
        }
        // Kick off the task
        dataTask.resume()
        
    }
}
