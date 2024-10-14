//
//  ViewController.swift
//  ColorizedApp_1
//
//  Created by Артем Иванов on 14.10.2024.
//

import UIKit

final class ViewController: UIViewController {

        @IBOutlet weak var colorView: UIView!
        
        @IBOutlet weak var redLabel: UILabel!
        @IBOutlet weak var greenLabel: UILabel!
        @IBOutlet weak var blueLabel: UILabel!
    
        @IBOutlet weak var redSlider: UISlider!
        @IBOutlet weak var greenSlider: UISlider!
        @IBOutlet weak var blueSlider: UISlider!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            colorView.layer.cornerRadius = 10
            colorValueChanged()
            
            redLabel.text = string(from: redSlider)
            greenLabel.text = string(from: greenSlider)
            blueLabel.text = string(from: blueSlider)
        }
        
        @IBAction func sliderValueChanged(_ sender: UISlider) {
            colorValueChanged()
            
            switch sender {
            case redSlider:
                redLabel.text = string(from: redSlider)
            case greenSlider:
                greenLabel.text = string(from: greenSlider)
            default:
                blueLabel.text = string(from: blueSlider)
            }
        }
        
        private func colorValueChanged() {
            colorView.backgroundColor = UIColor(
                red: redSlider.value.cgColorValueChanged(),
                green: greenSlider.value.cgColorValueChanged(),
                blue: blueSlider.value.cgColorValueChanged(),
                alpha: 1
            )
        }
        
        private func string(from slider: UISlider) -> String {
            String(format: "%.2f", slider.value)
        }
    }

    extension Float {
        func cgColorValueChanged() -> CGFloat {
            CGFloat(self)
        }
    }


