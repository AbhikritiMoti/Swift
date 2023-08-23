//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Student on 23/08/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addO.layer.cornerRadius = 15
        subO.layer.cornerRadius = 15
        mulO.layer.cornerRadius = 15
        divO.layer.cornerRadius = 15
    }

    @IBOutlet weak var addO: UIButton!
    
    @IBOutlet weak var subO: UIButton!
    
    @IBOutlet weak var mulO: UIButton!

    
    @IBOutlet weak var divO: UIButton!
    @IBOutlet weak var textV1: UITextField!
    
    @IBOutlet weak var textV2: UITextField!
    
    
    @IBAction func btn1(_ sender: Any) {
        let n1 = Int(textV1.text!)
        let n2 = Int(textV2.text!)
        let res = n1! + n2!
        let op = " \(n1!) + \(n2!) = \(res)"
        view1.text = op
        // Assign the new color to the button's background color
        view1.textColor = UIColor.red
    }
    
    @IBAction func btn2(_ sender: Any) {
        let n1 = Int(textV1.text!)
        let n2 = Int(textV2.text!)
        let res = n1! - n2!
        let op = " \(n1!) - \(n2!) = \(res)"
        view1.text = op
        // Assign the new color to the button's background color
        view1.textColor = UIColor.red
    }
    
    @IBAction func btn3(_ sender: Any) {
        let n1 = Int(textV1.text!)
        let n2 = Int(textV2.text!)
        let res = n1! * n2!
        let op = " \(n1!) * \(n2!) = \(res)"
        view1.text = op
        // Assign the new color to the button's background color
        view1.textColor = UIColor.red
    }
    
    @IBAction func btn4(_ sender: Any) {
        let n1 = Int(textV1.text!)
        let n2 = Int(textV2.text!)
        let res = n1! / n2!
        let op = "\(n1!) / \(n2!) = \(res)"
        view1.text = op
        let newColor = UIColor.blue
        
        // Assign the new color to the button's background color
        view1.textColor = UIColor.red
    }
    
    @IBOutlet weak var view1: UITextView!
}

