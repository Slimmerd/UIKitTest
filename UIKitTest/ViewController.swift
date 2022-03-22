//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {

    let mySwitch: UISwitch = UISwitch()
    let myButton: UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        MARK: - Standard Button
        
        self.myButton.frame = CGRect(x: 100, y: 200, width: 200, height: 100)
        self.myButton.backgroundColor = UIColor.magenta
        self.myButton.setTitle("Touch me", for: .normal)
        self.myButton.setTitle("Button touched", for: .highlighted)
        
        self.view.addSubview(self.myButton)
        
//        MARK: - Switch button
        self.mySwitch.frame = CGRect.zero
        self.mySwitch.center = self.view.center // Set position of switch to the center of the screen
        
//        Style of off button
        self.mySwitch.tintColor = UIColor.brown
        
//        Style of on button
        self.mySwitch.onTintColor = UIColor.gray
        
//        Lever style
        self.mySwitch.thumbTintColor = UIColor.cyan
        
//        Add interaction with switch
        self.mySwitch.addTarget(self, action: #selector(enableButton(target:)), for: .valueChanged)
        
        self.view.addSubview(self.mySwitch)
    }
    
    @objc func enableButton(target: UISwitch) {
        if target.isOn {
            self.myButton.isUserInteractionEnabled = true
        } else {
            self.myButton.isUserInteractionEnabled = false
        }
    }

  
    
}

