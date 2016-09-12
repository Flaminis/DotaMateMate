//
//  UserSearchTableViewController.swift
//  DotaMate
//
//  Created by Philip DesJean on 9/5/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

class UserSearchTableViewController: UITableViewController {

    var users = [ApiUser]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getUsers()
        
    }
    
    func getUsers() {
        
        users.removeAll()
    
        AppService.sharedInstance.getSearchResults("Graphs", success: { (result) in
            
            self.users = result!
            
            self.tableView.reloadData()
            
        }) { (result) in
            
            print("shit")
            
        }
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("userSearchCell", forIndexPath: indexPath) as! UserSearchTableViewCell
        
        let user = users[indexPath.row]
        
        cell.displayNameLabel.text = user.displayName!
        
        AppService.sharedInstance.getImage(user.avatar!, imageView: cell.avatarImageView)
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
