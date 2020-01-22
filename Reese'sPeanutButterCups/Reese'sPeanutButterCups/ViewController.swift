//
//  ViewController.swift
//  Reese'sPeanutButterCups
//
//  Created by Yi Li on 1/21/20.
//  Copyright © 2020 Yi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heyButtonPressed(_ sender: UIButton) {
        if messageLabel.text != "You got chocolate in my peanut butter!" {
            messageLabel.text = "You got chocolate in my peanut butter!"
            messageLabel.textColor = .orange
            messageLabel.textAlignment = .right
        }   else {
            messageLabel.text = "You got peanut butter in my chocolate!"
            messageLabel.textAlignment = .left
            messageLabel.textColor = .brown
        }
    }
    

}

