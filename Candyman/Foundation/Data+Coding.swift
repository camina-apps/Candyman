//
//  Data+DeviceToken.swift
//  Candyman
//
//  Created by Carmen on 20.10.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import Foundation

public extension Data {
    
    /// converts into a Base16-encoded / hexadecimal string representation
    func toDeviceTokenString() -> String {
        self.map { String(format: "%02x", $0) }.joined()
    }
    
    /// creates a UTF-8 encoded string
    func utf8Encoded() -> String? {
        String(data: self, encoding: .utf8)
    }

}
