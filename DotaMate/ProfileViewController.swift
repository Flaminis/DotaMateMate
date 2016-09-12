
//
//  profileVC.swift
//  DotaMate
//
//  Created by Yerbol Kopzhassar on 12/07/2016.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import Parse
import NSDate_TimeAgo
import SCLAlertView
import Kingfisher

private let reuseIdentifier = "Cell"

class profileVC: UICollectionViewController {
    
    var refresher : UIRefreshControl!
    
    var guideList:[Guide] = []
    var guideSkip = 0
    var upvotes = 0
    var isLoading = false
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        AppService.sharedInstance.getSearchResults("Graphs", success: { (result) in
            
        }) { (result) in
            
        }

        collectionView?.backgroundColor = .whiteColor()
        
        //title on top
        self.navigationItem.title = "DotaMate"//PFUser.currentUser()?.username?.uppercaseString
        
        loadGuides()
        
        //pull to refresh
        refresher = UIRefreshControl()
        refresher.addTarget(self, action: #selector(self.refresh), forControlEvents: UIControlEvents.ValueChanged)
        collectionView?.addSubview(refresher)
       
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.refresh), name: "liked", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.refresh), name: "unliked", object: nil)

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        guard let flowLayout = self.collectionViewLayout as? UICollectionViewFlowLayout else {
            return
        }
        
        let bounds = self.view.bounds
        let ratio: CGFloat = 0.5
        let width: CGFloat = bounds.width  - flowLayout.minimumInteritemSpacing*0
        let height = width * ratio
        
        flowLayout.itemSize = CGSize(width: width, height: height)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        self.collectionView?.reloadData()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let tracker = GAI.sharedInstance().defaultTracker
        tracker.set(kGAIScreenName, value: "Feed")
        
        let builder = GAIDictionaryBuilder.createScreenView()
        tracker.send(builder.build() as [NSObject : AnyObject])
    }
    
    //refresh on pull
    func refresh() {
        loadGuides()
        refresher.endRefreshing()
    }
    
    func loadGuides() {
        Guide.fetchGuides(0, limit: 10) { (guides, error) in
            
            guard let guides = guides else {return}
            self.guideList.removeAll(keepCapacity: false)
            self.guideList = guides
            self.collectionView?.reloadData()
        }
    }
    
    func loadMoreGuides() {
        
        if isLoading {
            return
        }
        
        isLoading = true
        Guide.fetchGuides(guideList.count, limit: 10) { (guides, error) in
            guard let guides = guides else {return}
            self.guideList += guides
            self.collectionView?.reloadData()
            self.isLoading = false
        }
        
    }
   
    //header config
    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: "Header", forIndexPath: indexPath)  as! headerForProfileV
       
        loadUpVotes()
        
        header.numberOfUpVotesLabel.text="\(self.upvotes)"
        header.usernameLabel.text = PFUser.currentUser()?.username
        
        let imageData = User.currentUser()?.avatar
    
            if (imageData != nil) {
                
                imageData?.getDataInBackgroundWithBlock({ (data, error) in
                
                if (data != nil) {
                    let image = UIImage(data: data!)
                    if (image != nil) {
                        header.profileImage.image = image }
                        header.profileImage.layer.cornerRadius = header.profileImage.frame.size.height/1.31
                        header.profileImage.clipsToBounds = true
                    }
                })
            }
        
         return header
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return guideList.count
    }

    
    //cell config
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! GuideCVC
        let guide = guideList[indexPath.row]
        
        let imageName = "\(guide.title)"
        var image = UIImage(named: imageName)
        let jpegImage = UIImageJPEGRepresentation(image!, 1)
 
        image = (UIImage(data: jpegImage!))
        
        cell.heroIcon.image = image
        cell.guidePosition.text = guide.heroGuidePosition
        cell.authorName.text = guide.username
        cell.heroName.text = guide.heroGuideName
        cell.likeNumber.text = "\(guide.guideLikes)"
        cell.numberOfViews.text = "\(guide.guideNumOfViews)"
        cell.dateCreated.text = guide.createdAt?.dateTimeAgo()
        cell.deleteButton.hidden = true
        
        if ((cell.authorName.text! == User.currentUser()?.username!) || (User.currentUser()?.username! == "DotaMate")) && (User.currentUser()?.username! != "Guest") {
            cell.deleteButton.hidden = false
        }
        
        cell.outletForLike.selected = guide.userLiked
        cell.delegate = self
        
        return cell
    }
    
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        let contentHeight = scrollView.contentSize.height
        if offsetY > contentHeight - scrollView.frame.size.height {
            loadMoreGuides()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier=="observe"  {
            
            let destVC = segue.destinationViewController as! GuideObserveVC
            
            if let cell = sender as? GuideCVC {
                destVC.backGroundImageProsto = cell.heroIcon.image
                
                if let indexPath = collectionView?.indexPathForCell(cell){
                    destVC.guideShown = guideList[indexPath.row]
                }
            }
        }
    }
    
    func loadUpVotes(){
        let query = PFQuery(className:"Guide")
        let text = "\((PFUser.currentUser()?.username!)!)"
        query.whereKey("username", equalTo: text)
        var counter = 0
        
        query.findObjectsInBackgroundWithBlock {
            (objects: [PFObject]?, error: NSError?) -> Void in
            
            if error == nil {
                // The find succeeded.
                print("Successfully retrieved \(objects!.count) scores.")
                // Do something with the found objects
                if let objects = objects {
                    for object in objects {
                        counter+=object.objectForKey("guideLikes") as! Int
                    }
                }
                self.upvotes=counter
            } else {
                // Log details of the failure
                print("Error: \(error!) \(error!.userInfo)")
            }
        }
    }
}

extension profileVC: GuideCVCDelegate {
    
    func deleteButtonDidPress(cell: GuideCVC, button: UIButton) {
        
        let indexPath = collectionView?.indexPathForCell(cell)
        let guide = guideList[(indexPath?.row)!]
       
        let appearance = SCLAlertView.SCLAppearance(
            kTitleFont: UIFont(name: "HelveticaNeue", size: 20)!,
            kTextFont: UIFont(name: "HelveticaNeue", size: 14)!,
            kButtonFont: UIFont(name: "HelveticaNeue-Bold", size: 14)!,
            showCloseButton: false
        )
        
        let alertView = SCLAlertView(appearance: appearance)
        
        alertView.addButton("Delete") {
                self.deleteGuide(guide)
        }
        
        alertView.addButton("Cancel") {
            alertView.hideView()
        }
        
        alertView.showError("Delete Guide?", subTitle: "Are you sure you want to delete your guide?", colorStyle: 0x982D1D, colorTextButton: 0xFFFFFF)
    }
    
    func deleteGuide(guide: Guide){
        let currentGuide = guide
        currentGuide.deleteEventually()
        loadGuides()
        self.collectionView!.reloadData()
    }
    
    func likeButtonDidPress(cell: GuideCVC, button: UIButton) {
        if (((User.currentUser()?.username!)! != "Guest")) {
            
            let indexPath = collectionView?.indexPathForCell(cell)
            let guide = guideList[indexPath!.row]
        
            if guide.userLiked {
                guide.unlike(User.currentUser()!){ _ in}
                self.collectionView?.reloadData()

            } else {
                guide.like { _ in
                    dispatch_async(dispatch_get_main_queue()) {
                        self.collectionView?.reloadData()
                    }
                }
            }
        
            collectionView?.reloadData()
        
        } else {
            
            let appearance = SCLAlertView.SCLAppearance(
                kTitleFont: UIFont(name: "HelveticaNeue", size: 20)!,
                kTextFont: UIFont(name: "HelveticaNeue", size: 14)!,
                kButtonFont: UIFont(name: "HelveticaNeue-Bold", size: 14)!,
                showCloseButton: true
            )
            
            let alertView = SCLAlertView(appearance: appearance)
        
            alertView.showSuccess("Login as User :)", subTitle: "You have to login as User in order to like the Guides", colorStyle: 0x982D1D, colorTextButton: 0xFFFFFF)
        }
    }
}
