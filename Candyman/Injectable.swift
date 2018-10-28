//
//  Injectable.swift
//  Candyman
//
//  Created by Carmen Probst on 28.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

public protocol Injectable {

    associatedtype T

    /// inject dependencies
    func inject(_: T)

    /// call this method e.g. viewDidLoad and check if depencies are set
    func assertDependencies()

}
