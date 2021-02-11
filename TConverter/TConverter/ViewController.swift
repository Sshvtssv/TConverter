//
//  ViewController.swift
//  TConverter
//
//  Created by Kristina on 08.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
    }
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let temperatureCelsios = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsios)ºC"
        
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
    }

}

