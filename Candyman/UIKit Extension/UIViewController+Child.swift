//
//  UIViewController+Child.swift
//  Candyman
//
//  Created by Carmen Probst on 10.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//
import UIKit

public extension UIViewController {

    /// Adds the specified view controller as a child of the current view controller and adds its view as a subview to the containerView.
    func addChild(_ child: UIViewController, containerView: UIView) {
        addChild(child)
        child.view.frame = containerView.bounds
        containerView.addSubview(child.view)
        child.didMove(toParent: self)

    }

    /// Removes the view controller from its parent and unlinks the view from its superview and its window, and removes it from the responder chain.
    func removeFromContainer() {
        guard parent != nil else { return }
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }

    /// Replace with new view controller and removes the old view controller
    func replace(_ oldViewController: UIViewController, with newViewController: UIViewController, animated: Bool) {
        guard let containerView = oldViewController.view.superview else { return }
        addChild(newViewController, containerView: containerView)

        if animated {
            newViewController.view.alpha = 0.0
            UIView.animate(withDuration: 0.5, animations: {
                newViewController.view.alpha = 1
                oldViewController.view.alpha = 0
            }) { finished in
                oldViewController.removeFromContainer()
            }
        } else {
            oldViewController.removeFromContainer()
        }
    }

}
