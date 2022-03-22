//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {

    let picker: UIDatePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.picker.center = self.view.center
        self.picker.datePickerMode = .countDownTimer
        self.picker.addTarget(self, action: #selector(datePickerChange), for: .valueChanged)
        
        self.picker.countDownDuration = 2 * 60
        
        self.view.addSubview(self.picker)
    }

    
    @objc func datePickerChange(target: UIDatePicker) {
        if target.isEqual(self.picker) {
            print("newDate = \(target.date)")
        }
    }
    
}
