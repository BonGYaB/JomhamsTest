//
//  AppImage.swift
//  JomhamsTest
//
//  Created by SEAN Sen on 6/6/19.
//  Copyright © 2019 SEAN Sen. All rights reserved.
//

import UIKit

@IBDesignable class AppImage: UIImageView {
    
    override func prepareForInterfaceBuilder() {
        self.updateCornerRadius()
        self.configure()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.updateCornerRadius()
        self.configure()
    }
    
    @IBInspectable override var tintColor: UIColor! {
        didSet {
            self.configure()
        }
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            self.configure()
        }
    }
    
    @IBInspectable var isTinkColor: Bool = false {
        didSet {
            self.updateCornerRadius()
        }
    }
    
    private func updateCornerRadius() {
        self.layer.cornerRadius = rounded ? 10 : 0
    }
    
    private func configure() {
        if isTinkColor {
            self.image = self.image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
        }
    }
}
