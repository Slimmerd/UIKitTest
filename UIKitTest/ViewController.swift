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
        self.picker.datePickerMode = .date
        self.picker.addTarget(self, action: #selector(datePickerChange), for: .valueChanged)
        
        var oneYear = TimeInterval()
        oneYear = 365 * 24 * 60 * 60
        
        let todayDate = Date()
        let oneYearFromToday = todayDate.addingTimeInterval(oneYear)
        let twoYearsFromToday = todayDate.addingTimeInterval(2 * oneYear )
        
        self.picker.minimumDate = oneYearFromToday
        self.picker.maximumDate = twoYearsFromToday
        
        self.view.addSubview(self.picker)
    }

    
    @objc func datePickerChange(target: UIDatePicker) {
        if target.isEqual(self.picker) {
            print("newDate = \(target.date)")
        }
    }
    
}
