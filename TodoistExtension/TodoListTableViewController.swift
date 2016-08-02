//
//  TodoListTableViewController.swift
//  Todoist
//
//  Created by Mohammad Azam on 8/2/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

import UIKit
import NotificationCenter

class TodoListTableViewController: UITableViewController, NCWidgetProviding {

    var items :[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.preferredContentSize = CGSize(width: 0, height: 250)
    
        self.items = [String]()
        
        print(items)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)) {
       
        
        let userDefaults = NSUserDefaults(suiteName: "group.azamsharp.TODOApp")
        
        self.items = userDefaults?.valueForKey("TodoItems") as! [String]
        
        self.tableView.reloadData()
        
        completionHandler(NCUpdateResult.NewData)
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.items.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        // Configure the cell...

        cell.textLabel?.text = self.items[indexPath.row]
        cell.textLabel?.textColor = UIColor.whiteColor()
        
        return cell
    }
    

    
}
