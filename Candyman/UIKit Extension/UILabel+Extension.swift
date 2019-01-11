//
//  UILabel+Extension.swift
//  Candyman
//
//  Created by Carmen on 04.01.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import Foundation

public extension UILabel {
    
    /// Calculates height based on text, width and font.
    ///
    /// - Returns: Returns estimated height
    func estimatedHeight(forWidth: CGFloat, text: String, ofSize: CGFloat) -> CGFloat {
        let size = CGSize(width: forWidth, height: CGFloat(MAXFLOAT))
        let options = NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: ofSize)]
        let rectangleHeight = String(text).boundingRect(with: size, options: options, attributes: attributes, context: nil).height
        return ceil(rectangleHeight)
    }
    
}
