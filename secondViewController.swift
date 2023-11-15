//
//  secondViewController.swift
//  eComplaint
//
//  Created by Student on 25/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setGradientBackground(colorOne: .blue, colorTwo: .purple)
        signinO.layer.cornerRadius = 15
        

        
        self.title = "eComplaint App"
        // Change the navigation bar background color
        navigationController?.navigationBar.barTintColor = .black // Change `.red` to whatever color you desire
        
        // Change the color of navigation bar items (back button, title, etc.)
        navigationController?.navigationBar.tintColor = .white // Change `.white` to whatever color you desire
        
        // Change the color of navigation bar title
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white] // Change `.white` to whatever color you desire
        
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

    @IBOutlet weak var unameO: UITextField!
    
    @IBOutlet weak var passwdO: UITextField!
    
    @IBOutlet weak var signinO: UIButton!
    
    @IBAction func signinO(_ sender: Any) {
        guard let username = unameO.text, !username.isEmpty,
            let password = passwdO.text, !password.isEmpty else {
                showAlert(message: "Please enter all details!")
                return
        }
        
        if let _ = UserManager.shared.users.first(where: { $0.username == username && $0.password == password }) {
            print("Successfully signed in!")
            let cname = unameO.text!
            pdata = cname
            performSegue(withIdentifier: "homeViewController", sender: self)
        } else {
            showAlert2(message: "Invalid username or password!")
            print("Invalid username or password!")
            // You can display an alert or some error UI here
        }
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Missing Data", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Edit Fields", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    func showAlert2(message: String) {
        let alert = UIAlertController(title: "Wrong Credentials!", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    
    @IBAction func dontA(_ sender: Any) {
        performSegue(withIdentifier: "s3", sender: self)
    }
    
    @IBAction func dontA2(_ sender: Any) {
        performSegue(withIdentifier: "s3", sender: self)
    }
    
    @IBAction func forgotA(_ sender: Any) {
        
        guard let username = unameO.text, !username.isEmpty else {
            showMessage("Please enter your username to reset password.")
            return
        }
        
        
        showMessage("A password reset link has been sent to the email associated with \(username).")
        
    }
    func showMessage(_ message: String) {
        messageLabel.text = message
        messageLabel.isHidden = false
    }
    
    @IBOutlet weak var messageLabel: UITextField!
}
