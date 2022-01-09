//
//  String+Formatting.swift
//  Candyman
//
//  Created by Carmen Probst on 27.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import Foundation

public extension String {
    
    /// Returns true if this string is empty or only contains whitespace characters.
    var isEmptyOrBlank: Bool {
        trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    //Returns true if this string is not empty and contains some characters except of whitespace characters.
    var isNotBlank: Bool {
        !trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
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
