//
//  UnderlineDefault.swift
//  AppNotifica
//
//  Created by Andrey Goncalves on 18/11/25.
//

import Foundation
import UIKit

class UnderlineDefault: UIView {
    init() {
        super.init(frame: .zero)
        initDefault()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault() {
        self.backgroundColor = UIColor.lightGray
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
