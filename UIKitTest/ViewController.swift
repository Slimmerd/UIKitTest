//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Error", message: "Bob!", preferredStyle: .alert)
        let action = UIAlertAction(title: "kok", style: .default) { action in
            let text = alertController.textFields?.first?.text
            print(text ?? "nil")
        }
        
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
//    MARK: - Better implementation
    
    func alert(title: String, message: String, style: UIAlertController.Style) {
        
    }
    
}

