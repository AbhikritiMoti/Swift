//
//  thirdViewController.swift
//  Intent_Login
//
//  Created by Student on 11/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit
var pdata2 = String()

class thirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        res2.text="credentials are \(pdata2)"

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var res2: UITextField!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
