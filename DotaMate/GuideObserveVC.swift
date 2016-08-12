//
//  GuideObserveVC.swift
//  DotaMate
//
//  Created by Yerbol Kopzhassar on 18/07/2016.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import Parse
import Kingfisher
import SwiftSpinner


class GuideObserveVC: UIViewController,UITableViewDataSource,UITableViewDelegate,UICollectionViewDataSource, UICollectionViewDelegate,UITextViewDelegate {
    
    private let reuseIdentifier = "SpellObserveCell" //table
    private let reuseID = "ItemObserveCell" // collection
   
    @IBOutlet weak var spellRowTableView: UITableView!
    
    @IBOutlet weak var itemProgressionCollectionView: UICollectionView!
    
    @IBOutlet weak var backGroundImageView: UIImageView!
    @IBOutlet weak var guideDescriptionTV: UITextView!
    
    @IBOutlet weak var heroNameLabel: UILabel!
    
    var guideShown: Guide?
    var backGroundImageProsto: UIImage?
    
    var spellsFromParse = ""
    var SpellArray = [String]()
    var itemsFromParse = ""
    var itemArray = [String]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.darkGrayColor()
        
        heroNameLabel.text = guideShown?.heroGuidePosition
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
        if guideShown != nil {
            
            backGroundImageView.image = backGroundImageProsto
       
            self.spellsFromParse = (guideShown?.skillBuild)!
            self.SpellArray = self.spellsFromParse.characters.split{$0 == "+"}.map(String.init)
            self.itemsFromParse = (guideShown?.items)!
            self.itemArray = self.itemsFromParse.characters.split{$0 == "+"}.map(String.init)
           
            itemProgressionCollectionView.reloadData()
            spellRowTableView.reloadData()
            SwiftSpinner.hide()
        }
       
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let tracker = GAI.sharedInstance().defaultTracker
        tracker.set(kGAIScreenName, value: "Guide")
        
        let builder = GAIDictionaryBuilder.createScreenView()
        tracker.send(builder.build() as [NSObject : AnyObject])
    }
    
    override func viewDidLayoutSubviews() {
        //
        //This can be refactored leaving for now
        //
        super.viewDidLayoutSubviews()
        
        guard let flowLayout = itemProgressionCollectionView.collectionViewLayout as? UICollectionViewFlowLayout else {
            return
        }
        
        let bounds = itemProgressionCollectionView.bounds
        let ratio: CGFloat = 0.46
        let width: CGFloat = bounds.width / 3 - flowLayout.minimumInteritemSpacing * 2
        let height = width * ratio + 20
        
        flowLayout.itemSize = CGSize(width: width, height: height)
    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(true)
        incrementVoteCount()
        guideDescriptionTV.text = guideShown?.guideDescription
        self.guideDescriptionTV.setContentOffset(CGPointMake(0,0), animated: true)
        
    }
    
    
    func incrementVoteCount() {
        guideShown?.guideNumOfViews += 1
        guideShown?.saveInBackground()
    }
    
    ///////
    //MARK: TableViewDelegates
    ///////
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SpellArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier) as! GuideObserveSpellTVC
        
        cell.spellHeroLevel.text = String(indexPath.row+1)
        
        let spellImageUrl = NSURL(string:"http://media.steampowered.com/apps/dota2/images/abilities/\(SpellArray[indexPath.row])_hp2.png")
        cell.spellPicture.kf_setImageWithURL(spellImageUrl!)
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 65
    }
    
    //MARK: CVC init
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.itemArray.count
    }
    
    
    //cell config
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier((reuseID), forIndexPath: indexPath) as! GuideObserveItemCVC
        
        let item = itemArray[indexPath.row]
    
        cell.itemIcon.kf_setImageWithURL(NSURL(string: item)!)
        cell.layoutSubviews()
        
        return cell
    }
}
