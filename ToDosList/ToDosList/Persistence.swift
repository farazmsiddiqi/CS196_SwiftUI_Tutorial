//
//  Persistence.swift
//  ToDosList
//
//  Created by Faraz Siddiqi on 10/7/20.
//  Copyright © 2020 Faraz Siddiqi. All rights reserved.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "TodosList")
        
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved Error: \(error)")
            }
        }
        
        
    }
}
