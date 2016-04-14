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
        
        let sectionTitleLabel1 = MySectionTitleLabels(titleLabel: "Basis Videos", backroundColor: "")
        sectionTitleLabels.append(sectionTitleLabel1)
        
        let sectionTitleLabel2 = MySectionTitleLabels(titleLabel: "Videos HeadNap Five", backroundColor: "")
        sectionTitleLabels.append(sectionTitleLabel2)

        // --- kostenlose Videos
        
        let bild1 = MyPhoto(bildName: "bgButtonCollection_1", title: "Herzlich willkommen", kommentar: "", movieUrl: "https://player.vimeo.com/external/142980452.hd.mp4?s=a0ade91fb7f673d9579a5226e0521b1c36e66e57&profile_id=113" )
        fotos.append(bild1)
        
        let bild2 = MyPhoto(bildName: "bgButtonCollection_2", title: "Bodyscan", kommentar: "", movieUrl: "https://player.vimeo.com/external/143851174.hd.mp4?s=0381bc5f10a45f778222713836e86cfff46f8f26&profile_id=113")
        fotos.append(bild2)
        
   
        // --- paid videos
        
        let paidVideo1 = MyPaidVideos(bildName: "bgButtonCollection_2", title: "Übung 1", kommentar: "", movieUrl: "https://player.vimeo.com/external/142980452.hd.mp4?s=a0ade91fb7f673d9579a5226e0521b1c36e66e57&profile_id=113")
        paidVideos.append(paidVideo1)
        
        let paidVideo2 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 2", kommentar: "", movieUrl: "https://player.vimeo.com/external/143851174.hd.mp4?s=0381bc5f10a45f778222713836e86cfff46f8f26&profile_id=113")
        paidVideos.append(paidVideo2)
        
        let paidVideo3 = MyPaidVideos(bildName: "bgButtonCollection_2", title: "Übung 1", kommentar: "", movieUrl: "https://player.vimeo.com/external/142980452.hd.mp4?s=a0ade91fb7f673d9579a5226e0521b1c36e66e57&profile_id=113")
        paidVideos.append(paidVideo3)
        
        let paidVideo4 = MyPaidVideos(bildName: "bgButtonCollection_3", title: "Übung 2", kommentar: "", movieUrl: "https://player.vimeo.com/external/143851174.hd.mp4?s=0381bc5f10a45f778222713836e86cfff46f8f26&profile_id=113")
        paidVideos.append(paidVideo4)

    }
 

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showDetail" {
            
           
            let destCtrl = segue.destinationViewController as! VideoViewController
            
            let indexPath = sender as! NSIndexPath
            
            let myPhoto = fotos[indexPath.row]
            destCtrl.fotoToPlay = fotos[indexPath.row]
           
        }
    
    }

    // MARK: UICollectionViewDataSource
    // ToDo °°°°°°°°°°°°°°°°°°°°°°°°°° -> HeadLine of section

     override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
    
        let sectionLabel: FotogridCell = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: headerViewIdentifier, forIndexPath: indexPath) as! FotogridCell
        sectionLabel.sectionLabelSuperHead.text = sectionTitleLabels[indexPath.section].titleLabel
        print(sectionLabel.sectionLabelSuperHead.text)
        return sectionLabel
    
    }

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 2
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fotos.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("fotoCell", forIndexPath: indexPath) as! FotogridCell

        cell.backgroundColor = UIColor.grayColor()

        let currentImg = UIImage(named: fotos[indexPath.row].bildName)
        cell.imageView.image = currentImg
        
        let currentTitle = fotos[indexPath.row].title
        cell.imageLabel.text = currentTitle
/*
         @IBOutlet weak var imageView: UIImageView!
         @IBOutlet weak var imageLabel: UILabel!
         @IBOutlet weak var sectionLabel: UILabel!
*/
        return cell
    }
    
    // MARK: FlowLayout Delegate
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexpath: NSIndexPath) -> CGSize {
        
        var size = CGSize(width: 88, height: 88)
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
