//
//  ServiceLocater.swift
//  Candyman
//
//  Created by Carmen Geelhaar on 09.01.22.
//  Copyright © 2022 Camina Apps. All rights reserved.
//

import Foundation


// An alternative to dependency injection is using a service locator.
// The service locator design pattern also improves decoupling of classes from concrete dependencies.
// You create a class known as the service locator that creates and stores dependencies and then provides those dependencies on demand.
// https://en.wikipedia.org/wiki/Service_locator_pattern



class MyAppServiceLocater: ServiceLocater {
    // use for single instances ( Singletons)
    static var persistenceController: PersistenceController = PersistenceController.shared
    // or
    static var engineSingleton: Engine = V8()
    
    // if you want everytime a fresh instance, use the getter overwrite and return an new instance
    static var engine: Engine { V8() }
    
    // if you need to pass values for constructor use a function
    static func inlineEngine(cylinders: Int) -> Engine {
        SpecificInlineEngine(cylinders: cylinders)
    }
}


// Use a protocol ServiceLocater to switch out implementations in your test target
protocol ServiceLocater {
    static var persistenceController: PersistenceController { get }
    static var engine: Engine { get }
}

// use Mocks and other classes in your Tests
class TestServiceLocater: ServiceLocater {
    static var persistenceController: PersistenceController = PersistenceController.preview
    static var engine: Engine { V8Mock() }
}




// Example Data
protocol Engine {
    func start()
}

struct V8: Engine {
    func start() {
        // start the engine woohhrrr
    }
}

struct SpecificInlineEngine: Engine {
    let cylinders: Int
    func start() {
        // start the engine weehm
    }
}

struct V8Mock: Engine {
    func start() {
        print("engine start called")
    }
}
