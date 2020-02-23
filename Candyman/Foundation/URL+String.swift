//
//  URL+String.swift
//  Candyman
//
//  Created by Carmen on 23.02.20.
//  Copyright © 2020 Camina Apps. All rights reserved.
//

import Foundation

extension URL: ExpressibleByStringLiteral {

    public init(stringLiteral value: StaticString) {
        self = URL(string: "\(value)")! // swiftlint:disable:this force_unwrapping
    }

}
