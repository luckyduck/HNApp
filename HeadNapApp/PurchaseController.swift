//
//  PurchaseController.swift
//  HeadNapApp
//
//  Created by Rainer Kormann on 22.04.16.
//  Copyright © 2016 HeadNap. All rights reserved.
//

import UIKit

class PurchaseController: UIViewController {

    var fotos = [MyPhoto]()
    var fotosPaid = [MyPaidVideos]()
    var headSnacks = [MyHeadSnacks]()
    var headNapDeep = [MyHeadDeep]()
    
    var fotoToPlay: MyPhoto = MyPhoto(bildName: "",title: "",kommentar: "",movieUrl: "")
    var fotoToPlayPaid: MyPaidVideos = MyPaidVideos(bildName: "",title: "",kommentar: "",movieUrl: "",produktID: "")
    var headSnacksToPlayPaid: MyHeadSnacks = MyHeadSnacks(bildName: "",title: "",kommentar: "",movieUrl: "",produktID: "")
    var headDeepsToPlayPaid: MyHeadDeep = MyHeadDeep(bildName: "",title: "",kommentar: "",movieUrl: "",produktID: "")
    
    @IBOutlet weak var labelVideoPaket: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        labelVideoPaket.text = "Der title des Videos"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
