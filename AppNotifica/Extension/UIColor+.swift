//
//  UIColor+.swift
//  AppNotifica
//
//  Created by Andrey Goncalves on 18/11/25.
//

import Foundation
import UIKit

extension UIColor {
    static var viewBackgroundColor: UIColor {
        UIColor(named: "viewBackgroundColor") ?? .white
    }
    
    static var textFieldBackgroundColor: UIColor {
        UIColor(named: "textFieldBackgroundColor") ?? .white
    }
    
    static var imageLabelBackgroundColor: UIColor {
        UIColor(named: "imageLabelBackgroundColor") ?? .lightGray
    }
}
