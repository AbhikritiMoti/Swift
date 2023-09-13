//
//  ViewController.swift
//  BookStore
//
//  Created by Student on 13/09/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        imgViewO.layer.cornerRadius = 20
        imgViewO.image = #imageLiteral(resourceName: "Image-4")
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var imgViewO: UIImageView!
    
    @IBOutlet weak var seg2O: UISegmentedControl!
    let A = 10
    let B = 12
    let C = 15
    let D = 10
    let E = 12
    let F = 15
    var price : Int
        = 1


    var DSA : [UIImage] = [#imageLiteral(resourceName: "Image-2"),#imageLiteral(resourceName: "Image-1")]
    var OS : [UIImage] = [#imageLiteral(resourceName: "Image"),#imageLiteral(resourceName: "Image-3")]
    var NETWORKING : [UIImage] = [#imageLiteral(resourceName: "Image-4"),#imageLiteral(resourceName: "Image-5")]
    
    @IBOutlet weak var seg1O: UISegmentedControl!
    @IBAction func seg1A(_ sender: UISegmentedControl) {
        let title = sender.titleForSegment(at: sender.selectedSegmentIndex)
        
        switch title {
        case "DSA":
            imgViewO.animationImages = DSA
            imgViewO.animationDuration = 2
            imgViewO.animationRepeatCount = 2
            imgViewO.startAnimating()
            
            let names : [String] = ["A","B"]
            seg2Title(names: names)
            
            
        case "OS":
            imgViewO.animationImages = OS
            imgViewO.animationDuration = 2
            imgViewO.animationRepeatCount = 2
            imgViewO.startAnimating()
            
            let names : [String] = ["D","F"]
            seg2Title(names: names)
            
        case "NETWORKING":
            imgViewO.animationImages = NETWORKING
            imgViewO.animationDuration = 2
            imgViewO.animationRepeatCount = 2
            imgViewO.startAnimating()
            
            let names : [String] = ["P","Q"]
            
            seg2Title(names: names)
        default:
            break
        }
        
    }
    func seg2Title(names: [String]) {
                for (index, name) in names.enumerated() {
            seg2O.setTitle(name, forSegmentAt: index)
        }
    }
    

    
    @IBOutlet weak var resO: UITextView!
    
    @IBOutlet weak var qty: UISlider!
    
    @IBOutlet weak var switchO: UISwitch!
    @IBOutlet weak var ageO: UISlider!
    @IBOutlet weak var nameO: UITextField!
    
    
    @IBAction func seg2A(_ sender: UISegmentedControl) {
        let author = sender.titleForSegment(at: sender.selectedSegmentIndex)
        
        let qty1 = String(qty.value)
        
        switch author {
        case "A":
            price = Int(qty1)! * A
        case "B":
            price = Int(qty1)! * B
        case "C":
            price = Int(qty1)! * C
        case "D":
            price = Int(qty1)! * D
        case "E":
            price = Int(qty1)! * E
        case "F":
            price = Int(qty1)! * F
            
        default:
            break
        }
    }
    
    @IBAction func submitBtnA(_ sender: Any) {
        let index = seg1O.selectedSegmentIndex
        let seg1 = seg1O.titleForSegment(at: index)
        
        let name = nameO.text
        let age = ageO.value
        let sex: String
        if switchO.isOn {
            sex = "Male"
            
        }else{
            sex = "Female"
        }
        
        let index2 = seg2O.selectedSegmentIndex
        let seg2 = seg2O.titleForSegment(at: index2)
        let qtyy = String(qty.value)
        
        
        
        
        
        let op = "Selected Title: \(seg1!) \nName: \(name!) \nAge: \(age) \nSex: \(sex) \nAuthor:\(seg2!) \nQTY: \(qtyy) \n price: \(price) "
        
        

        
        resO.text = op
        
        
    }
    
}

