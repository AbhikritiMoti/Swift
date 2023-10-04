//
//  ViewController.swift
//  intent-performSegue
//
//  Created by Student on 04/10/23.
//  Copyright © 2023 student.xyz. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btn1(_ sender: Any) {
        let d1 = text1O.text!
        pdata = d1
        performSegue(withIdentifier: "s1", sender: self)
        
    }
    
    @IBAction func btn2(_ sender: Any) {
        let d2 = text1O.text!
        pdata2 = d2
        performSegue(withIdentifier: "s2", sender: self)
    }
    
    
    @IBOutlet weak var text1O: UITextField!
    @IBAction func text1(_ sender: Any) {
    }
}

