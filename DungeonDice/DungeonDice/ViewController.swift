//
//  ViewController.swift
//  DungeonDice
//
//  Created by Yi Li on 1/27/20.
//  Copyright © 2020 Yi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func labelButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You roll a " + String(Int.random(in: 1..<sender.tag)) + " with a " + String(sender.tag) + " sides dice!"
    }
    
    

}

