//
//  NSPredicate+Common.swift
//  Candyman
//
//  Created by Carmen on 26.07.20.
//  Copyright © 2020 Camina Apps. All rights reserved.
//

import Foundation

public extension NSPredicate {
    
    static var all = NSPredicate(format: "TRUEPREDICATE")
    static var none = NSPredicate(format: "FALSEPREDICATE")

}
