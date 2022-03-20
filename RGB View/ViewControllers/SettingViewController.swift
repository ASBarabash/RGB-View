//
//  ViewController.swift
//  RGB View
//
//  Created by Alexandr Barabash on 04.03.2022.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    
    var mainColors: UIColor!
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
        
        setColor()
        settingColor()
        colorSettingFromMainView()
        setValue(for: redLabel, greenLabel, blueLabel)
        setValueTextField(for: redTextField, greenTextField, blueTextField)
    }
    
    
    
    
    @IBAction func rgbSlider(_ sender: UISlider) {

        setColor()
        
        switch sender {
        case redSlider:
            redLabel.text = string(for: redSlider)
            redTextField.text = string(for: redSlider)
        case greenSlider:
            greenLabel.text = string(for: greenSlider)
            greenTextField.text = string(for: greenSlider)
        default:
            blueLabel.text = string(for: blueSlider)
            greenTextField.text = string(for: blueSlider)
        
        }
    }
    @IBAction func transferColor() {
        delegate.setNewValues(for: colorView.backgroundColor!)
        dismiss(animated: true)
    }
    
    
// MARK: - Private Methods

    private func colorSettingFromMainView() {
        colorView.backgroundColor = mainColors
    }
    
    private func settingColor() {
        let image = CIColor(color: mainColors)

        redSlider.value = Float(image.red)
        greenSlider.value = Float(image.green)
        blueSlider.value = Float(image.blue)
    }
    
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
    
    private func setValueTextField(for textFields: UITextField...) {
        textFields.forEach { textField in
            switch textField {
            case redTextField:
                redTextField.text = string(for: redSlider)
            case greenTextField:
                greenTextField.text = string(for: greenSlider)
            default:
                blueTextField.text = string(for: blueSlider)
            }
        }
    }
}
