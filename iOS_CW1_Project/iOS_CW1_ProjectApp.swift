//
//  iOS_CW1_ProjectApp.swift
//  iOS_CW1_Project
//
//  Created by User-2 on 2024-03-18.
//

import SwiftUI

@main
struct iOS_CW1_ProjectApp: App {
    let persistenceController = PersistenceController.shared

    let test = 0
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
