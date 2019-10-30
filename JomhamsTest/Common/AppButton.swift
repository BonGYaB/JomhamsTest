//
//  UIButton.swift
//  JomhamsTest
//
//  Created by SEAN Sen on 6/3/19.
//  Copyright © 2019 SEAN Sen. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class AppButton: UIButton {
    
    override func awakeFromNib() {
        self.updateCornerRadius()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    @IBInspectable override var isHighlighted: Bool {
        didSet {
            self.configure()
        }
    }
    
    @IBInspectable var isTinkColor: Bool = false {
        didSet {
            self.configure()
        }
    }
    
    private func updateCornerRadius() {
        self.backgroundColor = .white
        self.layer.cornerRadius = rounded ? 10 : 0
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    private func configure() {
        if isTinkColor {
            self.backgroundColor = isHighlighted ? UIColor.lightGray : UIColor.white
        }
    }
}
