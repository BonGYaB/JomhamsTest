//
//  NibIntializable.swift
//  JomhamsTest
//
//  Created by SEAN Sen on 6/2/19.
//  Copyright © 2019 SEAN Sen. All rights reserved.
//

import Foundation
import UIKit

protocol NibIntializable {
    
}

extension NibIntializable where Self: UIViewController {
    
    static func initialNib() -> UIViewController {
        let type = Mirror(reflecting: self).subjectType
        let nibName = String(describing: type).components(separatedBy: ".")[0]
        let controller = Self(nibName: nibName, bundle: nil)
        controller.modalPresentationStyle = .fullScreen
        return controller
    }
    
}
