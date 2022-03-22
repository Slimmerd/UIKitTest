//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {

    let picker: UIPickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.picker.center = self.view.center
        
//        Subscribe
        self.picker.dataSource = self
        self.picker.delegate = self
        
        self.view.addSubview(self.picker)
    }

  
    
}

extension ViewController: UIPickerViewDataSource {
    
//    Amount of columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
//    Amount of rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
}

extension ViewController: UIPickerViewDelegate {
    
    internal func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let result = "row = \(row)"
        
        return result
    }
}
