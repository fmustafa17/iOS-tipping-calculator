//
//  CalculatorModel.swift
//  Tipsy
//
//  Created by fmustafa on 6/3/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorModel {
    func getPercentageNumber(_ percentage: String) -> Double {
        switch percentage {
        case "10%":
            return 0.1
        case "20%":
            return 0.2
        default:
            return 0.0
        }
    }
}
