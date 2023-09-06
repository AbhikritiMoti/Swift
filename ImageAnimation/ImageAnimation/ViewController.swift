//
//  ViewController.swift
//  ImageAnimation
//
//  Created by Student on 06/09/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ImgView.image = UIImage(named: "images")
        view.backgroundColor = UIColor.black
        
        btn1O.layer.cornerRadius = 15
        
        btn2O.layer.cornerRadius = 15
        ImgView.layer.cornerRadius = 20
        ImgView.clipsToBounds = true
    }
    
    
    @IBOutlet weak var ImgView: UIImageView!
    var imgA : [UIImage] = [
        UIImage(named: "images")!,
        UIImage(named: "images2")!
    ]
    
    @IBAction func StartBtn(_ sender: Any) {
        ImgView.animationImages = imgA
        ImgView.animationDuration = 2
        ImgView.animationRepeatCount = 0
        ImgView.startAnimating()
        
    }
    
    @IBAction func StopBtn(_ sender: Any) {
        ImgView.stopAnimating()
    }
    
    
    
    @IBOutlet weak var btn2O: UIButton!
    @IBOutlet weak var btn1O: UIButton!
    
   
    
    @IBOutlet var BackgroundView: UIView!
    @IBAction func segA(_ sender: UISegmentedControl) {
        let title = sender.titleForSegment(at: sender.selectedSegmentIndex)
        
        switch title {
        case "Fire":
            BackgroundView.backgroundColor = UIColor(named: title!)
            
        case "Grass":
            BackgroundView.backgroundColor = UIColor(named: title!)
            
        case "Sky":
            BackgroundView.backgroundColor = UIColor(named: title!)
            
        default:
            break
        }
    }
    
    @IBOutlet weak var segO: UISegmentedControl!
    @IBAction func slideA(_ sender: UISlider) {
        let clr = CGFloat(sender.value)
        self.view.alpha = clr //change only alpha value
        
//        BackgroundView.backgroundColor = UIColor(
//            red: clr, green: 0, blue: 0, alpha: 1.0)
        
    }
    

    @IBAction func txtSliderA(_ sender: UISlider) {
        let fontSize = CGFloat(sender.value)
        textO.text = "\(fontSize)"
        textO.font = UIFont.systemFont(ofSize: fontSize)
    }
    
    @IBOutlet weak var alphaText: UILabel!
    @IBOutlet weak var sizeText: UILabel!
    
    @IBAction func switchA(_ sender: UISwitch) {
        if sender.isOn {
            BackgroundView.backgroundColor = UIColor.white
            alphaText.textColor = UIColor.black
            sizeText.textColor = UIColor.black
            
            btn1O.backgroundColor = UIColor.black
            btn2O.backgroundColor = UIColor.black
            
            btn1O.setTitleColor(UIColor.white, for: .normal)
            btn2O.setTitleColor(UIColor.white, for: .normal)
            darkmodeO.textColor = UIColor.black
            
            
        } else {
            BackgroundView.backgroundColor = UIColor.black
            alphaText.textColor = UIColor.white
            sizeText.textColor = UIColor.white
            
            btn1O.backgroundColor = UIColor.white
            btn2O.backgroundColor = UIColor.white
            
            btn1O.setTitleColor(UIColor.black, for: .normal)
            btn2O.setTitleColor(UIColor.black, for: .normal)
            darkmodeO.textColor = UIColor.white
            
        }
    }
    @IBOutlet weak var darkmodeO: UILabel!
    @IBOutlet weak var textO: UITextField!
    @IBAction func textA(_ sender: Any) {
    }
}

