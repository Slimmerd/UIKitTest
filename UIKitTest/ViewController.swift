//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {
    

    var myButton = UIButton()
    let normalImage = UIImage(named: "kekw")
    let highlightedImage = UIImage(named: "loln")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.myButton = UIButton(type: .roundedRect)
        self.myButton.frame = CGRect(x: 110, y: 200, width: 100, height: 100)
        self.myButton.setTitle("touche me", for: .normal)
        self.myButton.setTitle("You touched me", for: .highlighted)
        
        
        self.myButton.addTarget(self, action: #selector(buttonIsPressed(sender:)), for: .touchDown)
        self.myButton.addTarget(self, action: #selector(buttonIsTapped(sender:)), for: .touchUpInside)
        
        self.myButton.setBackgroundImage(normalImage, for: .normal)
        self.myButton.setBackgroundImage(highlightedImage, for: .highlighted)
        
        self.view.addSubview(self.myButton)
       
    }
    
  
    @objc func buttonIsPressed(sender: UIButton) {
        print("Button pressed")
    }
    
    @objc func buttonIsTapped(sender: UIButton) {
        print("Buttin is tapped")
    }
    
}
