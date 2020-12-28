//
//  DetailViewController.swift
//  P011_YouTubeApp
//
//  Created by Pedro Raffo Leon on 28.12.20.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var TitleLabel: UILabel!
    
    @IBOutlet weak var DateLabel: UILabel!
    
    @IBOutlet weak var webView: WKWebView!
    
    
    @IBOutlet weak var textView: UITextView!
    
    var video: Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        
        // Clear the fields
        TitleLabel.text = ""
        DateLabel.text = ""
        textView.text = ""
        // Check if there is a video
        guard video != nil else {
            return
        }
        // Create the embed URL
        let embedUrlString = Constants.YT_EMBED_URL + video!.videoID
        // Load it into the website
        let url = URL(string: embedUrlString)
        let request = URLRequest(url: url!)
        webView.load(request)
        // Set the title
        TitleLabel.text = video!.title
        // Set the date
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMM d, yyyy"
        DateLabel.text = df.string(from: video!.published)
        // Set the description
        textView.text = video!.description
        
        
        
        
        
        
        
    }

    

}
