//
//  DashViewController.swift
//  
//
//  Created by Ryan Conklin on 8/28/15.
//
//

import UIKit

//This is the create user page
class DashViewController: UIViewController {
    
    
    @IBOutlet weak var accountEmail: UITextField!
    
    @IBOutlet weak var accountPassword: UITextField!
    
    @IBOutlet weak var formNotFilledLable: UILabel!

    @IBOutlet weak var accountTypeSwitch: UISwitch!
    
    override func viewDidLoad() {
        formNotFilledLable.text = ""
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func signUpBtn(sender: AnyObject) {
        if accountEmail.text == "" || accountPassword.text == "" {
            self.formNotFilledLable.text = "Please fill out username and password."
        } else {
            var userType : String!
            if accountTypeSwitch.on {
                userType = "guest"
            } else {
                userType = "host"
            }
            API().createUser(accountEmail.text, password: accountPassword.text, userType: userType){ (error : NSError!) in
                if error != nil{
                    print(error.localizedFailureReason)
                }
            }
        }

    }

    
    
    
    
    
    
}
