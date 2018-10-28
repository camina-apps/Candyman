//
//  String+Extension.swift
//  Candyman
//
//  Created by Carmen Probst on 27.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import Foundation

public extension String {

    public var isEmptyOrWhiteSpace: Bool {
        return trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).isEmpty
    }

    public mutating func trim() {
        self = trimmingCharacters(in: .whitespacesAndNewlines)
    }

    public func uppercasedFirstLetter() -> String {
        guard let first = first else { return "" }
        return String(first).uppercased() + dropFirst()
    }

    public mutating func uppercaseFirstLetter() {
        self = uppercasedFirstLetter()
    }
}
