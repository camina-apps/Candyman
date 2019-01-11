//
//  String+Formatting.swift
//  Candyman
//
//  Created by Carmen Probst on 27.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import Foundation

public extension String {

    var isEmptyOrWhiteSpace: Bool {
        return trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).isEmpty
    }

    mutating func trim() {
        self = trimmingCharacters(in: .whitespacesAndNewlines)
    }

    func uppercasedFirstLetter() -> String {
        guard let first = first else { return "" }
        return String(first).uppercased() + dropFirst()
    }

    mutating func uppercaseFirstLetter() {
        self = uppercasedFirstLetter()
    }
}
