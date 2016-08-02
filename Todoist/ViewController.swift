//
//  ViewController.swift
//  Todoist
//
//  Created by Mohammad Azam on 8/2/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var taskNameTextField :UITextField!
    
    var todoItems :[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.todoItems = [String]()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func addTaskButtonPressed() {
        
        let userDefaults = NSUserDefaults(suiteName: "group.azamsharp.TODOApp")
        
        self.todoItems.append(self.taskNameTextField.text!)
        
        userDefaults?.setObject(self.todoItems, forKey: "TodoItems")
        userDefaults?.synchronize()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

