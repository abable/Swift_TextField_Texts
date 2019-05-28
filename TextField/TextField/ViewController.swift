//
//  ViewController.swift
//  TextField
//
//  Created by Seungjun Lim on 28/05/2019.
//  Copyright © 2019 Seungjun Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBAction func report(_ sender: Any) {
        guard let input = inputField.text, input.count > 0 else {
            return
        }
        
        valueLabel.text = input
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        inputField.placeholder = "Input Value"
    }
}

