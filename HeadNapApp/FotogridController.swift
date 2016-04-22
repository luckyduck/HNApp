//
//  FotogridController.swift
//  HeadNapApp
//
//  Created by Rainer Kormann on 05.04.16.
//  Copyright © 2016 HeadNap. All rights reserved.
//

import UIKit

 class FotogridController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var fotos = [MyPhoto]()
    var paidVideos = [MyPaidVideos]()
    var sectionTitleLabels = [MySectionTitleLabels]()
   
    let headerViewIdentifier = "sectionLabelSuperHead"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // --- sectionTitleLabels
 
        let sectionTitleLabel1 = MySectionTitleLabels(titleLabel: "HeadNap kostenlos kennenlernen", backroundColor: "")
        sectionTitleLabels.append(sectionTitleLabel1)
        
        let sectionTitleLabel2 = MySectionTitleLabels(titleLabel: "Ruhe und Entspannung", backroundColor: "")
        sectionTitleLabels.append(sectionTitleLabel2)
        
        // --- kostenlose Videos
        
        let bild1 = MyPhoto(bildName: "bgButtonCollection_1", title: "Herzlich willkommen", kommentar: "", movieUrl: "https://player.vimeo.com/external/145997190.hd.mp4?s=9f1f52432c542ce8058d8a61d81434fd36730b2d&profile_id=113" )
        fotos.append(bild1)
        
        let bild2 = MyPhoto(bildName: "bgButtonCollection_2", title: "Warum HeadNap?", kommentar: "", movieUrl: "https://player.vimeo.com/external/139586847.hd.mp4?s=b478d42689a123ad0f2dd26100dfacfd025b8eef&profile_id=113")
        fotos.append(bild2)
        
        let bild3 = MyPhoto(bildName: "bgButtonCollection_2", title: "Über Siegfried Höchst", kommentar: "", movieUrl: "https://player.vimeo.com/external/142980452.hd.mp4?s=a0ade91fb7f673d9579a5226e0521b1c36e66e57&profile_id=113")
        fotos.append(bild3)
        
   
        // --- paid videos
        
        let paidVideo1 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 1", kommentar: "", movieUrl: "https://player.vimeo.com/external/143851174.hd.mp4?s=0381bc5f10a45f778222713836e86cfff46f8f26&profile_id=113")
        paidVideos.append(paidVideo1)
        
        let paidVideo2 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 2", kommentar: "", movieUrl: "https://player.vimeo.com/external/143851173.hd.mp4?s=fff3da5530c31388c19738da72b47cc55637615e&profile_id=113")
        paidVideos.append(paidVideo2)
        
        let paidVideo3 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 3", kommentar: "", movieUrl: "https://player.vimeo.com/external/143851175.hd.mp4?s=41ea0d346e2b5235ac14ea052b91982273d1a104&profile_id=113")
        paidVideos.append(paidVideo3)
        
        let paidVideo4 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 4", kommentar: "", movieUrl: "https://player.vimeo.com/external/143855044.hd.mp4?s=3ad3cb2602f4475124b286e008b0f4ee37994176&profile_id=113")
        paidVideos.append(paidVideo4)
        
        let paidVideo5 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 5", kommentar: "", movieUrl: "https://player.vimeo.com/external/143855043.hd.mp4?s=523666d35484bdde8afd55eb9cde487b14b4f351&profile_id=113")
        paidVideos.append(paidVideo5)
        
        let paidVideo6 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 6", kommentar: "", movieUrl: "https://player.vimeo.com/external/109436114.hd.mp4?s=4292d01d46b7ba88289bb63c0df64d8fd72a8e27&profile_id=113")
        paidVideos.append(paidVideo6)
        
        let paidVideo7 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 7", kommentar: "", movieUrl: "https://player.vimeo.com/external/109436115.hd.mp4?s=5d2c7f4afed1344e664534257cd9430f113c47cb&profile_id=113")
        paidVideos.append(paidVideo7)
        
        let paidVideo8 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 8", kommentar: "", movieUrl: "https://player.vimeo.com/external/110155429.hd.mp4?s=0eaec54fb740215faabce59671480bcb50765823&profile_id=113")
        paidVideos.append(paidVideo8)
        
        let paidVideo9 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 9", kommentar: "", movieUrl: "https://player.vimeo.com/external/110155431.hd.mp4?s=90ea76a2b48eaa215f4292a8e1b977ffe5351057&profile_id=113")
        paidVideos.append(paidVideo9)
        
        let paidVideo10 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 10", kommentar: "", movieUrl: "https://player.vimeo.com/external/110155430.hd.mp4?s=76319ab0ffa5845471d3f55d801080e281e5afa1&profile_id=113")
        paidVideos.append(paidVideo10)
        
        let paidVideo11 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 11", kommentar: "", movieUrl: "https://player.vimeo.com/external/110260900.hd.mp4?s=5418f752f1a7cabc8894ce734531915e728a6da4&profile_id=113")
        paidVideos.append(paidVideo11)
        
        let paidVideo12 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 12", kommentar: "", movieUrl: "https://player.vimeo.com/external/110301178.hd.mp4?s=27d697f121399b1c1ae967b37a9e7f384f3774f2&profile_id=113")
        paidVideos.append(paidVideo12)
        
        let paidVideo13 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 13", kommentar: "", movieUrl: "https://player.vimeo.com/external/110271210.hd.mp4?s=7fcb2ef321751cdee010d634d2c16f4bc629cd8f&profile_id=113")
        paidVideos.append(paidVideo13)
        
        let paidVideo14 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 14", kommentar: "", movieUrl: "https://player.vimeo.com/external/110271212.hd.mp4?s=369f6e9c007f2bb09c98ab13097e8374850ed6fd&profile_id=113")
        paidVideos.append(paidVideo14)
        
        let paidVideo15 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 15", kommentar: "", movieUrl: "https://player.vimeo.com/external/110293880.hd.mp4?s=0b7b60f0fa8cdd235c29d848b73b62d95731b017&profile_id=113")
        paidVideos.append(paidVideo15)
        
        let paidVideo16 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 16", kommentar: "", movieUrl: "https://player.vimeo.com/external/110354887.hd.mp4?s=52e063f2257e3c23d90118671356905a4f3297db&profile_id=113")
        paidVideos.append(paidVideo16)
        
        let paidVideo17 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 17", kommentar: "", movieUrl: "https://player.vimeo.com/external/110358212.hd.mp4?s=85b727a22e4e52067456421edd2c2d1d8a0fcff4&profile_id=113")
        paidVideos.append(paidVideo17)
        
        let paidVideo18 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 18", kommentar: "", movieUrl: "https://player.vimeo.com/external/110367784.hd.mp4?s=83419d1efd858fe465aaa629575c57070d024221&profile_id=113")
        paidVideos.append(paidVideo18)
        
        let paidVideo19 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 19", kommentar: "", movieUrl: "https://player.vimeo.com/external/110367785.hd.mp4?s=ee7728625552abe0c98c8d83975916645d7ca033&profile_id=113")
        paidVideos.append(paidVideo19)
        
        let paidVideo20 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 20", kommentar: "", movieUrl: "https://player.vimeo.com/external/110367786.hd.mp4?s=f3b6085f3100ba9bafee88831a41de2fd627fe57&profile_id=113")
        paidVideos.append(paidVideo20)
        
        let paidVideo21 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 21", kommentar: "", movieUrl: "https://player.vimeo.com/external/110445332.hd.mp4?s=0aea9df9b5eaa34a2dc305d52a3c21fd5171733a&profile_id=113")
        paidVideos.append(paidVideo21)

        let paidVideo22 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 22", kommentar: "", movieUrl: "https://player.vimeo.com/external/110445264.hd.mp4?s=f0e41490bb5187b8fb31f434ab24c641aecb3469&profile_id=113")
        paidVideos.append(paidVideo22)
        
        let paidVideo23 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 23", kommentar: "", movieUrl: "https://player.vimeo.com/external/110445265.hd.mp4?s=46f9307ecef611ccb280581bf3fd50482647812e&profile_id=113")
        paidVideos.append(paidVideo23)

        let paidVideo24 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 24", kommentar: "", movieUrl: "https://player.vimeo.com/external/110445266.hd.mp4?s=14678a6de10e34a0ec1d2aff5f6fd0636a757db1&profile_id=113")
        paidVideos.append(paidVideo24)
        
        let paidVideo25 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 25", kommentar: "", movieUrl: "https://player.vimeo.com/external/110494426.hd.mp4?s=14fd391a51240740f9436ab684e05d0a012f1725&profile_id=113")
        paidVideos.append(paidVideo25)
        
        let paidVideo26 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 26", kommentar: "", movieUrl: "https://player.vimeo.com/external/111526235.hd.mp4?s=1171b046b76f6ea2289973993181a0b265b5ab44&profile_id=113")
        paidVideos.append(paidVideo26)
        
        let paidVideo27 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 27", kommentar: "", movieUrl: "https://player.vimeo.com/external/111499299.hd.mp4?s=98f02a71fd78574040bb3bab8c400382cd0455be&profile_id=113")
        paidVideos.append(paidVideo27)
        
        let paidVideo28 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 28", kommentar: "", movieUrl: "https://player.vimeo.com/external/110715892.hd.mp4?s=4cf9bc4747ebc14accd0350fc1e91a79345b4118&profile_id=113")
        paidVideos.append(paidVideo28)

        let paidVideo29 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 29", kommentar: "", movieUrl: "https://player.vimeo.com/external/111499301.hd.mp4?s=ee6634f50d9e0883b87747d17a3575020aa07790&profile_id=113")
        paidVideos.append(paidVideo29)
   
        let paidVideo30 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 30", kommentar: "", movieUrl: "https://player.vimeo.com/external/111508424.hd.mp4?s=dc8784c394d0feea6e616c45137efff526076afe&profile_id=113")
        paidVideos.append(paidVideo30)
        
        let paidVideo31 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 31", kommentar: "", movieUrl: "https://player.vimeo.com/external/111499303.hd.mp4?s=c9eacd93a4d098d324f41faec6931f04b5a427a1&profile_id=113")
        paidVideos.append(paidVideo31)
        
        let paidVideo32 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 32", kommentar: "", movieUrl: "https://player.vimeo.com/external/111534353.hd.mp4?s=d2ae2271364e37e84eea430d6f4ae9dadbe164f3&profile_id=113")
        paidVideos.append(paidVideo32)
        
        let paidVideo33 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 33", kommentar: "", movieUrl: "https://player.vimeo.com/external/111534355.hd.mp4?s=a27e9dbfcf791ceed3443b311982c6586bbafe08&profile_id=113")
        paidVideos.append(paidVideo33)
        
        let paidVideo34 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 34", kommentar: "", movieUrl: "https://player.vimeo.com/external/111508429.hd.mp4?s=35b0f26f29aa43c79937fff0a7c8885f16747bf4&profile_id=113")
        paidVideos.append(paidVideo34)
        
        let paidVideo35 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 35", kommentar: "", movieUrl: "https://player.vimeo.com/external/111534354.hd.mp4?s=30051f1b5c223ea32b81d205703f0d7377b1d3c2&profile_id=113")
        paidVideos.append(paidVideo35)

    }
 

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showDetail" {
          
            let destCtrl = segue.destinationViewController as! VideoViewController
            
            let indexPath = sender as! NSIndexPath

            let sectionNow = indexPath.section
            
            if (sectionNow == 0) {
                destCtrl.fotoToPlay = fotos[indexPath.row]
            }
            if (sectionNow == 1) {
                destCtrl.fotoToPlayPaid = paidVideos[indexPath.row]
            }
            
           
        }
    
    }

    // MARK: UICollectionViewDataSource

     override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
    
        let sectionLabel: FotogridCell = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: headerViewIdentifier, forIndexPath: indexPath) as! FotogridCell
        sectionLabel.sectionLabelSuperHead.text = sectionTitleLabels[indexPath.section].titleLabel
        
        if ( indexPath.section == 0 ){
            sectionLabel.buttonBuy.hidden = true
        }
        if ( indexPath.section == 1 ){
            sectionLabel.buttonBuy.hidden = false
        }
        
        return sectionLabel
    
    }

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return sectionTitleLabels.count
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        var countVids = 0
        
        if ( section == 0 ){
            countVids = fotos.count
        }
        if ( section == 1 ){
            countVids = paidVideos.count
        }
        
        return countVids

    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("fotoCell", forIndexPath: indexPath) as! FotogridCell

//        cell.backgroundColor = UIColor.grayColor()

        let sectionNow = indexPath.section
        
        if (sectionNow == 0) {
            let currentImg = UIImage(named: fotos[indexPath.row].bildName)
            cell.imageView.image = currentImg
            let currentTitle = fotos[indexPath.row].title
            cell.imageLabel.text = currentTitle
        }
        if (sectionNow == 1) {
            let currentImg = UIImage(named: paidVideos[indexPath.row].bildName)
            cell.imageView.image = currentImg
            let currentTitle = paidVideos[indexPath.row].title
            cell.imageLabel.text = currentTitle
        }

        return cell
    }
    
    // MARK: FlowLayout Delegate
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexpath: NSIndexPath) -> CGSize {
        
        var size = CGSize(width: 140, height: 80)

        if ( self.view.traitCollection.horizontalSizeClass == UIUserInterfaceSizeClass.Regular ) {
            size = CGSize(width: 280, height: 160)
        }
        
        return size
    
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
    
        return UIEdgeInsets(top: 15.0, left: 15.0, bottom: 15.0, right: 15.0)
    
    }
    
    // MARK: UICollectionViewDelegate

    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        
        self.performSegueWithIdentifier("showDetail", sender: indexPath)
        
        return true
    }

}
