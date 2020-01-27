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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var list = ["Yes","No"]
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        messageLabel.text = list[Int.random(in: 0...list.count-1)]
    }
    

}

