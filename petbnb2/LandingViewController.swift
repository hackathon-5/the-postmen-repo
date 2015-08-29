//
//  LandingViewController.swift
//  petbnb2
//
//  Created by Ryan Conklin on 8/29/15.
//  Copyright (c) 2015 postmen. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func viewListingBtn(sender: AnyObject) {
        
        performSegueWithIdentifier("viewListingBtnSegue", sender: self)
        
    }
    
    
    


}
