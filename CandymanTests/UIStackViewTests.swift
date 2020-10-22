//
//  UIStackViewTests.swift
//  CandymanTests
//
//  Created by Carmen on 22.10.20.
//  Copyright © 2020 Camina Apps. All rights reserved.
//

import XCTest

class UIStackViewTests: XCTestCase {

    func testSubviewsAddedToStackView() {
        let view1 = UIView()
        let view2 = UIView()
        let view3 = UIView()
        let stackView = UIStackView()
        XCTAssertEqual(stackView.arrangedSubviews, [])
        
        stackView.addArrangedSubviews([view1, view2, view3])
        XCTAssertNotEqual(stackView.arrangedSubviews, [])
        XCTAssertEqual(stackView.arrangedSubviews.count, 3)
    }
    
    func testSubviewsRemovedFromStackView() {
        let view1 = UIView()
        let view2 = UIView()
        let view3 = UIView()
        let stackView = UIStackView()
        stackView.addArrangedSubviews([view1, view2, view3])
        XCTAssertEqual(stackView.arrangedSubviews.count, 3)
        
        stackView.removeArrangedSubviews()
        XCTAssertEqual(stackView.arrangedSubviews, [])
    }
    
    func testInitStackViewWithSubviews() {
        let stackView = UIStackView(arrangedSubviews: [UIView(), UIView()], axis: .horizontal, spacing: 3, alignment: .center, distribution: .equalSpacing)
        
        XCTAssertEqual(stackView.subviews.count, 2)
        XCTAssertEqual(stackView.axis, NSLayoutConstraint.Axis.horizontal)
        XCTAssertEqual(stackView.spacing, 3)
        XCTAssertEqual(stackView.alignment, UIStackView.Alignment.center)
        XCTAssertEqual(stackView.distribution, UIStackView.Distribution.equalSpacing)
    }

}
