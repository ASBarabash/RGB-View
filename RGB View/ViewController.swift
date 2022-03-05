//
//  ViewController.swift
//  RGB View
//
//  Created by Alexandr Barabash on 04.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewRGB: UIView!
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewRGB.layer.cornerRadius = 10
        
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        
        labelRed.text = String(sliderRed.value)
        labelGreen.text = String(sliderGreen.value)
        labelBlue.text = String(sliderBlue.value)
    }
    @IBAction func sliderActionRed() {
        labelRed.text = String(format: "%.2f", sliderRed.value)
        viewRGB.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
    }
    @IBAction func sliderActionGreen() {
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
        viewRGB.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
    }
    @IBAction func sliderActionBlue() {
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
        viewRGB.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
    
    }
}

