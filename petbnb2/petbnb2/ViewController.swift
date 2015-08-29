//
//  ViewController.swift
//  petbnb2
//
//  Created by Ryan Conklin on 8/28/15.
//  Copyright (c) 2015 postmen. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var infobar: UITextField!
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var createAccount: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnCreateAccount(sender: AnyObject) {
    
        performSegueWithIdentifier("createAccountSegue", sender: self)
    }
    
    @IBAction func btnLogin(sender: AnyObject) {
        
        
        let userName = txtUsername.text
        let password = txtPassword.text
        API().getUserType("user", password: password) { (userType: String!) in  //returns userType to use
//            Let vc = self.storyboard.instantiateViewControllerWithIdentifier("billInfo") as BillInfoViewController
//            self.presentViewController(vc, animated: true, completion: nil)
            print("/n/n/n" + userType)
            self.infobar.text = "Logged In!!"
            
            self.performSegueWithIdentifier("landingPageSegue", sender: self)

        }
                
    }
    
}

