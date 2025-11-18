//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by Andrey Goncalves on 18/11/25.
//

import Foundation
import UIKit

class LabelDefault: UILabel {
    init(text: String, font: String) {
        super.init(frame: .zero)
        initDefault(text: text, font: font)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text: String, font: String) {
        self.textColor = .imageLabelBackgroundColor
        self.text = text
        self.font = UIFont(name: font, size: 16)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
