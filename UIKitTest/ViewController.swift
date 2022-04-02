//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit

final class ViewController: UIViewController {
    
    private var myProgressView = UIProgressView()
    private var myButton = UIButton()
    private var myTimer = Timer()

    
     override func viewDidLoad() {
        super.viewDidLoad()
         
         
         self.createProgress(myProgressView)
         self.createButton(myButton)
         self.createTimer()
    }
    
    
//    MARK: - Timer
    private func createTimer() {
        myTimer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateProgressView), userInfo: nil, repeats: true)
    }
    
//    MARK: - Selector
    @objc func updateProgressView(){
        if myProgressView.progress != 1.0 {
            myProgressView.progress += 0.1 / 1.0
        } else if myProgressView.progress == 1.0 {
            UIView.animate(withDuration: 0.7, animations: {
                self.myButton.alpha = 1
                self.myButton.setTitle("Start", for: .normal)
                self.myTimer.invalidate()
            })
        }
    }
    
//    MARK: - UI
    
    private func createProgress(_ progressView: UIProgressView) {
        progressView.progressViewStyle = .bar
        progressView.frame = CGRect(x: view.center.x, y: view.center.y, width: 150, height: 50)
        progressView.setProgress(0.0, animated: false)
        progressView.progressTintColor = .green
        progressView.trackTintColor = .gray
        progressView.center = view.center
        
        self.view.addSubview(progressView)
        
    }
    
    private func createButton(_ button: UIButton) {
        button.frame = CGRect(x: view.bounds.size.width / 4, y: view.center.y + 100, width: 150, height: 50)
        button.setTitle("Loading...", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        
        self.view.addSubview(button)
    }
}
