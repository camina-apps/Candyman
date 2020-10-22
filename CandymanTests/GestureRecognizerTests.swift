//
//  GestureRecognizerTests.swift
//  CandymanTests
//
//  Created by Carmen on 22.10.20.
//  Copyright © 2020 Camina Apps. All rights reserved.
//

import XCTest

class GestureRecognizerTests: XCTestCase {

    func testRemoveGestureRecognizer() throws {
        let tapGesture = UITapGestureRecognizer()
        let view = UIView()
        view.addGestureRecognizer(tapGesture)
        let gestureRecognizers = try XCTUnwrap(view.gestureRecognizers)
        XCTAssertEqual(gestureRecognizers.count, 1)
        
        tapGesture.removeFromView()
        XCTAssertEqual(view.gestureRecognizers, [])
    }

}
