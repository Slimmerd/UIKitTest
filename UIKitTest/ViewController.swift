//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    

    var myTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createTextField()
        
        self.myTextField.delegate = self
        
//        NotificationCenter.default.addObserver(self, selector: #selector(textFieldDidChange), name: UITextField.textDidChangeNotification, object: nil)
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) {
            (nc) in
            self.view.frame.origin.y = -200
        }
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) {
            (nc) in
            self.view.frame.origin.y = 0.0
        }
      
    }

//    MARK: Create UI
    func createTextField() {
        let textFieldFrame = CGRect(x: 0, y: 0, width: 200, height: 30)
        
        self.myTextField = UITextField(frame: textFieldFrame)
        self.myTextField.borderStyle = UITextField.BorderStyle.roundedRect
        self.myTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        self.myTextField.textAlignment = .center
        self.myTextField.placeholder = "Test placeholder"
        self.myTextField.center = self.view.center
        
        self.view.addSubview(self.myTextField)
    }
    
//    MARK: Notification
    @objc func textFieldDidChange(ncParam: NSNotification) {
        print("didChange = \(ncParam)")
    }
    
// MARK: TextFieldDelegate
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("can I edit this field?")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Started editing field")
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("Can I finish editing?")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Finished editing ")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("Your input \(string)")
  
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("You deleted some")
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Close keyboard?")
        if textField == myTextField{
            self.myTextField.resignFirstResponder()
        }
        return true
    }
}
