//
//  ChildViewControllerTests.swift
//  CandymanTests
//
//  Created by Carmen Probst on 28.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import XCTest
@testable import Candyman

class ChildViewControllerTests: XCTestCase {

    var myParentViewController: UIViewController!
    var myChildViewController: UIViewController!
    var myContainerView: UIView!

    override func setUp() {
        myParentViewController = UIViewController()
        myContainerView = UIView(frame: .zero)
        myParentViewController.view.addSubview(myContainerView)
        XCTAssert(myContainerView.subviews.count == 0)
        myChildViewController = UIViewController()
        myChildViewController.view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        myParentViewController.addChild(myChildViewController, containerView: myContainerView)
    }

    override func tearDown() {
        myParentViewController = nil
        myChildViewController = nil
        myContainerView = nil
    }

    func testAddChild() {
        XCTAssert(myParentViewController.children.count == 1)
        XCTAssert(myChildViewController.parent != nil)
        XCTAssert(myContainerView.subviews.count == 1)
    }

    func testRemoveChild() {
        myChildViewController.removeFromContainer()
        XCTAssert(myParentViewController.children.count == 0)
        XCTAssert(myChildViewController.parent == nil)
        print(myContainerView.subviews)
        XCTAssert(myContainerView.subviews.count == 0)
    }

    func testReplaceChildViewController() {
        let newChildViewController = UIViewController()
        myParentViewController.replace(myChildViewController, with: newChildViewController, animated: false)
        XCTAssert(myParentViewController.children.count == 1)
        XCTAssert(myChildViewController.parent == nil)
        XCTAssert(newChildViewController.parent != nil)
        XCTAssert(myContainerView.subviews.count == 1)
    }

}
