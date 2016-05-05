//
//  PurchaseController.swift
//  HeadNapApp
//
//  Created by Rainer Kormann on 22.04.16.
//  Copyright © 2016 HeadNap. All rights reserved.
//

import UIKit
import CoreData

class PurchaseController: UIViewController {
    
    var paketName: String?
    
    @IBOutlet weak var labelVideoPaket: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelVideoPaket.text = "Paket: \(paketName!)"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
