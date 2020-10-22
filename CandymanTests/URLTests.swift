//
//  URLTests.swift
//  CandymanTests
//
//  Created by Carmen on 22.10.20.
//  Copyright © 2020 Camina Apps. All rights reserved.
//

import XCTest

class URLTests: XCTestCase {

    func testURLFromStaticString() {
        let url = URL(stringLiteral: "https://www.google.de")
        XCTAssertNotNil(url)
    }
    
    func testURLEncoded() {
        let stringToEncode = "hel mä"
        let encoded = stringToEncode.urlEncoded()
        XCTAssertEqual("hel%20m%C3%A4", encoded)
    }

}
