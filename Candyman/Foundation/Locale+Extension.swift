//
//  Locale+Extension.swift
//  Candyman
//
//  Created by Carmen Probst on 28.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import Foundation

public extension Locale {

    /// The country code for the locale.
    /// Examples of country codes include "GB", "FR", and "HK".
    var countryCode: String? {
        (self as NSLocale).countryCode
    }

}
