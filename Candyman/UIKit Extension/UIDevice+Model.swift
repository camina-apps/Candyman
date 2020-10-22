//
//  UIDevice+Model.swift
//  Candyman
//
//  Created by Carmen Probst on 27.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import UIKit

public extension UIDevice {

    class var isPhone: Bool {
        UIDevice().userInterfaceIdiom == .phone
    }

    class var  isPad: Bool {
        UIDevice().userInterfaceIdiom == .pad
    }
    
    /// An alphanumeric string that uniquely identifies a device to the app’s vendor
    class var idForVendor: String? {
        UIDevice.current.identifierForVendor?.uuidString
    }

}
