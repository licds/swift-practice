//
//  ViewController.swift
//  McConaughey
//
//  Created by Yi Li on 2/10/20.
//  Copyright © 2020 Yi Li. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var alrightLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    var audioPlayer = AVAudioPlayer()
//    var number = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        alrightLabel.text = "\(Int(stepper.value))"
    }
    
    func playSound(soundName: String, numberOfLoops: Int) {
        if let sound = NSDataAsset(name: soundName) {
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.numberOfLoops = numberOfLoops
                audioPlayer.play()
            } catch {
                print("ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object")
            }
        } else {
            print("ERROR: file \(soundName) didn't load")
        }
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        alrightLabel.text = "\(Int(stepper.value))"
        }
    
    @IBAction func tellMeButtonPressed(_ sender: UIButton) {
        playSound(soundName: "alright", numberOfLoops: Int(stepper.value)-1)
    }
    
}

