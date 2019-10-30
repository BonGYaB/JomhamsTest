//
//  ProfileViewController.swift
//  JomhamsTest
//
//  Created by SEAN Sen on 6/2/19.
//  Copyright © 2019 SEAN Sen. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        label.text = "Profile Page is Maintenance"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25)
        
        self.view.addSubview(label)
    }
}
