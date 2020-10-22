//
//  DateComponents+Compare.swift
//  Candyman
//
//  Created by Carmen on 26.07.20.
//  Copyright © 2020 Camina Apps. All rights reserved.
//

import Foundation

public extension DateComponents {
    
    func isSameDay(as other: DateComponents) -> Bool {
        year == other.year && month == other.month && day == other.day
    }
    
    func isSameMonth(as other: DateComponents) -> Bool {
        year == other.year && month == other.month
    }
    
    func isSameYear(as other: DateComponents) -> Bool {
        year == other.year
    }
    
}
