//
//  resetPasswordVC.swift
//  DotaMate
//
//  Created by Yerbol Kopzhassar on 12/07/2016.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import Parse
class resetPasswordVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var resetButtonOutlet: UIButton!
    @IBOutlet weak var cancelButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //krasota
        emailTextField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSForegroundColorAttributeName : UIColor.grayColor()])
        resetButtonOutlet.layer.cornerRadius = 4
        cancelButtonOutlet.layer.cornerRadius = 4
    }
 
    @IBAction func cancelButton(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func resetButton(sender: UIButton) {
    
        //hide keyboard
        self.view.endEditing(true)
        
        if emailTextField.text!.isEmpty {
            let alert = UIAlertController(title: "Email field", message: "is empty", preferredStyle: UIAlertControllerStyle.Alert)
            let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(ok)
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
        PFUser.requestPasswordResetForEmailInBackground(emailTextField.text!) { (success:Bool, error:NSError?) in
        
            if success {
                let alert = UIAlertController(title: "Email for reseting password", message: "has been sent", preferredStyle: UIAlertControllerStyle.Alert)
                let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
                    self.dismissViewControllerAnimated(true, completion: nil)
                })

                alert.addAction(ok)
                self.presentViewController(alert, animated: true, completion: nil)
            
            } else {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertControllerStyle.Alert)
                let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil)
                alert.addAction(ok)
                self.presentViewController(alert, animated: true, completion: nil)
            }
        }
    }
}
