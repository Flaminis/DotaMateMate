//
//  ItemChooseCollectionVC.swift
//  DotaMate
//
//  Created by Yerbol Kopzhassar on 14/07/2016.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import Kingfisher

private let reuseIdentifier = "cellOfItemWithLabel"
private let segueID = "backToGuideGiveItem"

protocol ItemChooseCollectionVCDelegate {
    func didChoseItem(item: Item)
    
}

class ItemChooseCollectionVC: UICollectionViewController {
    
    var delegate: ItemChooseCollectionVCDelegate?
    
    var itemFullList = [Item]()
    var chosenItem : Item!
    var indexPressed : Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.view.layoutSubviews()
    }

    // MARK: UICollectionViewDataSource
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        guard let flowLayout = self.collectionViewLayout as? UICollectionViewFlowLayout else {
            return
        }
        
        let bounds = self.view.bounds
        let ratio: CGFloat = 0.852
        let width: CGFloat = bounds.width / 4 - flowLayout.minimumInteritemSpacing * 3
        let height = width * ratio
        
        flowLayout.itemSize = CGSize(width: width, height: height)
    }

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

   
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        itemFullList.sortInPlace({ $0.cost < $1.cost })
        return itemFullList.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> ItemWithCellCVC {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! ItemWithCellCVC
        
        cell.itemName.text = itemFullList[indexPath.row].itemLocalizedName
        
        let item = itemFullList[indexPath.row]
        
        if let itemImageURL = item.itemImageURL {
            cell.itemImage.kf_setImageWithURL(NSURL(string: itemImageURL)!, optionsInfo: [.Transition(ImageTransition.Fade(0.6))])
        }
        
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        delegate?.didChoseItem(self.itemFullList[indexPath.row])
        navigationController?.popViewControllerAnimated(true)
    }
}
