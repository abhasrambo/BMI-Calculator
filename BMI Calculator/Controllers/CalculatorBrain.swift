//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abhas Kumar on 4/25/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
struct CalculatorBrain {
    var bmiValue: Float = 0.0
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        bmiValue = weight/(height * height)
    }
    func getBMIValue() -> String {
        return String(format:"%.2f", bmiValue)
    }
}
