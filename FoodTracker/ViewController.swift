//
//  ViewController.swift
//  FoodTracker
//
//  Created by Tim Beals on 2016-12-04.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        
    }

    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        mealNameLabel.text = textField.text
    }
    
    
    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton)
    {
        mealNameLabel.text = "Default Text"
    }


}

