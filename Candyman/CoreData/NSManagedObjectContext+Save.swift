//
//  NSManagedObjectContext+Save.swift
//  CoreData
//
//  Created by Carmen Geelhaar on 08.01.22.
//

import CoreData

extension NSManagedObjectContext {
    
    @discardableResult
    public func saveIfNeeded() throws -> Bool {
        guard hasChanges else { return false }
        
        try save()
        return true
    }
    
}
