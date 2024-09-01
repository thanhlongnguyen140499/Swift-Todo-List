//
//  RegisterView.swift
//  ToDoList
//
//  Created by Edward Nguyen on 31/8/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Sign Up", subTitlte: "Register a new Account", angle: -15, background: .yellow)
            
            // Sign up form
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Sign Up", background: .green) {
                    // Attempt sign up
                    viewModel.register()
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
