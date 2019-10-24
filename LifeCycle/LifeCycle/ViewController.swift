//
//  ViewController.swift
//  LifeCycle
//
//  Created by Ayax Alexis Casarrubias Rodríguez on 24/10/19.
//  Copyright © 2019 Ayax Alexis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("viewController - View Did Load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
        
        print("viewController - View Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("viewController - View Did Appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        
        super .viewWillDisappear(animated)
        
        print("viewController - View Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("viewController - View Did Disappear")
    }
    


}

