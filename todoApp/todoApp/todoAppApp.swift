//
//  todoAppApp.swift
//  todoApp
//
//  Created by kit on 22.05.26.
//

import SwiftUI

@main
struct todoAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
