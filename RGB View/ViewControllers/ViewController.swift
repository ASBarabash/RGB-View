//
//  ViewController.swift
//  RGB View
//
//  Created by Alexandr Barabash on 04.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
        
        setColor()
        setValue(for: redLabel, greenLabel, blueLabel)
    }
    
    
    
    
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
        
        switch sender {
        case redSlider:
            redLabel.text = string(for: redSlider)
        case greenSlider:
            greenLabel.text = string(for: greenSlider)
        default:
            blueLabel.text = string(for: blueSlider)
        
        }
    }
    
    
// MARK: - Private Methods


    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func string(for slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabel:
                redLabel.text = string(for: redSlider)
            case greenLabel:
                greenLabel.text = string(for: greenSlider)
            default:
                blueLabel.text = string(for: blueSlider)
                
            }
        }
    }
}
