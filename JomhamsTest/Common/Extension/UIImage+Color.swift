//
//  UIImage+Color.swift
//  JomhamsTest
//
//  Created by SEAN Sen on 6/3/19.
//  Copyright © 2019 SEAN Sen. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    func setImageColor(color: UIColor) {
        let templateImage = self.image?.withRenderingMode(.alwaysTemplate)
        self.image = templateImage
        self.tintColor = color
    }
    
    func addCornerLayer(radius: CGFloat, borderWidth: CGFloat, borderColor: UIColor) {
        let radius = self.bounds.width / 2.0
        let rect = self.bounds
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: radius, height: radius))
        
        let maskLayer = CAShapeLayer()
        maskLayer.frame = rect
        maskLayer.path = path.cgPath
        self.layer.mask = maskLayer
        
        let borderPath = UIBezierPath(roundedRect: rect, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: radius, height: radius))
        
        let borderLayer = CAShapeLayer()
        borderLayer.frame = rect
        borderLayer.path = borderPath.cgPath
        borderLayer.strokeColor = borderColor.cgColor
        borderLayer.fillColor = nil
        borderLayer.lineWidth = borderWidth
        self.layer.masksToBounds = true
        self.layer.addSublayer(borderLayer)
    }
    
}
