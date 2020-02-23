//
//  String+Base64.swift
//  Candyman
//
//  Created by Carmen Probst on 28.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

public extension String {

    /// Creates a string from a  Base-64 encoded string to UTF-8 encoded string
    func base64Decoded() -> String? {
        guard let data = Data(base64Encoded: self) else { return nil }
        return String(decoding: data, as: UTF8.self)
    }

    /// Creates a string from aUTF-8 encoded string to a Base-64 encoded String
    func base64Encoded() -> String {
        Data(utf8).base64EncodedString()
    }
    
    /// Returns a new string created by replacing all characters in the string
    /// not allowed in a fragment URL component.
    func urlEncoded() -> String? {
        addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed)
    }

}
