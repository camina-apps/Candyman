//
//  PersistenceController.swift
//  TestOutCoreDataStack
//
//  Created by Carmen Geelhaar on 08.01.22.
//

import CoreData

struct PersistenceController {
    
    static let shared = PersistenceController()
    private let container: NSPersistentContainer
    private let modelName = "TestOutCoreDataStack" // TODO: add model name

    private init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: modelName)
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        
        container.loadPersistentStores { storeDescription, error in
            if let error = error as NSError? {
                // TODO: Replace this implementation with code to handle the error appropriately.
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        container.viewContext.automaticallyMergesChangesFromParent = true
        container.viewContext.mergePolicy = NSMergeByPropertyStoreTrumpMergePolicy
    }
   
    public var viewContext: NSManagedObjectContext {
        container.viewContext
    }
    
    public func newBackgroundContext() -> NSManagedObjectContext {
        let backgroundContext = container.newBackgroundContext()
        backgroundContext.name = "background_context"
        backgroundContext.transactionAuthor = "app_background_context"
        backgroundContext.automaticallyMergesChangesFromParent = true
        backgroundContext.mergePolicy = NSMergeByPropertyStoreTrumpMergePolicy
        return backgroundContext
    }
    
    
    // MARK: - SwiftUI Preview
    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        
        // TODO: add items with viewContext
        // e.g.
        // for _ in 0..<10 {
        //     let newItem = Item(context: viewContext)
        //     newItem.timestamp = Date()
        // }
        
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()
    
}
