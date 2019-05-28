//
//  TextFieldBorderStyleViewController.swift
//  TextField
//
//  Created by Seungjun Lim on 28/05/2019.
//  Copyright © 2019 Seungjun Lim. All rights reserved.
//

import UIKit

class TextFieldBorderStyleViewController: UIViewController {
    
    @IBOutlet weak var inputField: UITextField!
    
    @IBOutlet weak var borderStyleControl: UISegmentedControl!
    
    @IBAction func borderStyleChanged(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        let style = UITextField.BorderStyle(rawValue: index) ?? .roundedRect
        inputField.borderStyle = style
    }
    
    @IBOutlet weak var enabledSwitch: UISwitch!
    
    @IBAction func toggleEnabled(_ sender: UISwitch) {
        inputField.isEnabled = sender.isOn
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        borderStyleControl.selectedSegmentIndex = inputField.borderStyle.rawValue
    }
}
