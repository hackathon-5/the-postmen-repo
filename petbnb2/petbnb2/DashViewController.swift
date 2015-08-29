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
//        var leftSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        var rightSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
//
//        leftSwipe.direction = .Left
        rightSwipe.direction = .Right
//
//        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)

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
            API().createUser(accountEmail.text, password: accountPassword.text, userType: userType){ (responseString: String!, error : NSError!) in
                print(responseString)
                if error != nil{
                    print(error.localizedFailureReason)
                }


            }
            if userType == "guest"{
                self.performSegueWithIdentifier("createToLandingSegue", sender: self)
            } else {
                self.performSegueWithIdentifier("createToHostListingSegue", sender: self)
            }
        }

    }

    
    
    func handleSwipes(sender:UISwipeGestureRecognizer) {
//        if (sender.direction == .Left) {
        
//        }
        
        if (sender.direction == .Right) {
          self.performSegueWithIdentifier("createToLoginSegue", sender: self)  
        }
    }
    
    
    
    
}
