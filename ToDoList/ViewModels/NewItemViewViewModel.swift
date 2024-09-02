//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Edward Nguyen on 31/8/24.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert: Bool = false
    
    init () {}
    
    func save() {
        
    }
    
    func triggerAlert() {
        showAlert = true
    }
    
    func dismissAlert() {
        showAlert = false
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
