//
//  UIDevice+Model.swift
//  Candyman
//
//  Created by Carmen Probst on 27.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import UIKit

public extension UIDevice {

    public static func isPhone() -> Bool {
        return UIDevice().userInterfaceIdiom == .phone
    }

    public static func isPad() -> Bool {
        return UIDevice().userInterfaceIdiom == .pad
    }

}
