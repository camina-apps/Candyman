//
//  Date+Components.swift
//  Candyman
//
//  Created by Carmen Probst on 27.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

import Foundation

public extension Date {

    public func component(_ component: Calendar.Component) -> Int {
        return Calendar.current.component(component, from: self)
    }

}
