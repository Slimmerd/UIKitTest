//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    var myImageView = UIImageView()
    let myImage = UIImage(named: "kekw")
    
     override func viewDidLoad() {
        super.viewDidLoad()
    
   
//         self.myImageView = UIImageView(image: myImage)
         self.myImageView = UIImageView(frame: self.view.bounds)
         
         self.myImageView.contentMode = .scaleAspectFit
         
         self.myImageView.image = self.myImage
         self.myImageView.center = self.view.center
         
         self.view.addSubview(self.myImageView)
    }
    
    
}
