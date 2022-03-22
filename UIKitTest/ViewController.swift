//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {

    let mySwitch: UISwitch = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Created switch button
        self.mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
        self.view.addSubview(self.mySwitch)
        
//        Turned on by default
        self.mySwitch.setOn(true, animated: true)
        
//        Prints switch state on init
        if self.mySwitch.isOn {
            print("switch is ON")
        } else {
            print("switch is OFF")
        }
        
        
//        Adding observer
        self.mySwitch.addTarget(self, action: #selector(handleSwitchChange(paramTarget:)), for: .valueChanged)
    }
    
//    Func that prints switch state
    @objc func handleSwitchChange(paramTarget: UISwitch) {
        print(paramTarget)
        
        if self.mySwitch.isOn {
            print("switch is ON")
        } else {
            print("switch is OFF")
        }
    }

  
    
}

