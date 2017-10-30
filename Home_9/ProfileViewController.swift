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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "profileEditor", let destVC = segue.destination as? EditorViewController {
            destVC.delegate = self
            
            if let n1 = nameLabel.text {
                destVC.name = n1
            }
            
            if let s1 = surNameLabel.text {
                destVC.surname = s1
            }
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
