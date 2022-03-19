//
//  MainViewController.swift
//  RGB View
//
//  Created by Alexandr Barabash on 19.03.2022.
//

import UIKit

class MainViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.mainColors = view.backgroundColor
    }
}
