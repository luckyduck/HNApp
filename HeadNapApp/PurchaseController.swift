//
//  PurchaseController.swift
//  HeadNapApp
//
//  Created by Rainer Kormann on 22.04.16.
//  Copyright © 2016 HeadNap. All rights reserved.
//

import UIKit
import CoreData
import StoreKit

class PurchaseController: UIViewController {
    
/*
    var products = [SKProduct]()
    var productIDs = ["headnapappabo"]
*/
    
    var paketName: String?
    
    @IBOutlet weak var labelVideoPaket: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
//        print(products.count)

        labelVideoPaket.text = "Paket: \(paketName!)"
        
//        fetchProductInfomation()

        // Do any additional setup after loading the view.
    }

/*
        func fetchProductInfomation (){
        if !SKPaymentQueue.canMakePayments() {
            print("In-App Käufe nicht möglich")
            return
        }
        
        let prodSet = Set(productIDs)
        let prodRequest = SKProductsRequest(productIdentifiers: prodSet)
        
        prodRequest.delegate = self
        prodRequest.start()
        
    }
*/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
/*
extension PurchaseController: SKProductsRequestDelegate {

    func productsRequest(request: SKProductsRequest, didReceiveResponse response: SKProductsResponse) {
        
        let product = [String!]()
        
        let foundProducts = response.products
        if foundProducts.count < 1 {
            print("Keine Produkte")
            return
        }
        for products in foundProducts {
//            products.append(product)
        }
        
    }
}
*/