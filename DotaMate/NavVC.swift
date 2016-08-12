//
//  NavVC.swift
//  DotaMate
//
//  Created by Yerbol Kopzhassar on 18/07/2016.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

class NavVC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.barTintColor = UIColor(red:39/255, green:42/255, blue:47/255, alpha: 1)
        self.navigationBar.translucent = true
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle{
        return UIStatusBarStyle.LightContent
    }

}
