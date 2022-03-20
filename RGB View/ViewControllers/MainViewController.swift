//
//  MainViewController.swift
//  RGB View
//
//  Created by Alexandr Barabash on 19.03.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewValues(for colorView: UIColor)
}

class MainViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.mainColors = view.backgroundColor
        settingVC.delegate = self
    }
}


// MARK: - SettingsViewControllerDelegate

extension MainViewController: SettingsViewControllerDelegate {
    func setNewValues(for colorView: UIColor) {
        view.backgroundColor = colorView
    }
}
