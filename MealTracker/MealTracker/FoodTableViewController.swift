//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Ayax Alexis Casarrubias Rodríguez on 07/11/19.
//  Copyright © 2019 Ayax Alexis. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        <#code#>
    }

    var desayuno : [Food] = [
        Food(name:"agua", description:"agua liquida")
    ]
    var meals : Meal {
        Meal(name: "breackfast", food: desayuno)
        Meal(name: "lunch")
        Meal(name: "dinner")
        
        
    }
  




}
