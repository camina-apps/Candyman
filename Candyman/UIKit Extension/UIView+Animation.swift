//
//  UIView+Animation.swift
//  Candyman
//
//  Created by Carmen on 04.01.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import Foundation

public extension UIView {
    
    /// Creates a shake animation
    ///
    /// - Parameters:
    ///   - count: number of shakes. Default value is 2.
    ///   - duration: Shake duration. Default value is 0.15.
    ///   - translation: Shake translation. Default value is 5.
    func shake(count: Float = 2, duration: TimeInterval = 0.15, translation: Float = 5) {
        let animation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.repeatCount = count
        animation.duration = (duration) / TimeInterval(animation.repeatCount)
        animation.autoreverses = true
        animation.byValue = translation
        layer.add(animation, forKey: "shake")
    }
    
    /// Creates a pulse animation
    ///
    /// - Parameters:
    ///   - count: Pulse count. Default is 1.
    ///   - duration: Pulse duration. Default is 1.
    func pulse(count: Float = 1, duration: TimeInterval = 1) {
        let animation = CABasicAnimation(keyPath: "opacity")
        animation.duration = duration
        animation.fromValue = 0
        animation.toValue = 1
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        animation.autoreverses = true
        animation.repeatCount = count
        layer.add(animation, forKey: "pulse")
    }

    
    /// Fade in animation
    ///
    /// - Parameters:
    ///   - duration: animation duration in seconds. Default is 1 second
    ///   - completion: optional completion handler to run with animation finishes. Default is nil
    func fadeIn(duration: TimeInterval = 1, completion: ((Bool) -> Void)? = nil) {
        isHidden = false
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 1
        }, completion: completion)
    }
    
    
    /// Fade out animation
    ///
    /// - Parameters:
    ///   - duration: animation duration in seconds. Default is 1 second.
    ///   - completion: optional completion handler to run with animation finishes. Default is nil
    func fadeOut(duration: TimeInterval = 1, completion: ((Bool) -> Void)? = nil) {
        isHidden = false
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 0
        }, completion: completion)
    }

}
