//
//  SecondViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 24/03/2022.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        self.title = "SecondVC"
        self.navigationItem.title =  "SecondVC"
        
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        self.tabBarItem = tabBarItem
        
        self.view.backgroundColor = UIColor.brown
    }


}
