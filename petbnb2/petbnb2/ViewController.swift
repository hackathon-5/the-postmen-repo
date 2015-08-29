//
//  ViewController.swift
//  petbnb2
//
//  Created by Ryan Conklin on 8/28/15.
//  Copyright (c) 2015 postmen. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var infobar: UITextField!
    
    @IBOutlet weak var Label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func btnLogin(sender: AnyObject) {
        
        infobar.text = "Logged In!!"
        
    }
    
    

}

