//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let heightSlider = sender.value
        height.text = String(format: "%.2f", Double(heightSlider)) + "m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weightSlider = sender.value
        weight.text = String(format: "%.2f", Double(weightSlider)) + "Kg"
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        let heightOfUser = heightSlider.value
        let weightOfUser = weightSlider.value
        let bmi = weightOfUser/(heightOfUser * heightOfUser)
    }
}

