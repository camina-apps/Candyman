//
//  DateTests.swift
//  CandymanTests
//
//  Created by Carmen on 22.10.20.
//  Copyright © 2020 Camina Apps. All rights reserved.
//

import XCTest

class DateTests: XCTestCase {
    
    let date = Date(timeIntervalSinceReferenceDate: -123256823.0) // Feb 4, 1997  10:59:37

    
    func testDateReturnsYear() {
       XCTAssertEqual(date.component(.year), 1997)
    }
    
    func testDateReturnsMonth() {
        XCTAssertEqual(date.component(.month), 2)
    }
    
    func testDateReturnsDay() {
        XCTAssertEqual(date.component(.day), 4)
    }
    
    func testReturnsHour() {
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let date = Calendar.current.date(from: components) ?? Date()
        XCTAssertEqual(date.component(.hour), 8)
    }
    
    func testDateReturnsMinute() {
        XCTAssertEqual(date.component(.minute), 59)
    }
    
    func testDateReturnsSeconds() {
        XCTAssertEqual(date.component(.second), 37)
    }
    
    func testSameDay() {
        let dateComponents = DateComponents(year: 1997, month: 2, day: 4)
        let dateComponents2 = DateComponents(year: 1997, month: 2, day: 4, hour: 5)
        
        XCTAssertFalse(dateComponents == dateComponents2)
        XCTAssertTrue(dateComponents.isSameDay(as: dateComponents2))
    }
    
    func testNotSameDay() {
        let dateComponents = DateComponents(year: 1997, month: 2, day: 4)
        let dateComponents2 = DateComponents(year: 1997, month: 2, day: 8)
        
        XCTAssertFalse(dateComponents.isSameDay(as: dateComponents2))
    }
    
    func testSameMonth() {
        let dateComponents = DateComponents(year: 1997, month: 2, day: 4)
        let dateComponents2 = DateComponents(year: 1997, month: 2, day: 8)
        
        XCTAssertTrue(dateComponents.isSameMonth(as: dateComponents2))
    }
    
    func testNotSameMonth() {
        let dateComponents = DateComponents(year: 1997, month: 2, day: 4)
        let dateComponents2 = DateComponents(year: 1997, month: 3, day: 8)
        
        XCTAssertFalse(dateComponents.isSameMonth(as: dateComponents2))
    }
    
    func testSameYear() {
        let dateComponents = DateComponents(year: 1997, month: 2, day: 4)
        let dateComponents2 = DateComponents(year: 1997, month: 3, day: 8)
        
        XCTAssertTrue(dateComponents.isSameYear(as: dateComponents2))
    }
    
    func testNotSameYear() {
        let dateComponents = DateComponents(year: 1997, month: 2, day: 4)
        let dateComponents2 = DateComponents(year: 1996, month: 3, day: 8)
        
        XCTAssertFalse(dateComponents.isSameYear(as: dateComponents2))
    }

}
