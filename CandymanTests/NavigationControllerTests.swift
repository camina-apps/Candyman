//
//  NavigationControllerTests.swift
//  CandymanTests
//
//  Created by Carmen Probst on 28.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import XCTest
@testable import Candyman

class NavigationControllerTests: XCTestCase {

    var tigerVC: UIViewController!
    var pandaVC: UIViewController!
    var bearVC: UIViewController!

    override func setUp() {
        tigerVC = UIViewController()
        pandaVC = UIViewController()
        bearVC = UIViewController()
    }

    override func tearDown() {
        tigerVC = nil
        pandaVC = nil
        bearVC = nil
    }

    func testRootViewController() {
        let navVC = UINavigationController(rootViewController: tigerVC)
        navVC.pushViewController(pandaVC, animated: false)
        pandaVC.navigationController?.pushViewController(bearVC, animated: false)

        XCTAssert(navVC.rootViewController == tigerVC)
        XCTAssert(navVC.topViewController == bearVC)
    }

    func testReplaceTopViewController() {
        let navVC = UINavigationController(rootViewController: tigerVC)
        navVC.pushViewController(pandaVC, animated: false)
        pandaVC.navigationController?.pushViewController(bearVC, animated: false)

        XCTAssert(navVC.topViewController == bearVC)
        let anotherTigerVC = UIViewController()
        navVC.replaceTopViewController(with: anotherTigerVC, animated: false)

        XCTAssert(navVC.topViewController == anotherTigerVC)
        XCTAssertNil(bearVC.navigationController)
    }

    func testReplaceEmptyTopViewController() {
        let navVC = UINavigationController()
        XCTAssertNil(navVC.topViewController)
        navVC.replaceTopViewController(with: UIViewController(), animated: false)
        XCTAssertNotNil(navVC.topViewController)
    }

}
