//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Ayax Alexis Casarrubias Rodríguez on 13/12/18.
//  Copyright © 2018 Ayax Alexis Casarrubias Rodríguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.addTarget(self,action:#selector(ButtonTapped(_:)),
        for: .touchUpInside)
    }
   
    @IBAction func ButtonTapped(_ sender: UIButton) {
          print("Button was tapped")
        
        if toggle.isOn{
            print("The switch is on")
        }else{
            print("The switch is off")
        }
        
        print("The slider is set to \(Slider.value)")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn{
            print("The switch is on")
        
        }else{
            print("The switch is off")
        }
    }
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
        
    }
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
   
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
        
      
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

