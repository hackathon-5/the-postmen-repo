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
    
    @IBOutlet weak var failedLoginTextLabel: UILabel!
    
    @IBOutlet weak var createAccount: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnCreateAccount(sender: AnyObject) {
        API().createUser("userName", password: "passWord", userType: "guest"){ (error : NSError!) in
            if error != nil{
                print(error.localizedFailureReason)
            }
            }
        performSegueWithIdentifier("createAccountSegue", sender: self)
    }
    
    @IBAction func btnLogin(sender: AnyObject) {
        let userName = txtUsername.text
        let password = txtPassword.text
        API().getUserType("user", password: password) { (userType: String!) in  //returns userType to use
            if userType != "guest" && userType != "host"{
                self.failedLoginTextLabel.text = "Wrong Username and/or Password. Please try again."
            } else if userType == "guest"{
                self.infobar.text = "Logged In!!"
                self.performSegueWithIdentifier("landingPageSegue", sender: self)
            } else {
                self.infobar.text = "Logged In!!"
                self.performSegueWithIdentifier("hostListingFromLoginSegue", sender: self)
            }
        }
                
    }
    
}

