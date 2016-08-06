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

class SignUpViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBAction private func hideKeyboardGesture(sender: UITapGestureRecognizer) {
          view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == self.emailField {
            self.passwordField.becomeFirstResponder()
        }
        if textField == self.passwordField {
            self.usernameField.becomeFirstResponder()
        }
        if textField == self.usernameField {
            self.steamIDField.becomeFirstResponder()
        }
        if textField == self.steamIDField {
            self.steamIDField.resignFirstResponder()

        }
        
        return true
    }
    

    @IBAction func fromEmailToNext(sender: UITextField) {
    textFieldShouldReturn(sender)
        
    
    }
    
    @IBAction func fromPasswordToNext(sender: UITextField) {
        textFieldShouldReturn(sender)
        
    }
    @IBAction func fromUsernameToNext(sender: UITextField) {
        textFieldShouldReturn(sender)
    }
    
    @IBAction func finishedAddingSteamID(sender: UITextField) {
        textFieldShouldReturn(sender)
    }

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var steamIDField: UITextField!
    
    @IBOutlet weak var avatarTap: UIImageView!
    
     var actIndicator: UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(0, 0, 150, 150)) as UIActivityIndicatorView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.attributedPlaceholder =
            NSAttributedString(string: "Email  *", attributes: [NSForegroundColorAttributeName : UIColor.grayColor()])
        passwordField.attributedPlaceholder =
            NSAttributedString(string: "Choose your password    *", attributes: [NSForegroundColorAttributeName : UIColor.grayColor()])
        usernameField.attributedPlaceholder =
            NSAttributedString(string: "Choose your username    *", attributes: [NSForegroundColorAttributeName : UIColor.grayColor()])
        steamIDField.attributedPlaceholder =
            NSAttributedString(string: "SteamID (Optional)", attributes: [NSForegroundColorAttributeName : UIColor.grayColor()])
        

        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(SignUpViewController.hideKeyboard))
        tapGesture.cancelsTouchesInView = true
        self.view.addGestureRecognizer(tapGesture)

        //tap for image
       
        avatarTap.layer.cornerRadius = avatarTap.frame.size.height/2
        avatarTap.clipsToBounds = true
        avatarTap.image = UIImage(named: "DotaMateLOgo")!

        let avaTap = UITapGestureRecognizer(target: self, action: #selector(SignUpViewController.loadImg(_:)))
        avaTap.numberOfTapsRequired = 1
        avatarTap.userInteractionEnabled = true
        avatarTap.addGestureRecognizer(avaTap)
        
        
        
        
        
        
        
        
        
               
        
        
    }
    
    
    //MARK: PickerImage
    func loadImg(recognizer: UITapGestureRecognizer)
    {
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.sourceType = .PhotoLibrary
        picker.allowsEditing = true
        
        presentViewController(picker, animated: true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        avatarTap.image = info[UIImagePickerControllerEditedImage] as? UIImage
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    func hideKeyboard() {
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   //MARK: Actions
    @IBAction func signUpButtonAction(sender: UIButton) {
        
        self.view.endEditing(true)
        
        
        let username = self.usernameField.text
        let password = self.passwordField.text
        let email = self.emailField.text
        let steamIDField = self.steamIDField.text
        
        if((username?.utf16.count<4) || (password?.utf16.count<4))
        {
           
            let alert = UIAlertController(title: "Invalid!", message:"Username and Password must be longer than 4 charachters", preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
            self.presentViewController(alert, animated: true){}
            
        }
        else {
            //spin it babe
            SwiftSpinner.show("Placing Wards!")
            
            //send data to server with related columns
            let newUser = PFUser()
            newUser.username = username
            newUser.password = password
            newUser.email = email?.lowercaseString
            newUser["SteamID"] = steamIDField?.lowercaseString
            
            //edited later on
            newUser["mmr"] = ""
            let avaData = UIImageJPEGRepresentation(avatarTap.image!, 0.5)
            let avaFile = PFFile(name: "ava.jpg", data: avaData!)
            newUser["avatar"] = avaFile
            newUser["upvotes"] = 0
            //saveonServer
            
            newUser.signUpInBackgroundWithBlock({ (succeed, error) in
               
                if ((error) != nil)
                {    SwiftSpinner.hide()
                    //error
                    let alert = UIAlertController(title: "Error!", message: error?.localizedDescription, preferredStyle: .Alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
                    self.presentViewController(alert, animated: true){}

                    
                }
                else {
                     SwiftSpinner.hide()
                  
               
                    
                    //remember logged user
                    NSUserDefaults.standardUserDefaults().setObject(newUser.username, forKey: "username")
                    NSUserDefaults.standardUserDefaults().synchronize()
                    
                    
                    //call login func from AppDelegate class & open up
                    let appDelegate : AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
                    appDelegate.login()
                    
                  
                }
            
            
            
            })
        }
       

        
        
        
        
        
        
        
        
        
    }

}
