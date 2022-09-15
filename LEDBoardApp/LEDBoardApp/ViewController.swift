//
//  ViewController.swift
//  LEDBoardApp
//
//  Created by 박성재 on 2022/09/15.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {

    @IBOutlet weak var ContentsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ContentsLabel.textColor = .yellow
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewControler = segue.destination as? SettingViewController {
            settingViewControler.delegate = self
            settingViewControler.ledText = self.ContentsLabel.text
            settingViewControler.textColor = self.ContentsLabel.textColor
            settingViewControler.backgroundColor = self.view.backgroundColor ?? .black
        }
    }

    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text {
            self.ContentsLabel.text = text
        }
        self.ContentsLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }
}

