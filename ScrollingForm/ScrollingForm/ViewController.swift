//
//  ViewController.swift
//  ScrollingForm
//
//  Created by Ayax Alexis Casarrubias Rodríguez on 31/10/19.
//  Copyright © 2019 Ayax Alexis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        registerForKeyboardNotifications()
    }
    
    func registerForKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector:
            #selector(keyboardWasShown(_:)),
                                               name: .UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector:
            #selector(keyboardWillBeHidden(_:)),
                                               name: .UIResponder.keyboardWillHideNotification, object: nil)
          
    }
      
    @objc func keyboardWasShown(_ notificiation: NSNotification) {
        guard let info = notificiation.userInfo,
            let keyboardFrameValue =
            info[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue
            else { return }
          
        let keyboardFrame = keyboardFrameValue.cgRectValue
        let keyboardSize = keyboardFrame.size
          
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0,
                                         bottom: keyboardSize.height, right: 0.0)
        UIScrollView.contentInset = contentInsets
        UIScrollView.scrollIndicatorInsets = contentInsets
    }
      
    @objc func keyboardWillBeHidden(_ notification: NSNotification) {
        let contentInsets = UIEdgeInsets.zero
        UIScrollView.contentInset = contentInsets
        UIScrollView.scrollIndicatorInsets = contentInsets
    }
}

