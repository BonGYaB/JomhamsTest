//
//  SplashScreenViewController.swift
//  JomhamsTest
//
//  Created by SEAN Sen on 6/2/19.
//  Copyright © 2019 SEAN Sen. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController, NibIntializable {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        goToHomeScreen()
    }
    
    private func goToHomeScreen() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let viewController = TabBarViewController()
            viewController.modalPresentationStyle = .fullScreen
            self.present(viewController, animated: true, completion: nil)
        }
        
    }
}
