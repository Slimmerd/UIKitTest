//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showButton(_ sender: Any) {
        
        self.welcomeLabel.text = "Hi,"
        self.alert(title: "Who are you", message: "Huh?", style: .alert)
    }
    
//    MARK: - Better implementation
    
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "kok", style: .default) { action in
            let text = alertController.textFields?.first?.text
            self.welcomeLabel.text! += text!
        }
        
        alertController.addTextField { textField in
            textField.isSecureTextEntry = true
        }
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

