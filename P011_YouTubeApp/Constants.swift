//
//  Constants.swift
//  P011_YouTubeApp
//
//  Created by Pedro Raffo Leon on 05.11.20.
//

import Foundation

struct Constants {
    static var API_KEY = "" //API_KEY from YouTube API
    static var PLAYLIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
}
