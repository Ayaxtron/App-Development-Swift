//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Ayax Alexis Casarrubias Rodríguez on 10/19/19.
//  Copyright © 2019 Ayax Alexis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender:
        Any?) {
        segue.destination.navigationItem.title = textField.text
    }
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue){
        
    }

    @IBOutlet weak var textField: UITextField!
}

