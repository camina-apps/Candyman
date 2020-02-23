//
//  String+Regex.swift
//  Candyman
//
//  Created by Carmen Probst on 27.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import Foundation

public enum Regex: String {
    case Email = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}$"
    case Number = "^[0-9]+$"
    case Hex = "^#?([a-f0-9]{6}|[a-f0-9]{3})$"
    case IPAddress = "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"
    case HtmlTag = "^<[^>]+>$"

    var pattern: String {
        rawValue
    }
}

public extension String {

    func matches(_ pattern: String) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES[c] %@", pattern)
        return predicate.evaluate(with: self)
    }
}
