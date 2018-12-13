//
//  ViewController.swift
//  Light
//
//  Created by Ayax Alexis Casarrubias Rodríguez on 13/03/18.
//  Copyright © 2018 Ayax Alexis Casarrubias Rodríguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //updateUI();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //@IBOutlet weak var lightButton: UIButton!
    
    @IBAction func ButtonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI();
    }
    
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
}

