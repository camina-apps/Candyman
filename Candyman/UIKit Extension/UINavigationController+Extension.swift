//
//  UINavigationController+Extension.swift
//  Candyman
//
//  Created by Carmen Probst on 28.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import UIKit

public extension UINavigationController {

    func replaceTopViewController(with viewController: UIViewController, animated: Bool) {
        if viewControllers.isEmpty {
            setViewControllers([viewController], animated: animated)
        } else {
            var viewControllersStack = viewControllers
            viewControllersStack[viewControllersStack.count - 1] = viewController
            setViewControllers(viewControllersStack, animated: animated)
        }
    }

    var rootViewController: UIViewController? {
        return viewControllers.first
    }

}
