//
//  UIScreen+Size.swift
//  Candyman
//
//  Created by Carmen on 04.01.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import Foundation

public extension UIScreen {
 
    /// Screen width
    static var screenWidth: CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    /// Screen height
    static var screenHeight: CGFloat {
        return UIScreen.main.bounds.size.height
    }

}
