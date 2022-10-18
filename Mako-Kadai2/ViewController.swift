//
//  ViewController.swift
//  Mako-Kadai2
//
//  Created by 中田誠 on 2022/10/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textFiled1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
   
    @IBOutlet private weak var label: UILabel!
    
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    

    @IBAction func didTapButton(_ sender: Any) {
        let number1 = Int(textFiled1.text ?? "") ?? 0
        let number2 = Int(textField2.text ?? "") ?? 0
        
        switch(segmentedControl.selectedSegmentIndex,number2) {
        case (0, _):
            label.text = "\(number1 + number2)"
        case (1, _):
            label.text = "\(number1 - number2)"
        case (2, _):
            label.text = "\(number1 * number2)"
        case (3, 0):
            label.text = "0で割ることはできません"
        case (3, _):
            label.text = "\(number1 / number2)"
        default:
            fatalError("計算できません")
        }
    }
    
}

