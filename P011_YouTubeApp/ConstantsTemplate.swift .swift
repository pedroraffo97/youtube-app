//
//  ConstantsTemplate.swift .swift
//  P011_YouTubeApp
//
//  Created by Pedro Raffo Leon on 14.12.20.
//

import Foundation
struct Constants {
    static var API_KEY = "" //API_KEY from YouTube API
    static var PLAYLIST_ID = ""
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VIDEOCELL_ID = "VideoCell"
    
 }
