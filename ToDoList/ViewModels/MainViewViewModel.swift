//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Edward Nguyen on 31/8/24.
//

import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String?
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        // Initialize currentUserId before the closure
        self.currentUserId = Auth.auth().currentUser?.uid ?? ""
        
        // Now it's safe to capture `self` in the closure
        self.handler = Auth.auth().addStateDidChangeListener { auth, user in
            if let user = user {
                // User is signed in
                print("User is signed in with uid: \(user.uid), email: \(user.email ?? "no email")")
                self.currentUserId = user.uid
            } else {
                // No user is signed in
                print("User is signed out")
                self.currentUserId = ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
    
    deinit {
        if let handler = handler {
            Auth.auth().removeStateDidChangeListener(handler)
        }
    }
}
