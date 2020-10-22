//
//  String+Formatting.swift
//  Candyman
//
//  Created by Carmen Probst on 27.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import Foundation

public extension String {
    
    /// A Boolean value indicating whether a string has no characters or whitespace or newlines (Unicode General Category Z*, `U+000A ~ U+000D`, and `U+0085`)
    var isEmptyOrWhiteSpace: Bool {
        trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }

    /// Removes the `String` characters contained in Whitespace or newlines character set. (Unicode General Category Z*, `U+000A ~ U+000D`, and `U+0085`) at the end and beginning of the string
    mutating func trim() {
        self = trimmingCharacters(in: .whitespacesAndNewlines)
    }

    /// Creates a new string with uppercased first letter (LTF)
    func uppercasedFirstLetter() -> String {
        guard let first = first else { return "" }
        return String(first).uppercased() + dropFirst()
    }

    /// Uppercase the first character (LTF)
    mutating func uppercaseFirstLetter() {
        self = uppercasedFirstLetter()
    }
}
