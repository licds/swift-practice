//
//  ViewController.swift
//  LunarZodiac
//
//  Created by Yi Li on 1/21/20.
//  Copyright © 2020 Yi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var yearImages: UIImageView!
    var startingYear = 2020
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func nextYearButtonPressed(_ sender: UIButton) { if sender.tag == 1 {
        startingYear += 1
        yearLabel.text = String(startingYear)
        yearImages.image = UIImage(named: "image\((startingYear-4)%12)")
    } else if sender.tag == 0 {
        startingYear -= 1
        yearLabel.text = String(startingYear)
        yearImages.image = UIImage(named: "image\((startingYear-4)%12)")
    }
    }

}

