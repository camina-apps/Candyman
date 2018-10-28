//
//  StringExtensionTests.swift
//  CandymanTests
//
//  Created by Carmen Probst on 28.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import XCTest
@testable import Candyman

class StringExtensionTests: XCTestCase {

    func testBase64() {
        let candymanBase64 = "Q2FuZHltYW4="
        XCTAssertEqual(candymanBase64.fromBase64(), "Candyman", "decode base64 string is wrong")
        XCTAssertEqual("Candyman".toBase64(), candymanBase64, "encode to base64 string is wrong")
        XCTAssertNil("Not a base64 string".fromBase64())
    }

    func testEmptyOrWhitespace() {
        let whitespaceString = " "
        XCTAssertTrue(whitespaceString.isEmptyOrWhiteSpace, "didn't not detect whitespace")

        let emptyString = ""
        XCTAssertTrue(emptyString.isEmptyOrWhiteSpace, "didn't not detect empty string")

        let notEmptyString = " test "
        XCTAssertFalse(notEmptyString.isEmptyOrWhiteSpace, "didn't detect not empty string")
    }

    func testTrim() {
        var textWithespace = " username "
        let countBefore = textWithespace.count
        textWithespace.trim()
        XCTAssertEqual(textWithespace, "username", "did not trim whitespace")
        XCTAssertEqual(countBefore - 2, textWithespace.count, "did not remove correct number of whitespaces")
    }

    func testUppercaseFirstLetter() {
        var text = "lorem ipsum"
        text.uppercaseFirstLetter()
        XCTAssertEqual(text, "Lorem ipsum", "did not uppercase first letter")

        var emptyText = ""
        emptyText.uppercaseFirstLetter()
        XCTAssertEqual(emptyText, "")
    }

    func testIsEmail() {
        XCTAssert("candyman@test.com".matches(Regex.Email.pattern), "not detecting email address")
        XCTAssertFalse("not@com".matches(Regex.Email.pattern))
    }

    func testIsNumber() {
        XCTAssert("1293939338".matches(Regex.Number.pattern), "not detecting number")
        XCTAssertFalse("notANumber323".matches(Regex.Number.pattern))
    }

    func testIsHex() {
        XCTAssert("74657374".matches(Regex.Number.pattern), "not detecting hex")
        XCTAssertFalse("notHex323".matches(Regex.Number.pattern))
    }

    func testIsIPAdress() {
        XCTAssert("127.0.0.1".matches(Regex.IPAdress.pattern), "not detecting IP Address")
        XCTAssertFalse("187.399.449.939".matches(Regex.IPAdress.pattern))
    }

    func testIsHTMLTag() {
        XCTAssert("<h1>".matches(Regex.HtmlTag.pattern), "not detecting HTML tag")
        XCTAssertFalse(">hello>".matches(Regex.HtmlTag.pattern))
    }


}
