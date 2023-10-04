//
//  thirdViewController.swift
//  intent-performSegue
//
//  Created by Student on 04/10/23.
//  Copyright © 2023 student.xyz. All rights reserved.
//

import UIKit
var pdata2 = String()


class thirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        text3.text="pdata is \(pdata2)"

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var text3: UITextField!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
