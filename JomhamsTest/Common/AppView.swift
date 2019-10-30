//
//  File.swift
//  JomhamsTest
//
//  Created by SEAN Sen on 6/2/19.
//  Copyright © 2019 SEAN Sen. All rights reserved.
//

import UIKit

class AppView: UIView {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        updateCornerShadow()
        updateCornerRadius()
    }
    
    override func awakeFromNib() {
        
        updateCornerShadow()
        updateCornerRadius()
    }
    
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    @IBInspectable var shadow: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        self.layer.cornerRadius = rounded ? 10 : 0
    }
    
    func updateCornerShadow() {
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds,
                                            cornerRadius: self.layer.cornerRadius).cgPath
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = CGSize(width: 10, height: 10)
        self.layer.shadowRadius = 1
        self.layer.masksToBounds = false
    }
}
