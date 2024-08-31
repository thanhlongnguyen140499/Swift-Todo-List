//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Edward Nguyen on 31/8/24.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    init(email: String = "", password: String = "") {
        self.email = email
        self.password = password
    }
    
    func login() {
        
    }
    
    func validate() {
        
    }
}
