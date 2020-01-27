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
    @IBOutlet weak var animalNamesLabel: UILabel!
    var startingYear = 2020
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var animalNames = ["RAT", "OX", "TIGER", "RABBIT", "DRAGON", "SNAKE", "HORSE", "GOAT", "MONKEY", "ROOSTER", "DOG", "PIG"]
    @IBAction func nextYearButtonPressed(_ sender: UIButton) { if sender.tag == 1 {
        startingYear += 1
        yearLabel.text = String(startingYear)
        animalNamesLabel.text = animalNames[(startingYear-4)%12]
        yearImages.image = UIImage(named: animalNames[(startingYear-4)%12])
    } else if sender.tag == 0 {
        startingYear -= 1
        yearLabel.text = String(startingYear)
        animalNamesLabel.text = animalNames[(startingYear-4)%12]
        yearImages.image = UIImage(named: String(animalNames[(startingYear-4)%12]))
    }
    }

}

