//
//  UITextField+Extension.swift
//  Candyman
//
//  Created by Carmen on 08.01.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import Foundation

public extension UITextField {
    
    /// A Boolean value indicating whether a text field has text input
    var isEmpty: Bool {
        return text?.isEmpty == true
    }
    
    /// Clears text
    func clear() {
        text = ""
        attributedText = NSAttributedString(string: "")
    }
    
    /// Set placeholder text color
    ///
    /// - Parameter color: placeholder text color.
    func setPlaceHolderTextColor(_ color: UIColor) {
        guard let holder = placeholder, !holder.isEmpty else { return }
        attributedPlaceholder = NSAttributedString(string: holder, attributes: [.foregroundColor: color])
    }
    
    /// Add padding to the left of the textfield rect
    ///
    /// - Parameter padding: amount of padding to apply to the left of the textfield rect.
    func addLeftPadding(_ padding: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: frame.height))
        leftView = paddingView
        leftViewMode = .always
    }
    
}
