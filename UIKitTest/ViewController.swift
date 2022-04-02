//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit

final class ViewController: UIViewController {
    
    var squareView = [UIDynamicItem]()
    var animator = UIDynamicAnimator()

    
     override func viewDidLoad() {
        super.viewDidLoad()
         
         
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
//        squareView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        squareView.backgroundColor = .green
//        squareView.center = view.center
//        view.addSubview(squareView)
//
//            //    Create animator
//        animator = UIDynamicAnimator(referenceView: view)
//        let gravity = UIGravityBehavior(items: [squareView])
//        animator.addBehavior(gravity)
        
        
        let numOfView = 2
        squareView.reserveCapacity(numOfView)
        let colors: [UIColor] = [.red, .green]
        var currentCenterPoint: CGPoint = view.center
        let eachViewSize = CGSize(width: 50, height: 50)
        
        for counter in 0..<numOfView {
            let newView = UIView(frame: CGRect(x: 0, y: 0, width: eachViewSize.width, height: eachViewSize.height))
            
            newView.backgroundColor = colors[counter]
            newView.center = currentCenterPoint
            currentCenterPoint.y += eachViewSize.height + 10
            view.addSubview(newView)
            squareView.append(newView)
        }
        
        animator = UIDynamicAnimator(referenceView: view)
        
        let gravity = UIGravityBehavior(items: squareView)
        animator.addBehavior(gravity)
        
        let collision = UICollisionBehavior(items: squareView)
        collision.translatesReferenceBoundsIntoBoundary = true
        
        animator.addBehavior(collision)
    }
    

    

}
