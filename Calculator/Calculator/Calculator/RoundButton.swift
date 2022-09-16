//
//  RoundButton.swift
//  Calculator
//
//  Created by 박성재 on 2022/09/16.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    @IBInspectable var isRound: Bool = false {
        didSet {
            if isRound {
                self.layer.cornerRadius = self.frame.height / 2
            }
        }
    }
}
 
