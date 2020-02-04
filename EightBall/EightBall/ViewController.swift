//
//  ViewController.swift
//  EightBall
//
//  Created by Yi Li on 1/27/20.
//  Copyright © 2020 Yi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var magicEightBall: UIImageView!
    
    var lastIndex = -1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var list = ["Yes","No", "1", "2", "3", "4", "5", "6", "7", "8","9","10","11","12","13","14","15","16","17","18","19","20"]
    
    func flickingMessage() {
        var numberOfTurns = 0
        repeat {
            messageLabel.text = list.randomElement()
            numberOfTurns += 1
        } while numberOfTurns != 10
    }
    
    func noneRepeat() {
        var numberOfImage = -1
        
        repeat {
            numberOfImage = Int.random(in: 0 ... list.count-1)
        } while lastIndex == numberOfImage
       
        lastIndex = numberOfImage
        messageLabel.text = list[lastIndex]
    }
    
    func magicEightBallAnimate() {
        let bounds = self.magicEightBall.bounds
        let shrinkValue: CGFloat = 60
        self.magicEightBall.bounds = CGRect(x: self.magicEightBall.bounds.origin.x + shrinkValue, y: self.magicEightBall.bounds.origin.y + shrinkValue, width: self.magicEightBall.bounds.size.width - shrinkValue, height: self.magicEightBall.bounds.size.height - shrinkValue)
        UIView.animate(withDuration: 0.25,delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: {self.magicEightBall.bounds = bounds}, completion: nil)
    }
    @IBAction func imagePressed(_ sender: UITapGestureRecognizer) {
        noneRepeat()
        magicEightBallAnimate()
    }
    

}

