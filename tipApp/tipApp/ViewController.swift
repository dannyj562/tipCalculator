//
//  ViewController.swift
//  tipApp
//
//  Created by Danny on 8/31/18.
//  Copyright © 2018 Danny Rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let lowestPercentage = "lowestPercentage"
    let highestPercentage = "highestPercentage"
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        if NSUserDefaults.standardUserDefaults().objectForKey(lowestPercentage) != nil &&
        NSUserDefaults.standardUserDefaults().objectForKey(highestPercentage) != nil {
            slider.minimumValue = (NSUserDefaults.standardUserDefaults().objectForKey(lowestPercentage)?.floatValue)!
            slider.maximumValue = (NSUserDefaults.standardUserDefaults().objectForKey(highestPercentage)?.floatValue)!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateBillAndTip(sender: UITextField) {
        let bill = Double(billField.text!) ?? 0
        let tip = bill * Double((slider.value/100))
        let total = bill + tip
        tipLabel.text = String(format: "%.2f", Double(slider.value)) + "%"
        totalLabel.text = String(format: "$%.2f", total)
    }

    @IBAction func slideToCalculateBillAndTip(sender: UISlider) {
        let bill = Double(billField.text!) ?? 0
        let tip = bill * Double(slider.value/100)
        let total = bill + tip
        tipLabel.text = String(format: "%.2f", Double(slider.value)) + "%"
        totalLabel.text = String(format: "$%.2f", total)
    }
}
