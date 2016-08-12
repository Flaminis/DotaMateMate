//
//  ViewController.swift
//  SpotifyVideoBackground
//
//  Created by Allen on 16/1/16.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit
import Parse

class WelcomeViewController: VideoSplashViewController {
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var joinAsGuestButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVideoBackground()
        
        loginButton.layer.cornerRadius = 4
        signupButton.layer.cornerRadius = 4
        joinAsGuestButton.layer.cornerRadius = 4
    }

    @IBAction func joinAsGuiestAction(sender: UIButton) {
        PFUser.logInWithUsernameInBackground("Guest", password: "GuestPassword", block: { (user, error) in
            if ((user) != nil) {
                //remember user
                NSUserDefaults.standardUserDefaults().setObject(user!.username, forKey: "username")
                NSUserDefaults.standardUserDefaults().synchronize()
                
                //call login func
                let appDelegate : AppDelegate = UIApplication.sharedApplication().delegate as!AppDelegate
                appDelegate.login()
                
            }})
    }
    
    //MARK: VideoOnBackGround
    
    func setupVideoBackground() {
        
        let url = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("moments", ofType: "mp4")!)
        
        videoFrame = view.frame
        fillMode = .ResizeAspectFill
        alwaysRepeat = true
        sound = false
        startTime = 2.0
        alpha = 0.8
        
        contentURL = url
        view.userInteractionEnabled = true
        
    }

    @IBAction func logInAction(sender: UIButton) {
        print("button works")
        self.performSegueWithIdentifier("loginSegueID", sender: self)
    }
    
    @IBAction func signUpAction(sender: UIButton) {
        self.performSegueWithIdentifier("signUpSegueID", sender: self)
    }
}

