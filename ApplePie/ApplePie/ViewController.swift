//
//  ViewController.swift
//  ApplePie
//
//  Created by Ayax Alexis Casarrubias Rodríguez on 19/12/18.
//  Copyright © 2018 Ayax Alexis Casarrubias Rodríguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    var listoFWord : [String] = ["water", "fire", "earth", "wind"]
    let incorrectMoveAllowd = 7
    var totalWins = 0
    var totalLoses = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    func newRound(){
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

