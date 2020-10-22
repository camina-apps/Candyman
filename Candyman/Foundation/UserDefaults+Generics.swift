//
//  UserDefaults+Generics.swift
//  Candyman
//
//  Created by Carmen on 21.10.20.
//  Copyright © 2020 Camina Apps. All rights reserved.
//

import Foundation


public extension UserDefaults {
    
    struct Key<Value> {
        fileprivate var name: String
        
        init(name: String) {
            self.name = name
        }
    }
    
    func get<Value>(for key: Key<Value>) -> Value? {
        value(forKey: key.name) as? Value
    }
    
    func set<Value>(_ value: Value?, for key: Key<Value>) {
        setValue(value, forKey: key.name)
    }
    
    func removeValue<Value>(for key: Key<Value>) {
        removeObject(forKey: key.name)
    }

}
