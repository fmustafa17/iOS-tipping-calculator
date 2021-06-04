//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPercentButton: UIButton!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var twentyPercentButton: UIButton!

    @IBOutlet weak var splitNumberLabel: UILabel!

    var model: CalculatorModel!

    override func viewDidLoad() {
        model = CalculatorModel()
    }

    @IBAction func tipChanged(_ sender: UIButton) {

        if zeroPercentButton.isSelected && sender !== zeroPercentButton {
            zeroPercentButton.isSelected = false
        } else if tenPercentButton.isSelected && sender !== tenPercentButton {
            tenPercentButton.isSelected = false
        } else if twentyPercentButton.isSelected && sender !== twentyPercentButton {
            twentyPercentButton.isSelected = false
        }

        sender.isSelected = !sender.isSelected

        guard let percentage = sender.title(for: .normal) else { return }

        print(model.getPercentageNumber(percentage))

    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        model.numberOfPeople = Int(sender.value)
    }

    @IBAction func calculatePressed(_ sender: Any) {
        print(model.numberOfPeople)
    }

}

