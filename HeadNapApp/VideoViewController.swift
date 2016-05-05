//
//  VideoViewController.swift
//  HeadNapApp
//
//  Created by Rainer Kormann on 05.04.16.
//  Copyright © 2016 HeadNap. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
import CoreData


class VideoViewController: UIViewController {

    var playerItem:AVPlayerItem?
    var videoURL: NSURL? = nil
    var moviePlayer: AVPlayer? = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadVideo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func loadVideo() {
        moviePlayer = AVPlayer(URL: videoURL!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = moviePlayer
        self.presentViewController(playerViewController, animated: false){
            self.moviePlayer!.play()
        }
    }
}
