//
//  UIStackView+Subview.swift
//  Candyman
//
//  Created by Carmen on 09.01.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import Foundation

public extension UIStackView {
    
    /// Initialize an UIStackView with an array of UIView and common parameters.
    ///
    /// - Parameters:
    ///   - arrangedSubviews: The UIViews to add to the stack.
    ///   - axis: The axis along which the arranged views are laid out.
    ///   - spacing: The distance in points between the adjacent edges of the stack view’s arranged views. Default is 0.0
    ///   - alignment: The alignment of the arranged subviews perpendicular to the stack view’s axis. Default is .fill
    ///   - distribution: The distribution of the arranged views along the stack view’s axis. Default is .fill
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis,
                            spacing: CGFloat = 0.0,
                            alignment: UIStackView.Alignment = .fill,
                            distribution: UIStackView.Distribution = .fill) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
        self.alignment = alignment
        self.distribution = distribution
    }
    
    /// Adds array of views to the end of the arrangedSubviews array.
    ///
    /// - Parameter views: views array.
    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach { addArrangedSubview($0) }
    }
    
    /// Removes all views in stack’s array of arranged subviews.
    func removeArrangedSubviews() {
        arrangedSubviews.forEach { removeArrangedSubview($0) }
    }

}
