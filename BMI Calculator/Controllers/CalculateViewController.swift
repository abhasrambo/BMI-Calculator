//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmi: Float = 0.0
    
    
    
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
        bmi = weightOfUser/(heightOfUser * heightOfUser)
        self.performSegue(withIdentifier: "goToResult", sender: self)
//        let scVC = SecondViewController()
//        scVC.bmiValue = String(format:"%.2f", bmi)
//        self.present(scVC, animated: true, completion: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = String(format: "%.2f", bmi)
        }
    }
}

