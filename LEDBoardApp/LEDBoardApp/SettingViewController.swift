//
//  SettingViewController.swift
//  LEDBoardApp
//
//  Created by 박성재 on 2022/09/15.
//

import UIKit

protocol LEDBoardSettingDelegate: AnyObject {
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!

    weak var delegate: LEDBoardSettingDelegate?
    var ledText: String?
    var textColor: UIColor = .yellow
    var backgroundColor: UIColor = .black
    
    private func configurationView() {
        if let ledText = self.ledText {
            self.textField.text = ledText
        }
        self.changeTextColor(color: self.textColor)
        self.changeBackgroundColor(color: self.backgroundColor)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configurationView()
        // Do any additional setup after loading the view.
    }
    
  
    
    
    @IBAction func tabTextColorButton(_ sender: UIButton) {
        if sender == self.yellowButton {
            self.changeTextColor(color: .yellow)
            self.textColor = .yellow
        } else if sender == self.purpleButton {
            self.changeTextColor(color: .purple)
            self.textColor = .purple
        } else {
            self.changeTextColor(color: .green)
            self.textColor = .green
        }
    }
    
    @IBAction func tabBackGroundColorButton(_ sender: UIButton) {
        if sender == self.blackButton {
            self.changeBackgroundColor(color: .black)
            self.backgroundColor = .black
        } else if sender == self.blueButton {
            self.changeBackgroundColor(color: .blue)
            self.backgroundColor = .blue
        } else {
            self.changeBackgroundColor(color: .orange)
            self.backgroundColor = .orange
        }
    }
    
    @IBAction func tabSaveButton(_ sender: UIButton) {
        self.delegate?.changedSetting(
            text: self.textField.text,
            textColor: self.textColor,
            backgroundColor: self.backgroundColor
        )
        self.navigationController?.popViewController(animated: true)
    }
    
    private func changeTextColor(color: UIColor) {
        self.yellowButton.alpha = color == UIColor.yellow ? 1 : 0.3
        self.purpleButton.alpha = color == UIColor.purple ? 1 : 0.3
        self.greenButton.alpha = color == UIColor.green ? 1 : 0.3
    }
    
    private func changeBackgroundColor(color: UIColor) {
        self.blackButton.alpha = color == UIColor.black ? 1 : 0.3
        self.blueButton.alpha = color == UIColor.blue ? 1 : 0.3
        self.orangeButton.alpha = color == UIColor.orange ? 1 : 0.3
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
