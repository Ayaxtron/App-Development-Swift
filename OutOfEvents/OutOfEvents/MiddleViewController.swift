//
//  MiddleViewController.swift
//  OutOfEvents
//
//  Created by Ayax Alexis Casarrubias Rodríguez on 24/10/19.
//  Copyright © 2019 Ayax Alexis. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let existingText = labelMiddle.text{
            labelMiddle.text = "\(existingText)nEvent number \(evenNumber) was viewDidLoad"
            evenNumber += 1
        }
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var labelMiddle: UILabel!
    
    var evenNumber :Int = 1
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
    
        if let existingText = labelMiddle.text{
            labelMiddle.text = "\(existingText)nEvent number \(evenNumber) was viewDidLoad"
            evenNumber += 1
        }
        print("SecondViewController - View Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let existingText = labelMiddle.text{
            labelMiddle.text = "\(existingText)nEvent number \(evenNumber) was viewDidLoad"
            evenNumber += 1
        }
        print("SecondViewController - View Did Appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        
        super .viewWillDisappear(animated)
        if let existingText = labelMiddle.text{
            labelMiddle.text = "\(existingText)nEvent number \(evenNumber) was viewDidLoad"
            evenNumber += 1
        }
        print("SecondViewController - View Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if let existingText = labelMiddle.text{
            labelMiddle.text = "\(existingText)nEvent number \(evenNumber) was viewDidLoad"
            evenNumber += 1
        }
        print("SecondViewController - View Did Disappear")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
