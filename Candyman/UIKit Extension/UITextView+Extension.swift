//
//  UITextView+Extension.swift
//  Candyman
//
//  Created by Carmen on 08.01.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import Foundation

public extension UITextView {
    
    /// Clears text
    func clear() {
        text = ""
        attributedText = NSAttributedString(string: "")
    }

}
