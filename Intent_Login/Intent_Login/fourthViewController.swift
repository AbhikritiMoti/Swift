//
//  fourthViewController.swift
//  Intent_Login
//
//  Created by Student on 11/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit
var mylink = String()

class fourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: mylink) {
            let request = URLRequest(url: url)
            webViewOutlet.loadRequest(request)
        }
    
        

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var webViewOutlet: UIWebView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
