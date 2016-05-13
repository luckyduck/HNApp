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
    
    
    var produktID: String?
    var paketName: String?
    
    var products = [SKProduct]()
    var productIDs = ["headnapappabo","headnapfive","headnapkleinseriekoerpermeditation","headsnackglueck","headsnackfrieden","headsnackruhe","headsnackkraft"]
    var transactionForProductId: String?
    
    @IBOutlet weak var labelVideoPaket: UILabel!
    @IBOutlet weak var labelVideoPaketPriceInfo: UILabel!
    
    @IBOutlet weak var buyHeadNapPaket: UIButton!
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        labelVideoPaket.text = "\(paketName!)"
        
        fetchProductInfomation()
        SKPaymentQueue.defaultQueue().addTransactionObserver(self)

    }
    
    func didTapButton() {
        if transactionForProductId != nil {
            print ("Es läuft eine Transaktion")
            return
        }
        for choosenProduct in products {
            if (choosenProduct.productIdentifier == produktID ){
                
                let product = choosenProduct
                let payment = SKPayment(product: product)
                SKPaymentQueue.defaultQueue().addPayment(payment)
                transactionForProductId = product.productIdentifier
            }
        }
    }

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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
extension PurchaseController: SKPaymentTransactionObserver {
    
    func paymentQueue(queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
        let defaults = NSUserDefaults()
        
        for currentTransaction in transactions {
            switch currentTransaction.transactionState {
            case SKPaymentTransactionState.Purchased:
                print("erfolgreich")
                SKPaymentQueue.defaultQueue().finishTransaction(currentTransaction)
                transactionForProductId = nil
                defaults.setBool(true, forKey: produktID!)
                
            case SKPaymentTransactionState.Failed:
                print("nicht erfolgreich")
                SKPaymentQueue.defaultQueue().finishTransaction(currentTransaction)
                SKPaymentQueue.defaultQueue().removeTransactionObserver(self)
                transactionForProductId = nil
                
            default:
                break
                
            }
        }
    }
}
extension PurchaseController: SKProductsRequestDelegate {

    func productsRequest(request: SKProductsRequest, didReceiveResponse response: SKProductsResponse) {
        
        let foundProducts = response.products
        if foundProducts.count < 1 {
            print("Keine Produkte")
            return
        }
        for product in foundProducts {
            products.append(product)
        }
        
        for choosenProduct in products {
            
            if (choosenProduct.productIdentifier == produktID ){
                let currencySymbol = choosenProduct.priceLocale.objectForKey(NSLocaleCurrencySymbol)! as! String
                
                let title = choosenProduct.localizedTitle
                let price = choosenProduct.price
                
                labelVideoPaketPriceInfo.text = "\(title) - \(price)\(currencySymbol)"
                
                buyHeadNapPaket.userInteractionEnabled = true
                buyHeadNapPaket.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(PurchaseController.didTapButton)))
                
            }
        }
    }
}
