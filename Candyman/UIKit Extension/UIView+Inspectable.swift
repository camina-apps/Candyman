//
//  UIView+Inspectable.swift
//  Candyman
//
//  Created by Carmen on 04.01.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import UIKit

@IBDesignable
extension UIView {
    
    /// Border width
    @IBInspectable public var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    /// Border color
    @IBInspectable public var borderColor: UIColor {
        get {
            guard let borderColor = layer.borderColor else { return UIColor.clear }
            return UIColor(cgColor: borderColor)
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
    
    /// Mask to bounds
    @IBInspectable public var maskToBounds: Bool {
        get {
            return layer.masksToBounds
        }
        set {
            layer.masksToBounds = newValue
        }
    }
    
    /// Corners size
    ///
    /// Note to set maskToBounds to true
    @IBInspectable public var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    /// Shadow color
    ///
    /// Remeber to set maskToBounds to false
    @IBInspectable public var shadowColor: UIColor {
        get {
            guard let shadowColor = layer.shadowColor else { return UIColor.clear }
            return UIColor(cgColor: shadowColor)
        }
        set {
            layer.shadowColor = newValue.cgColor
        }
    }
    
    /// Shadow opacity
    ///
    /// Note to set maskToBounds to false
    @IBInspectable public var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    /// Shadow offset X
    ///
    /// Note to set maskToBounds to false
    @IBInspectable public var shadowOffsetX: CGFloat {
        get {
            return layer.shadowOffset.width
        }
        set {
            layer.shadowOffset = CGSize(width: newValue, height: layer.shadowOffset.height)
        }
    }
    
    /// Shadow offset Y.
    ///
    /// Note to set maskToBounds to false
    @IBInspectable public var shadowOffsetY: CGFloat {
        get {
            return layer.shadowOffset.height
        }
        set {
            layer.shadowOffset = CGSize(width: layer.shadowOffset.width, height: newValue)
        }
    }
    
    /// Shadow radius.
    ///
    /// Note to set maskToBounds to false
    @IBInspectable public var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }

}
