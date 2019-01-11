//
//  UIGestureRecognizer+Remove.swift
//  Candyman
//
//  Created by Carmen on 09.01.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import Foundation

public extension UIGestureRecognizer {
    
    /// Remove Gesture Recognizer from its view.
    func removeFromView() {
        view?.removeGestureRecognizer(self)
    }
    
}
