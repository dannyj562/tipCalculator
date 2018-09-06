//
//  SettingsViewController.swift
//  tipApp
//
//  Created by Danny on 9/2/18.
//  Copyright © 2018 Danny Rivera. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let lowestPercentage = "lowestPercentage"
    let highestPercentage = "highestPercentage"
    
    @IBOutlet weak var lowestPercentageSlider: UISlider!
    @IBOutlet weak var highestPercentageSlider: UISlider!
    @IBOutlet weak var lowestPercentageLabel: UILabel!
    @IBOutlet weak var highPercentageLabel: UILabel!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func lowerSliderChanged(sender: UISlider) {
        lowestPercentageLabel.text = String(format: "%.2f", Double(lowestPercentageSlider.value)) + "%"
    }

    @IBAction func higherSliderChanged(sender: UISlider) {
        highPercentageLabel.text = String(format: "%.2f", Double(highestPercentageSlider.value)) + "%"
    }
    
    @IBAction func saveClicked(sender: UIButton) {
        NSUserDefaults.standardUserDefaults().setObject(lowestPercentageLabel.text, forKey: "lowestPercentage")
        NSUserDefaults.standardUserDefaults().setObject(highPercentageLabel.text, forKey: "highestPercentage")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
