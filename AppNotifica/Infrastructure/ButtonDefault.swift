//
//  ButtonDefault.swift
//  AppNotifica
//
//  Created by Andrey Goncalves on 18/11/25.
//

import Foundation
import UIKit

class ButtonDefault: UIButton {
    init(text: String) {
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text: String) {
        self.setTitle(text, for: .normal)
        self.layer.backgroundColor = UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1).cgColor
        self.layer.cornerRadius = 14
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
