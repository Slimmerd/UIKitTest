//
//  SecondViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 24/03/2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var showSecondScreen = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.title = "SecondVC"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        self.perform(#selector(goBack), with: nil, afterDelay: 3.0)
    }
    
    @objc func goBack() {
//        self.navigationController?.popViewController(animated: true)
        
//      In depth we need to get array of controllers
        var currentControllerArray = self.navigationController?.viewControllers
        
//        Then need to delete last element
        currentControllerArray?.removeLast()
        
//        Update result
        if let newControllerArray = currentControllerArray {
            self.navigationController?.viewControllers = newControllerArray
        }
        
//        Also can use guard instead if let
//        guard let newControllerArray = currentControllerArray else {return}
    }
    
}
