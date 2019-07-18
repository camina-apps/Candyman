//
//  UIView+Extension.swift
//  Candyman
//
//  Created by Carmen on 04.01.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import UIKit

public extension UIView {
    
    /// Set the corner radius
    ///
    /// - Parameter radius: Radius value.
    func cornerRadius(_ radius: CGFloat) {
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }
    
    /// Creates a border
    ///
    /// - Parameters:
    ///   - color: Border color
    ///   - radius: Border radius
    ///   - width: Border width
    public func border(color: UIColor, radius: CGFloat, width: CGFloat) {
        layer.borderWidth = width
        layer.cornerRadius = radius
        layer.shouldRasterize = false
        layer.rasterizationScale = 2
        clipsToBounds = true
        layer.masksToBounds = true
        layer.borderColor = color.cgColor
    }
    
    /// Create a shadow on the UIView
    ///
    /// - Parameters:
    ///   - offset: Shadow offset.
    ///   - opacity: Shadow opacity.
    ///   - radius: Shadow radius.
    ///   - color: Shadow color. Default is black.
    func shadow(offset: CGSize, opacity: Float, radius: CGFloat, cornerRadius: CGFloat = 0, color: UIColor = UIColor.black) {
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowRadius = radius
        if cornerRadius != 0 {
            layer.cornerRadius = cornerRadius
            layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
        }
        layer.masksToBounds = false
    }
    
    /// Removes all subviews from current view
    func removeAllSubviews() {
        subviews.forEach { $0.removeFromSuperview() }
    }

    static func makeFromNib<T>(withOwner: Any? = nil, options: [UINib.OptionsKey : Any]? = nil) -> T where T: UIView {
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: "\(self)", bundle: bundle)

        guard let view = nib.instantiate(withOwner: withOwner, options: options).first as? T else {
            fatalError("Could not load view from nib file.")
        }
        return view
    }
    
}

