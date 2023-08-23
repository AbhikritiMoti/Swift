//
//  ViewController.swift
//  ChangeBGColor
//
//  Created by Student on 23/08/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBOutlet weak var btn1O: UIButton!
    
    
    @IBAction func btn1A(_ sender: Any) {
        view.backgroundColor = UIColor.red
        btn1O.tintColor = UIColor.red
        btn1O.backgroundColor = UIColor.white
    }
    
    
    @IBOutlet weak var btn2O: UIButton!
    
    
    let colors: [UIColor] = [UIColor.red, UIColor.blue, UIColor.green, UIColor.orange, UIColor.purple, UIColor.yellow]
    var current = 0
    
    @IBAction func btn2A(_ sender: Any) {
        current = (current + 1)
        
        view.backgroundColor = colors[current]
        btn2O.backgroundColor = colors[current+1]
        btn2O.tintColor = colors[current]
        
        if current == 4 {
            current = 0
        }
        
        
    }
}

