//
//  String+Base64.swift
//  Candyman
//
//  Created by Carmen Probst on 28.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

public extension String {

    public func fromBase64() -> String? {
        guard let data = Data(base64Encoded: self) else { return nil }
        return String(data: data, encoding: .utf8)
    }

    public func toBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }

}
