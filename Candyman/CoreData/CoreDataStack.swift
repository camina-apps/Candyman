//
//  CoreDataStack.swift
//  Candyman
//
//  Created by Carmen on 20.10.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import Foundation
import CoreData

public class CoreDataStack {
    
    public enum StoreType {
        case sqLite
        case inMemory
        case binary
        
        var rawValue: String {
            switch self {
            case .sqLite: return NSSQLiteStoreType
            case .inMemory: return NSInMemoryStoreType
            case .binary: return NSBinaryStoreType
            }
        }
    }
  
    private let modelName: String
    private let persistentContainer: NSPersistentContainer
    private var isLoaded = false
  
    
    /// Initialize CoreDataStack with the given name and storyType. Be default the storeType is NSSQLiteStoreType for testing you can use NSInMemoryStoreType
    /// - Parameter modelName: model name
    /// - Parameter storeType: Persist data through the available store types
    public init(modelName: String, storeType: StoreType = .sqLite) {
        self.modelName = modelName
        
        let persistentStoreDescription = NSPersistentStoreDescription()
        persistentStoreDescription.type = storeType.rawValue
        
        persistentContainer = NSPersistentContainer(name: modelName)
        persistentContainer.persistentStoreDescriptions = [persistentStoreDescription]
    }
    
    /// Instructs the persistent container to load the persistent store
    public func initializeModel(then completion: @escaping () -> Void) {
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Core Data error: \(error.localizedDescription)")
            } else {
                self.isLoaded = true
                NSLog("Loaded Store: %@", description.url?.absoluteString ?? "nil")
                completion()
            }
        }
    }
    
    /// The managed object context associated with the main queue. (read-only)
    public var mainContext: NSManagedObjectContext {
        precondition(isLoaded)
        return persistentContainer.viewContext
    }

    /// Creates a private managed object context.
    public func newBackgroundContext() -> NSManagedObjectContext {
        precondition(isLoaded)
        return persistentContainer.newBackgroundContext()
    }
    
    /// Causes the persistent container to execute the block against a new private queue context.
    public func performBackgroundTask(_ block: @escaping (NSManagedObjectContext) -> Void) {
        precondition(isLoaded)
        persistentContainer.performBackgroundTask(block)
    }

}
