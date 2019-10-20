//
//  BaseOperation.swift
//  Candyman
//
//  Created by Carmen on 20.10.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import Foundation

public class BaseOperation : Operation {

    public override var isAsynchronous: Bool {
        return true
    }

    private var _executing = false {
        willSet {
            willChangeValue(forKey: "isExecuting")
        }
        didSet {
            didChangeValue(forKey: "isExecuting")
        }
    }

    public override var isExecuting: Bool {
        return _executing
    }

    private var _finished = false {
        willSet {
            willChangeValue(forKey: "isFinished")
        }

        didSet {
            didChangeValue(forKey: "isFinished")
        }
    }

    public override var isFinished: Bool {
        return _finished
    }

    public override func start() {
        _executing = true
        execute()
    }

    public func execute() {
        fatalError("You must override this")
    }

    public func finish() {
        _executing = false
        _finished = true
    }
}
