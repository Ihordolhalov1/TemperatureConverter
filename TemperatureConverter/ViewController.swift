//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Ihor Dolhalov on 31.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var slider: UISlider!{
    didSet {
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 0
        }
}
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureC = Int(sender.value)
        celciusLabel.text = "\(temperatureC)ºC"
        let temperatureF = Int((sender.value * 9 / 5) + 32)
        fahrenheitLabel.text = "\(temperatureF)ºF"
    }
    
    
}

