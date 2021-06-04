//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by fmustafa on 6/3/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!

    var model: CalculatorModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = model.calculateSplitMoney()

        settingsLabel.text = "Split between \(model.numberOfPeople) people, with \(model.percentage) tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
