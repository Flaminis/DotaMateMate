//
//  SignUpViewController.swift
//  DotaMate
//
//  Created by Yerbol Kopzhassar on 08/07/2016.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import Parse
import SwiftSpinner

class LoginViewController: UIViewController {
    
   

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
   
    var actIndicator: UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(0, 0, 150, 150)) as UIActivityIndicatorView
    
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        userNameTextField.attributedPlaceholder =
            NSAttributedString(string: "Email", attributes: [NSForegroundColorAttributeName : UIColor.grayColor()])
        passwordTextField.attributedPlaceholder =
            NSAttributedString(string: "Password", attributes: [NSForegroundColorAttributeName : UIColor.grayColor()])
       
       
    
    
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(SignUpViewController.hideKeyboard))
        tapGesture.cancelsTouchesInView = true
        self.view.addGestureRecognizer(tapGesture)
        
        view.addSubview(self.actIndicator)
        
        
        
    }
    
    func hideKeyboard() {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    
    
    @IBAction func goBackAction(sender: UIButton) {
    }
    
    
    
    
    //MARK: - LoginAction
    
    
    
    
    @IBAction func loginWithFaceBookAction(sender: UIButton) {
        
    }
    
    
    
    
    
    var canlogin = false
    @IBAction func loginWithDataAction(sender: UIButton) {
        
        
        self.view.endEditing(true)
        
        var username = self.userNameTextField.text
        let password = self.passwordTextField.text
        
        if((username?.utf16.count<4) || (password?.utf16.count<4))
        {
           
            let alert = UIAlertController(title: "Invalid!", message:"Email and Password must be longer than 6 charachters", preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
            self.presentViewController(alert, animated: true){}
        
        } else {
          //  self.actIndicator.startAnimating()
            SwiftSpinner.show("Ganking Mid")
           
           
            
            let emailToUNM = PFQuery (className: "_User")
            emailToUNM.whereKey("email", equalTo: "\(username!)")
            emailToUNM.getFirstObjectInBackgroundWithBlock({ (user, error) in
                if error==nil {
                    username = String((user?.valueForKey("username"))!)
                    self.canlogin = true
                    
                    PFUser.logInWithUsernameInBackground(username!, password: password!, block: { (user, error) in
                        SwiftSpinner.hide()
                        if ((user) != nil)
                        {
                            
                            //remember user
                            NSUserDefaults.standardUserDefaults().setObject(user!.username, forKey: "username")
                            NSUserDefaults.standardUserDefaults().synchronize()
                            
                            //call login func
                            let appDelegate : AppDelegate = UIApplication.sharedApplication().delegate as!AppDelegate
                            appDelegate.login()
                            
                            
                        }
                        else {
                            var alert:UIAlertController
                            if (error?.code != 101){
                           alert = UIAlertController(title: "Error!", message: error!.localizedDescription, preferredStyle: .Alert)
                            }
                            else{
                                alert = UIAlertController(title: "Login Failed", message:"Unable to login, either email or password is incorrect. Have you signed up for a DotaMate account?", preferredStyle: .Alert)
                            }
                            alert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
                            self.presentViewController(alert, animated: true){}
                            
                            
                        }
                        
                    })
                }
                
            
                
                else{
                    SwiftSpinner.hide()
                    let   alert = UIAlertController(title: "Login Failed", message:"Unable to login, either email or password is incorrect. Have you signed up for a DotaMate account?", preferredStyle: .Alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
                    self.presentViewController(alert, animated: true){}
                    
                }
                

                
            })
            
           
   
       
        }
}
}