//
//  TodosListApp.swift
//  ToDosList
//
//  Created by Faraz Siddiqi on 10/7/20.
//  Copyright © 2020 Faraz Siddiqi. All rights reserved.
//

import SwiftUI

@main
struct TodosListApp: App {
    
    let persistenceContainer = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
        ContentView()
            .environment(\.managedObjectContext, persistenceContainer.container)
        }
    }
}
