//
//  hostListingViewController.swift
//  petbnb2
//
//  Created by Ryan Conklin on 8/29/15.
//  Copyright (c) 2015 postmen. All rights reserved.
//

import UIKit

class hostListingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func bookItNowBtn(sender: AnyObject) {
        
        performSegueWithIdentifier("checkoutSegue", sender: self)
    }
    
    
    

}
