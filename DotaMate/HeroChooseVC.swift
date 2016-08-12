//
//  HeroesViewController.swift
//  DotaLobby

//
//  Created by Yerbol Kopzhassar on 12/07/2016.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import Alamofire
import SwiftSpinner
import Kingfisher
import Neon

class HeroChooseVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UISearchBarDelegate {
    
    var refresher : UIRefreshControl!
    var heroes = [Hero]() {
        didSet {
            dispatch_async(dispatch_get_main_queue()) {
                self.heroCollectionView.reloadData()
            }
        }
    }
    
    var heroesFiltered = [Hero]() {
        didSet {
            dispatch_async(dispatch_get_main_queue()) {
                self.heroCollectionView.reloadData()
            }
        }
    }
    
    var contentList: [Hero] {
        return searchBarActive ? heroesFiltered : heroes
    }
    
    var searchBarActive: Bool = false
    var searchBarBoundsY: CGFloat?
    var searchBar: UISearchBar?
    
    let reuseIdentifier = "heroCollectionCell"
    
    @IBOutlet weak var heroCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        downloadHeroesFromAPI()
        
        //tap
        let tapGesture = UILongPressGestureRecognizer(target: self, action: #selector(self.hideKeyboard))
        tapGesture.cancelsTouchesInView = true
        view.addGestureRecognizer(tapGesture)
        
        // pull to refresh
        refresher = UIRefreshControl()
        refresher.addTarget(self, action: #selector(profileVC.refresh), forControlEvents: UIControlEvents.ValueChanged)
        heroCollectionView?.addSubview(refresher)
        
        SwiftSpinner.hide()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        addSearchBar()
        self.view.layoutSubviews()
    }
    
    func appMovedToBackground(){
        let cache = KingfisherManager.sharedManager.cache
        cache.calculateDiskCacheSizeWithCompletionHandler { (size) -> () in
            print("disk size in bytes: \(size/1024/1204)mb")
        }
        
        cache.clearMemoryCache()
        cache.clearDiskCache()
        cache.calculateDiskCacheSizeWithCompletionHandler { (size) -> () in
            print("disk size in bytes: \(size/1024/1024)mb")
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        guard let flowLayout = heroCollectionView.collectionViewLayout as? UICollectionViewFlowLayout else {
            return
        }
        
        let bounds = heroCollectionView.bounds
        let ratio: CGFloat = 0.561
        let width: CGFloat = bounds.width / 3 - flowLayout.minimumInteritemSpacing * 2
        let height = width * ratio + 20
        
        flowLayout.itemSize = CGSize(width: width, height: height)
    }
    
    //refresh on pull
    func refresh() {
        heroCollectionView?.reloadData()
        refresher.endRefreshing()
    }
    
    func hideKeyboard() {
        self.view.endEditing(true)
    }
    
    // MARK: CollectionView implementing

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contentList.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! HeroChooseCVC
        
        let hero = contentList[indexPath.row]
        
        cell.hero = hero
        cell.heroNameLabel.text = hero.heroLocalizedName
        
        if let herolargeImageURL = hero.largeImageURL {
            cell.heroIconImage.kf_setImageWithURL(NSURL(string: herolargeImageURL)!,  optionsInfo: [.Transition(ImageTransition.Fade(0.6))])
        }
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destVC = segue.destinationViewController as! GuideMakerViewController
        if let cell = sender as? HeroChooseCVC {
            destVC.hero = cell.hero
        }
    
    }
    
    func downloadHeroesFromAPI() {
        
        Alamofire.request(.GET, "http://api.steampowered.com/IEconDOTA2_570/GetHeroes/v0001/?key=A041063D0F9386FD666F26E04598C9D0",parameters: ["language":"en-us"],encoding: .URL).validate().responseJSON(){ response in
            
            if !response.result.isSuccess {
                print("Error while fetching Heroes list : \(response.result.error)")
                return
            }
            
            guard let value = response.result.value as? NSDictionary else{
                print("Error no value found")
                return
            }
            guard let result = value["result"] as? NSDictionary else {
                print("Error no result found")
                return
            }
            guard let apiHeroes = result["heroes"] as? [NSDictionary] else{
                print("Error no heroes found")
                return
            }
            
            self.heroes = apiHeroes.flatMap {
                
                    guard let id = $0["id"] as? Int,
                    let localizedName = $0["localized_name"] as? String,
                    let name = $0["name"] as? String else { return nil }
                    let imageHeroName = name.stringByReplacingOccurrencesOfString("npc_dota_hero_", withString: "")
                    let largeURL = "http://cdn.dota2.com/apps/dota2/images/heroes/\(imageHeroName)_lg.png"
                    let smallURL = "http://media.steampowered.com/apps/dota2/images/heroes/\(imageHeroName)_sb.png"
                    let portraitURL = "http://cdn.dota2.com/apps/dota2/images/heroes/\(imageHeroName)_vert.jpg"
                    
                    return Hero(heroDotaName: name.stringByReplacingOccurrencesOfString("npc_dota_hero_", withString: ""), heroLocalizedName: localizedName, heroID: id,largeImageURL: largeURL,smallImageURL: smallURL,portraitImageURL: portraitURL)
                }
            .sort { $0.heroLocalizedName < $1.heroLocalizedName }
        }
    }
    
    
    //TODO: Refactor to a different class so it can be reusuable in the future if need be and free up space in the VC
    
    // MARK: SearchBar Delegate method
    
    func filterContentForSearchText(searchText:String) {
        heroesFiltered = heroes.filter {
            $0.heroLocalizedName.containsString(searchText)
        }
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        searchBarActive = !searchBarActive
        
        if searchText.characters.count > 0 {
            filterContentForSearchText(searchText)
        }
    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        searchBarActive = false
        searchBar.resignFirstResponder()
        searchBar.text = ""
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchBarActive = true
        view.endEditing(true)
    }
    
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(true, animated: true)
    }
    
    func searchBarTextDidEndEditing(searchBar: UISearchBar) {
        searchBarActive = false
        searchBar.setShowsCancelButton(false, animated: false)
    }
    
    // MARK: Add Search Bar
    func addSearchBar() {
        
        if searchBar != nil { return }
        
        searchBarBoundsY = navigationController!.navigationBar.frame.size.height + UIApplication.sharedApplication().statusBarFrame.size.height
        searchBar = UISearchBar()
        searchBar?.searchBarStyle = .Default
        searchBar?.tintColor = .whiteColor()
        searchBar?.barTintColor = .whiteColor()
        searchBar?.placeholder = "Search here"
        searchBar?.delegate = self
      
        navigationItem.titleView = searchBar
        searchBar?.anchorInCenter(width: 300, height: 44)
    }
}

