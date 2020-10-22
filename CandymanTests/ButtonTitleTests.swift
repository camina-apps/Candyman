//
//  ButtonTitleTests.swift
//  CandymanTests
//
//  Created by Carmen on 22.10.20.
//  Copyright © 2020 Camina Apps. All rights reserved.
//

import XCTest

class ButtonTitleTests: XCTestCase {

    func testButtonTitleTextIsSet() {
        let titleText = "Login"
        let button = UIButton()
        button.setTitleForAllStates(titleText)
        
        XCTAssertEqual(button.title(for: .disabled), titleText)
        XCTAssertEqual(button.title(for: .focused), titleText)
        XCTAssertEqual(button.title(for: .highlighted), titleText)
        XCTAssertEqual(button.title(for: .normal), titleText)
        XCTAssertEqual(button.title(for: .reserved), titleText)
        XCTAssertEqual(button.title(for: .selected), titleText)
    }
    
    func testButtonTitleColorIsSet() {
        let button = UIButton()
        let titleColor = UIColor.red
        button.setTitleColorForAllStates(titleColor)
        
        XCTAssertEqual(button.titleColor(for: .disabled), titleColor)
        XCTAssertEqual(button.titleColor(for: .focused), titleColor)
        XCTAssertEqual(button.titleColor(for: .highlighted), titleColor)
        XCTAssertEqual(button.titleColor(for: .normal), titleColor)
        XCTAssertEqual(button.titleColor(for: .reserved), titleColor)
        XCTAssertEqual(button.titleColor(for: .selected), titleColor)
    }

}
