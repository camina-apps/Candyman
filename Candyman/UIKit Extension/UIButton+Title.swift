//
//  UIButton+Title.swift
//  Candyman
//
//  Created by Carmen on 09.01.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import Foundation

public extension UIButton {
    
    /// Set title color for all states
    ///
    /// - Parameter color: UIColor.
    func setTitleColorForAllStates(_ color: UIColor) {
        setTitleColor(color, for: .normal)
        setTitleColor(color, for: .selected)
        setTitleColor(color, for: .highlighted)
        setTitleColor(color, for: .disabled)
    }
    
    /// Set title for all states
    ///
    /// - Parameter title: title string
    func setTitleForAllStates(_ title: String) {
        setTitle(title, for: .normal)
        setTitle(title, for: .selected)
        setTitle(title, for: .highlighted)
        setTitle(title, for: .disabled)
    }
    
}
