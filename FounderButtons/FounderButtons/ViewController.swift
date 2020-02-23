//
//  ViewController.swift
//  FounderButtons
//
//  Created by Yi Li on 1/21/20.
//  Copyright © 2020 Yi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var upperName: UILabel!
    @IBOutlet weak var lowerName: UILabel!
    var number = 0
    var G1 = "Larry Page"
    var G2 = "Sergey Brin"
    var R1 = "Jennifer Hyman"
    var R2 = "Jenny Fleis"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func googleButtonPressed(_ sender: UIButton){
        if number == 1 {
            upperName.text = G1
            upperName.textColor = UIColor.brown
            lowerName.text = G2
            lowerName.textColor = UIColor.orange
            number += 1
        } else {
        upperName.text = G1
        upperName.textColor = UIColor.brown
        lowerName.text = G2
        lowerName.textColor = UIColor.orange
        }
    }
    @IBAction func rtrButtonPressed(_ sender: UIButton) {
        if upperName.text == G1 {
            upperName.text = R1
            upperName.textColor = UIColor.brown
            lowerName.text = R2
            lowerName.textColor = UIColor.orange
            number += 1
        } else {
        upperName.text = R1
        upperName.textColor = UIColor.brown
        lowerName.text = R2
        lowerName.textColor = UIColor.orange
        }
    }
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        if number == 2 {
            upperName.text = "This app is created by Yi Li"
            lowerName.text = "You R genius, got the secret code!"
            upperName.textColor = UIColor.white
            lowerName.textColor = UIColor.white
            number = 0
        } else {
            upperName.text = ""
            lowerName.text = ""
            number = 0
        }
    }
}

