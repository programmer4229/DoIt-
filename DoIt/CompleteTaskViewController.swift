//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Gabriella Gonzalez on 2/22/17.
//  Copyright © 2017 Gaby G. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    
    var task = Task()
    var previousVC = TasksViewController()
     
    @IBOutlet weak var taskLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        }else{
            taskLabel .text = task.name
        }
 
    }

    @IBAction func completeTapped(_ sender: AnyObject) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)

    }

}
