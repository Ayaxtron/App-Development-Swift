//
//  ViewController.swift
//  Login
//
//  Created by Ayax Alexis Casarrubias Rodríguez on 23/10/19.
//  Copyright © 2019 Ayax Alexis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var ForgotPassword: UIButton!
    @IBOutlet weak var ForgotUsername: UIButton!
    
    @IBAction func ForgotUsername(_ sender: Any) {
        performSegue(withIdentifier: "Controller", sender: ForgotUsername)
       
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
          
        if sender == ForgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == ForgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = username.text
            
        }
    }

}

