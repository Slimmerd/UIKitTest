//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {
    

    var myTextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        NotificationCenter.default.addObserver(self, selector: #selector(updateTextView), name: UIResponder.keyboardDidShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateTextView(param:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        self.createTextView()
       
    }
    
    
    func createTextView() {
        myTextView = UITextView(frame: CGRect(x: 20, y: 100, width: self.view.bounds.width - 40, height: self.view.bounds.height / 2))
        myTextView.text = "Some text in text view"
        myTextView.contentInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
        myTextView.font = UIFont.systemFont(ofSize: 17)
        myTextView.backgroundColor = .gray
        self.view.addSubview(self.myTextView)
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.myTextView.resignFirstResponder()
        self.myTextView.backgroundColor = .cyan
    }
    
    @objc func updateTextView(param: Notification) {
        let userINfo = param.userInfo
        
        let getKeyboardRect = (userINfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        
        let keyboardFrame = self.view.convert(getKeyboardRect, to: view.window)
        
        if param.name == UIResponder.keyboardWillHideNotification {
            self.myTextView.contentInset = UIEdgeInsets.zero
        } else {
            self.myTextView.contentInset = UIEdgeInsets(top: 0,left: 0, bottom: keyboardFrame.height, right: 0)
            self.myTextView.scrollIndicatorInsets = self.myTextView.contentInset
        }
        
        self.myTextView.scrollRangeToVisible(myTextView.selectedRange)
        
        

    }
    
}
