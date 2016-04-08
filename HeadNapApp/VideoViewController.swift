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

class VideoViewController: UIViewController {

    var fotos = [MyPhoto]()
    var playerItem:AVPlayerItem?
    var videoURL: NSURL? = nil
    var moviePlayer: AVPlayer? = AVPlayer()

    var movieNowReal = destCtrl.videoURL
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadVideo()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func loadVideo() {
        
        let currentImg: MyPhoto?
        
//        let currentVideoURL = currentImg!.movieUrl
        
//        let videoURL = NSURL(string: currentVideoURL )
        

        
        moviePlayer = AVPlayer(URL: videoURL!)
        let playerViewController = AVPlayerViewController()
        // playerViewController.player = moviePlayer
        self.presentViewController(playerViewController, animated: true){
            // playerViewController.player!.play()
        }
    }

}
