 //
//  ContentView.swift
//  ToDosList
//
//  Created by Faraz Siddiqi on 10/7/20.
//  Copyright © 2020 Faraz Siddiqi. All rights reserved.
//

import SwiftUI

import CoreData
 
struct ContentView: View {
    @Enviroenment(.\managedObjectContext) private var viewContext
    
    @FetchRequest(sortDescriptors: [])
    private var tasks: FetchedResults<Task>
    var body: some View {
        NavigationView {
            List {
                ForEach(tasks) { task in
                    Text(task.title ?? "Untitled")
                }
            }
        .navigationTitle("ToDo List")
            .navigationBarItems(trailing: Button("Add Task") {
                add task()
            })
        }
    }
    private func saveContext() {
        do {
            try viewContext.save()
        } catch {
            let error = error as NSError
            fatalError("Unresolved Error: \(error)")
        }
    }
    private func addTask() {
        let newTask = Task(ocntxt: viewContext)
        newTask.title = "New Task \(Date)"
        newTask.date = Date()
        
        viewContext.save
        
        saveContext()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
