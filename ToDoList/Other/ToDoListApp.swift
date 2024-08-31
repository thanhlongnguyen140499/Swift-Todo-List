//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Edward Nguyen on 29/8/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
