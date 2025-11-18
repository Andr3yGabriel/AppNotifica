//
//  TextFieldDefault.swift
//  AppNotifica
//
//  Created by Andrey Goncalves on 18/11/25.
//

import Foundation
import UIKit

class TextFieldDefault: UITextField {
    init(text: String) {
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text: String) {
        self.backgroundColor = .textFieldBackgroundColor
        self.placeholder = text
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
