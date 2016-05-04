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
    var fotosPaid = [MyPaidVideos]()
    var headSnacks = [MyHeadSnacks]()
    var headNapDeep = [MyHeadDeep]()
    var playerItem:AVPlayerItem?
    var videoURL: NSURL? = nil
    var moviePlayer: AVPlayer? = AVPlayer()
    
    var fotoToPlay: MyPhoto = MyPhoto(bildName: "",title: "",kommentar: "",movieUrl: "",produktID: "")
    var fotoToPlayPaid: MyPaidVideos = MyPaidVideos(bildName: "",title: "",kommentar: "",movieUrl: "",produktID: "")
    var headSnacksToPlayPaid: MyHeadSnacks = MyHeadSnacks(bildName: "",title: "",kommentar: "",movieUrl: "",produktID: "")
    var headDeepsToPlayPaid: MyHeadDeep = MyHeadDeep(bildName: "",title: "",kommentar: "",movieUrl: "",produktID: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        loadVideo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func loadVideo() {
        
        if (fotoToPlay.movieUrl != ""){
            moviePlayer = AVPlayer(URL: NSURL(string: fotoToPlay.movieUrl)!)
        }
        if (headSnacksToPlayPaid.movieUrl != ""){
            moviePlayer = AVPlayer(URL: NSURL(string: headSnacksToPlayPaid.movieUrl)!)
        }
        if (headDeepsToPlayPaid.movieUrl != ""){
            moviePlayer = AVPlayer(URL: NSURL(string: headDeepsToPlayPaid.movieUrl)!)
        }
        if (fotoToPlayPaid.movieUrl != ""){
            moviePlayer = AVPlayer(URL: NSURL(string: fotoToPlayPaid.movieUrl)!)
        }
        let playerViewController = AVPlayerViewController()
        playerViewController.player = moviePlayer
        self.presentViewController(playerViewController, animated: true){
            self.moviePlayer!.play()
        }

    }

}
