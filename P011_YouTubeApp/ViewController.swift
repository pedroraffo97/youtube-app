//
//  ViewController.swift
//  P011_YouTubeApp
//
//  Created by Pedro Raffo Leon on 31.10.20.
//

import UIKit

class ViewController: UIViewController {
    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
    }


}

