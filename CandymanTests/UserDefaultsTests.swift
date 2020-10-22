//
//  UserDefaultsTests.swift
//  CandymanTests
//
//  Created by Carmen on 21.10.20.
//  Copyright © 2020 Camina Apps. All rights reserved.
//

import XCTest
@testable import Candyman


extension UserDefaults.Key {
    static var onboarding: UserDefaults.Key<Bool> { UserDefaults.Key<Bool>(name: "onboardingCompleted") }
    static var userName: UserDefaults.Key<String> { UserDefaults.Key<String>(name: "UserName") }
}


class UserDefaultsTests: XCTestCase {
    
    let suiteName = "UserDefaultsTest"
    var userDefaults: UserDefaults!

    override func setUpWithError() throws {
        userDefaults = UserDefaults.init(suiteName: suiteName)
    }

    override func tearDownWithError() throws {
        userDefaults.removePersistentDomain(forName: suiteName)
    }
    
    func testUserDefaultsReturnsValue() throws {
        XCTAssertNil(userDefaults.get(for: .onboarding))
        
        userDefaults.set(true, for: .onboarding)
        
        let valueOnboarding = try XCTUnwrap(userDefaults.get(for: .onboarding))
        XCTAssertTrue(valueOnboarding)
    }
    
    func testUserDefaultsReturnsNilForNotSetValue() {
        XCTAssertNil(userDefaults.get(for: .userName))
    }
    
    func testUserDefaultsRemovesValue() {
        userDefaults.set(true, for: .onboarding)
        XCTAssertNotNil(userDefaults.get(for: .onboarding))
        
        userDefaults.removeValue(for: .onboarding)
        
        XCTAssertNil(userDefaults.get(for: .onboarding))
    }
}
