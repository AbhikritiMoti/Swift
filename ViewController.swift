//
//  ViewController.swift
//  eComplaint
//
//  Created by Student on 25/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground(colorOne: .blue, colorTwo: .purple)
        signupO.layer.cornerRadius = 15
        
        self.title = "eComplaint App"
        // navigation bar background color
        navigationController?.navigationBar.barTintColor = .black
        
        // color of navigation bar items
        navigationController?.navigationBar.tintColor = .white
        
        // color of navigation bar title
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        // If you have a translucent navigation bar and you want it to be opaque
        navigationController?.navigationBar.isTranslucent = false
    }
    
    func setGradientBackground(colorOne: UIColor, colorTwo: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // Refresh the gradient frame
        if let gradientLayer = view.layer.sublayers?[0] as? CAGradientLayer {
            gradientLayer.frame = view.bounds
        }
    }
    

    @IBOutlet weak var usernameO: UITextField!
    
    @IBOutlet weak var emailO: UITextField!
    
    
    @IBOutlet weak var sexO: UISegmentedControl!
    
    @IBOutlet weak var pwdO: UITextField!
    
    var users: [User] = []
    
    
    @IBOutlet weak var signupO: UIButton!
    
    @IBAction func signupA(_ sender: Any) {
        guard let username = usernameO.text, !username.isEmpty,
            let email = emailO.text, !email.isEmpty,
            let password = pwdO.text, !password.isEmpty else {
                showAlert(message: "Please enter all details!")
                return
        }
        
        let sex: Sex
        switch sexO.selectedSegmentIndex {
        case 0:
            sex = .male
        case 1:
            sex = .female
        case 2:
            sex = .other
        default:
            sex = .other
        }

        
        let newUser = User(username: username, email: email, password: password, sex: sex)
        UserManager.shared.users.append(newUser)
        print("User signed up!")
    
        
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Missing Data", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Edit Fields", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
    @IBAction func alreadyA2(_ sender: Any) {
        performSegue(withIdentifier: "s2", sender: self)
    }
    @IBAction func alreadyA(_ sender: Any) {
        performSegue(withIdentifier: "s2", sender: self)

    }
}

