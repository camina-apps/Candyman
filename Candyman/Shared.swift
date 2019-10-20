//
//  Shared.swift
//  Candyman
//
//  Created by Carmen on 20.10.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import Foundation

public class Shared {
    private init() {}
    
    static public let coreDataStack = CoreDataStack(modelName: "test", storeType: .inMemory);
    
}
