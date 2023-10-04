//
//  ViewController.swift
//  Intent-prepare
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


    
    @IBOutlet weak var textF: UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var v1 : secondViewController =
            segue.destination as! secondViewController
        
        var d1 = textF.text!
        v1.pdata = d1
    }
    
}

