//
//  UIScrollView+Scrolling.swift
//  Candyman
//
//  Created by Carmen Probst on 27.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import UIKit

public extension UIScrollView {

    public func scrollToTop(animated: Bool) {
        setContentOffset(.zero, animated: animated)
    }

    public func scrollToBottom(animated: Bool) {
        let bottomOffset = CGPoint(x: 0, y: contentSize.height - bounds.size.height + contentInset.bottom)
        guard bottomOffset.y > 0 else { return }
        setContentOffset(bottomOffset, animated: animated)
    }

    public func scrollTo(view: UIView, animated: Bool) {
        guard let origin = view.superview else { return }
        let childStartPoint = origin.convert(view.frame.origin, to: self)
        let rect = CGRect(x: 0, y: childStartPoint.y, width: 1, height: self.frame.height)
        scrollRectToVisible(rect, animated: animated)
    }

}
