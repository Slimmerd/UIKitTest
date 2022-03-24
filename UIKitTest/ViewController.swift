//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {
    

    let myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let labelFrame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        self.myLabel.frame = labelFrame
        self.myLabel.numberOfLines = 0
        self.myLabel.lineBreakMode = .byWordWrapping
        self.myLabel.text = "Hello, I'm under the water, help me"
        self.myLabel.adjustsFontSizeToFitWidth = true
        self.myLabel.sizeToFit()
        
        self.myLabel.textColor = UIColor.red
        self.myLabel.shadowColor = UIColor.brown
        self.myLabel.shadowOffset = CGSize(width: 2, height: 2)
        
        self.myLabel.font = UIFont.boldSystemFont(ofSize: 14)
        self.myLabel.center = self.view.center
        
        self.view.addSubview(myLabel)
      
    }

    

}
