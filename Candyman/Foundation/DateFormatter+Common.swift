//
//  DateFormatter+Common.swift
//  Candyman
//
//  Created by Carmen on 26.07.20.
//  Copyright © 2020 Camina Apps. All rights reserved.
//

import Foundation

public extension DateFormatter {
    
    static var short: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
    
    static var shortTime: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter
    }()
    
    static var shortDate: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter
    }()

}
