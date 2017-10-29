//
//  EditorViewController.swift
//  Home_9
//
//  Created by Alex Neo on 29.10.2017.
//  Copyright © 2017 Alex Neo. All rights reserved.
//

import UIKit

class EditorViewController: UIViewController {

    @IBOutlet private weak var nameTextField: UITextField!
    @IBOutlet private weak var surnameTextField: UITextField!
    @IBOutlet private weak var switchOfAge: UISwitch!
    @IBOutlet private weak var welcomeLabel: UILabel!
    
    var delegate: EditProfileDelegate?
    var name: String = ""
    var surname: String = ""
    
    var oldName: String?
    var oldSurname: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text = oldName
        surnameTextField.text = oldSurname
    }

    @IBAction private func acceptButttonPressed(_ sender: Any) {
        if let n = nameTextField.text, n != "" {
                name = n.capitalized
            }
        else { name = "Undefined" }
        
        if let s = surnameTextField.text, s != "" {
            surname = s.capitalized
        }
        else { surname = "Undefined" }
        
        delegate?.userDidChange(name, surname)
        view.endEditing(true)
        if switchOfAge.isOn == true {
            welcomeLabel.text = "Здравствуй, \(name) \(surname)!"
        }
        else {
            welcomeLabel.text = "Привет, \(name)!"
        }
    }
    
    @IBAction private func clearButtonPressed(_ sender: Any) {
        switchOfAge.isOn = false
        nameTextField.text = ""
        surnameTextField.text = ""
        delegate?.userDidResetInfo()
    }
}


