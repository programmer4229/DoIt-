//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Gabriella Gonzalez on 2/14/17.
//  Copyright © 2017 Gaby G. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: AnyObject) {
        //create task from outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        //add new task to array in previous viewContr oller
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    
}
