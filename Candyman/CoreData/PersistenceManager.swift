//
//  PersistenceManager.swift
//  Candyman
//
//  Created by Carmen on 20.10.19.
//  Copyright © 2019 Camina Apps. All rights reserved.
//

import Foundation
import CoreData


class PersistenceManager {

    static var shared = PersistenceManager()

    private let persistentContainer: NSPersistentContainer
    private var isLoaded = false


    var mainContext: NSManagedObjectContext {
        precondition(isLoaded)
        return persistentContainer.viewContext
    }

    func newBackgroundContext() -> NSManagedObjectContext {
        precondition(isLoaded)
        return persistentContainer.newBackgroundContext()
    }

    private init() {
        let name = ""
        assert(name.count != 0, "You must set name to the name of your data model")
        persistentContainer = NSPersistentContainer(name: name)
    }

    func initializeModel(then completion: @escaping () -> Void) {
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


}
