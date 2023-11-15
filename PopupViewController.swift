//
//  PopupViewController.swift
//  eComplaint
//
//  Created by Student on 27/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit
var selectedComplaint: Complaints?

class PopupViewController: UIViewController {
  
    @IBOutlet weak var tvO: UITableView!
    
    
    override func viewDidLoad() {
      
        super.viewDidLoad()
        if let complaint = selectedComplaint {
            // Display the complaint data in the labels
            
            tvO.delegate = self
            tvO.dataSource = self
            
            tvO.backgroundColor = UIColor.blue
        }
    }
    
  

}

extension PopupViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyTableViewCell = tvO.dequeueReusableCell(withIdentifier: "detail", for: indexPath) as! MyTableViewCell
        if let complaint = selectedComplaint {
           
            cell.name.text = "Name = " + complaint.name
            cell.id.text = "Customer ID: = " + complaint.id
            cell.address.text = "Address = " + complaint.address
            cell.age.text = "Priority Level = " + String(complaint.age)
            cell.priority.text = "Age = " + complaint.priority
            cell.query.text = "Query = " + complaint.query
            cell.quick.text = "Quick Action required? = " +  String(complaint.isQuick)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }

}
