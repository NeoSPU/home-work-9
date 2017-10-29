//
//  EditProfileDelegate.swift
//  Home_9
//
//  Created by Alex Neo on 29.10.2017.
//  Copyright © 2017 Alex Neo. All rights reserved.
//

import UIKit

protocol EditProfileDelegate {
    func  userDidChange(_ firstname:  String, _ lastname:  String)
    func  userDidResetInfo()
}
