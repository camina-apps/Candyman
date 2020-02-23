//
//  StoryboardInitializable.swift
//  Candyman
//
//  Created by Carmen Probst on 28.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import UIKit

/// this protocol has self requirement, in order to adopt to this protocol you have to define your ViewController as final
public protocol StoryboardInitializable {
    static var storyboardName: String { get }
    static var storyboardBundle: Bundle? { get }
    static func makeFromStoryboard() -> Self
    func embedInNavigationController() -> UINavigationController
    func embedInNavigationController(navBarClass: AnyClass?) -> UINavigationController
}


public extension StoryboardInitializable where Self : UIViewController {

    static var storyboardName: String {
        "Main"
    }

    static var storyboardBundle: Bundle? {
        nil
    }

    /// convention is class name as Identifier
    static var storyboardIdentifier: String {
        String(describing: self)
    }

    static func makeFromStoryboard() -> Self {
        let storyboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }

    func embedInNavigationController() -> UINavigationController {
        embedInNavigationController(navBarClass: nil)
    }

    func embedInNavigationController(navBarClass: AnyClass?) -> UINavigationController {
        let navigationController = UINavigationController(navigationBarClass: navBarClass, toolbarClass: nil)
        navigationController.viewControllers = [self]
        return navigationController
    }

}
