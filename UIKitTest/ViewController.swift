//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var segmentController: UISegmentedControl = UISegmentedControl()
    let menuArray: Array<String> = ["test1", "test2", "test3"]
    
    var imageView: UIImageView = UIImageView()
    let imageArray: Array<UIImage?> = [UIImage(named: "kekw.png"), UIImage(named: "loln.png"), UIImage(named: "kekw.png")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        image
        self.imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.imageView.center = self.view.center
        self.imageView.image = self.imageArray[0]
        self.view.addSubview(self.imageView)
        
//        create segment
        self.segmentController = UISegmentedControl(items: self.menuArray)
        self.segmentController.frame = CGRect(x: 80, y: 600, width: 200, height: 30)
        
        self.segmentController.addTarget(self, action: #selector(selectImage(target:)), for: .valueChanged)
        
        self.view.addSubview(self.segmentController)
    }
    
    
    @objc func selectImage(target: UISegmentedControl) {
        if target == self.segmentController {
            let segmentIndex = target.selectedSegmentIndex
            
            self.imageView.image = self.imageArray[segmentIndex]
        }
    }

    
}
