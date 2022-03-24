//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var showSecondScreen = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "FirstVC"
        
        self.showSecondScreen = UIButton(type: .system)
        self.showSecondScreen.setTitle("SecondVC", for: .normal)
        self.showSecondScreen.sizeToFit()
        self.showSecondScreen.center = self.view.center
        self.showSecondScreen.addTarget(self, action: #selector(changeDisplay(target:)), for: .touchUpInside)
        
        self.view.addSubview(self.showSecondScreen)
    }
    
    @objc func changeDisplay(target: Any) {
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }

    

}
