//
//  ViewController.swift
//  TenpConvector
//
//  Created by Alex on 04.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celiusLabel.text = "\(temperatureCelsius)ºC"
        let fahrenheitTemperature = Int(round((sender.value  * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    }
}

