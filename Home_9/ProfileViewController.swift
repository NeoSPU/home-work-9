//
//  ProfileViewController.swift
//  Home_9
//
//  Created by Alex Neo on 29.10.2017.
//  Copyright © 2017 Alex Neo. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var surNameLabel: UILabel!
    
    var newName: String?
    var newSurname: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "profileEditor", let destVC = segue.destination as? EditorViewController {
            destVC.delegate = self
            destVC.oldName = nameLabel.text
            destVC.oldSurname = surNameLabel.text
        }
    }
}

extension ProfileViewController: EditProfileDelegate {
    
    func userDidChange(_ firstname: String, _ lastname: String) {
        nameLabel.text = firstname
        surNameLabel.text = lastname
    }
    
    func userDidResetInfo() {
        nameLabel.text = ""
        surNameLabel.text = ""
        
    }
}
