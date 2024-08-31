//
//  RegisterView.swift
//  ToDoList
//
//  Created by Edward Nguyen on 31/8/24.
//

import SwiftUI

struct RegisterView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Sign Up", subTitlte: "Register a new Account", angle: -15, background: .yellow)
            
            // Sign up form
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Sign Up", background: .green) {
                    // Attempt sign up
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
