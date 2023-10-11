//
//  ViewController.swift
//  Intent_Login
//
//  Created by Student on 11/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBOutlet weak var usename: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func submit(_ sender: UIButton) {
        if let usernameText = usename.text, let passwordText = password.text
        {
            if usernameText == "abhi" && passwordText == "123" {
        
                pdata = "correct"
                performSegue(withIdentifier: "s1", sender: self)
                print("Correct")
            } else {
                pdata2 = "wrong"
                performSegue(withIdentifier: "s2", sender: self)
                print("Wrong")
            }
        }
    
    }
    
    
    @IBAction func play(_ sender: Any) {
        
        mylink = "https://www.youtube.com/watch?v=zWh3CShX_do"
        performSegue(withIdentifier: "s3", sender: self)
        print("played")
        
    }
    
}

