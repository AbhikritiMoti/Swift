//
//  ViewController.swift
//  INCREMENT
//
//  Created by Student on 23/08/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.black
        btn1.layer.cornerRadius = 15
        btn2.layer.cornerRadius = 15
        
        
    }

    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var btn2: UIButton!
    @IBAction func minus(_ sender: Any) {
        
//        let n1 = Int(textField.text!)
//        let n2 : Int = n1! - 1
//        textField.text = String(n2)
        if let cNum = Int(textField.text ?? ""), cNum > 0 {
            let n2 : Int = cNum - 1
            textField.text = String(n2)
        } else {
            let alert = UIAlertController(title: "Warning", message: "Value must be greater than 0", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    @IBOutlet weak var btn1: UIButton!
    @IBAction func plus(_ sender: Any) {
//        let n1 = Int(textField.text!)
//        let n2 : Int = n1! + 1
//        textField.text = String(n2)
        
        if let cNum = Int(textField.text ?? ""), cNum > 0 {
            let n2 : Int = cNum - 1
            textField.text = String(n2)
        } else {
            let alert = UIAlertController(title: "Warning", message: "Value must be greater than 0", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
}

