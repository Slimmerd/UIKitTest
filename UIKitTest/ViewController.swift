//
//  ViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 21/03/2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()
    var playButton: UIButton = UIButton()
    var pauseButton: UIButton = UIButton()
    
    let slider: UISlider = UISlider()
    let volumeSlider: UISlider = UISlider()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//      play button
        self.playButton.frame = CGRect(x: 20, y: 100, width: 150, height: 100)
        self.playButton.setTitle("play", for: .normal)
        self.playButton.backgroundColor = UIColor.red
        self.playButton.addTarget(self, action: #selector(playButtonAction(target:)), for: .touchUpInside)
        self.view.addSubview(self.playButton)
        
//      pause button
        self.pauseButton.frame = CGRect(x: 200, y: 100, width: 150, height: 100)
        self.pauseButton.setTitle("Pause", for: .normal)
        self.pauseButton.backgroundColor = UIColor.blue
        self.pauseButton.addTarget(self, action: #selector(pauseButtonAction(target:)), for: .touchUpInside)
        self.view.addSubview(self.pauseButton)
        
//        slider
        self.slider.frame = CGRect(x: 100, y: 250, width: 200, height: 25)
        self.slider.minimumValue = 0.0
        self.slider.maximumValue = 100.0
        self.slider.addTarget(self, action: #selector(updateSliderPosition(target:)), for: .valueChanged)
        
        self.view.addSubview(self.slider)
        
        
//        volume slider
        self.volumeSlider.frame = CGRect(x: 100, y: 500, width: 200, height: 25)
        self.volumeSlider.minimumValue = 0
        self.volumeSlider.maximumValue = 10
        self.volumeSlider.addTarget(self, action: #selector(updateVolume(target:)), for: .valueChanged)
        self.view.addSubview(self.volumeSlider)
        
//        Init player
        do {
            if let audioPath = Bundle.main.path(forResource: "api", ofType: "mp3") {
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                self.slider.maximumValue = Float(player.duration) // Set maximum value for slider
                
//                Set volumeSlider default value
                self.volumeSlider.value = self.player.volume
            }
        } catch {
            print("Error ", error)
        }
        
        
        self.player.play()
    }

    @objc func playButtonAction(target: UIButton) {
        print("playButton touched")
        self.player.play()
    }
    
    @objc func pauseButtonAction(target: UIButton) {
        print("pauseButtonTouched")
        self.player.pause()
    }
    
    @objc func updateSliderPosition(target: UISlider) {
        if target == slider {
            self.player.currentTime = TimeInterval(target.value)
        }
        
    }
    
    @objc func updateVolume(target: UISlider) {
        self.player.volume = self.volumeSlider.value
    }
    
}
