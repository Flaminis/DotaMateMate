//
//  MatchDetailsViewController.swift
//  DotaMate
//
//  Created by Philip DesJean on 9/11/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import Kingfisher

class MatchDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var match : DMMatch?
    var players = [Int:DMPlayerProfile]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let nib = UINib.init(nibName: "MatchDetailsPlayerTableViewCell", bundle: nil)
        
        tableView.registerNib(nib, forCellReuseIdentifier: "playerCell")
        
        AppService.sharedInstance.getMatch(2623709271, success: { (result) in
            
            let match = result!
            
            self.match = match
            
            self.getPlayerInfo()
        }) { (result) in
            
        }
        
    }
    
    func getPlayerInfo() {
        
        var count = 0
        
        for player in (match?.players)! {
            
            if player.accountId != nil {
            
                AppService.sharedInstance.getPlayerProfile(player.accountId!, success: { result in
                    
                    count += 1
                    self.players.updateValue(result!, forKey: player.accountId!)
                    
                    if count == 10 {
                        self.tableView.reloadData()
                    }
                    
                }, failure: { (result) in
                    
                })
            
            } else {
                
                count += 1
                
            }
        
        }
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if match == nil {
            return 0
        } else {
            return 10
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("playerCell", forIndexPath: indexPath) as! MatchDetailsPlayerTableViewCell
        
        let player = match?.players![indexPath.row]
        var name = ""
        
        if player?.personaname != nil {
            name = player!.personaname!
        } else {
            name = "Anon"
        }
        
        cell.playerNameLabel.text = name
        cell.levelLabel.text = String(player!.level!)
        cell.killsLabel.text = String(player!.kills!)
        cell.deathsLabel.text = String(player!.deaths!)
        cell.assistsLabel.text = String(player!.assists!)
        cell.lastHitLabel.text = String(player!.lastHits!)
        cell.goldLabel.text = String(player!.gold!)
        
        cell.levelLabel.textColor = UIColor.whiteColor()
        cell.playerNameLabel.textColor = UIColor.whiteColor()
        cell.deathsLabel.textColor = UIColor.whiteColor()
        cell.estimatedMMRLabel.textColor = UIColor.whiteColor()
        
        cell.killsLabel.textColor = UIColor.init(hexString: "BC0C0C")
        cell.assistsLabel.textColor = UIColor.init(hexString: "A1C04F")
        cell.lastHitLabel.textColor = UIColor.init(hexString: "F5A623")
        cell.goldLabel.textColor = UIColor.init(hexString: "F5A623")
        
        if player?.accountId != nil {
            
            let playerProfile = players[player!.accountId!]
            
            cell.estimatedMMRLabel.text = String(playerProfile!.mmrEstimate!.estimate!)
            cell.playerProfileImage.kf_setImageWithURL(NSURL(string: (playerProfile?.profile?.avatarmedium!)!))
            
        }
        
        let item0 = player?.item0
        let item1 = player?.item1
        let item2 = player?.item2
        let item3 = player?.item3
        let item4 = player?.item4
        let item5 = player?.item5
        
        if item0 > 0 {
            cell.item1.kf_setImageWithURL(NSURL(string: AppService.sharedInstance.items[item0!]!.imageUrl!))
        }
        if item1 > 0 {
            cell.item2.kf_setImageWithURL(NSURL(string: AppService.sharedInstance.items[item1!]!.imageUrl!))
        }
        if item2 > 0 {
            cell.item3.kf_setImageWithURL(NSURL(string: AppService.sharedInstance.items[item2!]!.imageUrl!))
        }
        if item3 > 0 {
            cell.item4.kf_setImageWithURL(NSURL(string: AppService.sharedInstance.items[item3!]!.imageUrl!))
        }
        if item4 > 0 {
            cell.item5.kf_setImageWithURL(NSURL(string: AppService.sharedInstance.items[item4!]!.imageUrl!))
        }
        if item5 > 0 {
            cell.item6.kf_setImageWithURL(NSURL(string: AppService.sharedInstance.items[item5!]!.imageUrl!))
        }
        
        let hero = AppService.sharedInstance.heroes[(player?.heroId!)!]
        
        cell.heroBackground.kf_setImageWithURL(NSURL(string: (hero?.largeUrl!)!))
        cell.heroBackground.alpha = 0.25
        cell.heroTiny.kf_setImageWithURL(NSURL(string: (hero?.smallUrl!)!))
        
        cell.cellView.backgroundColor = UIColor.blackColor()
        cell.cellView.layer.masksToBounds = true
        
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
