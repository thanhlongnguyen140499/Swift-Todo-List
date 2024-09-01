//
//  LoginView.swift
//  ToDoList
//
//  Created by Edward Nguyen on 31/8/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "Todo List", subTitlte: "Get Things done", angle: 15, background: .pink)
                
                // Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    TextField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(title: "Login", background: .blue) {
                        viewModel.login()
                    }
                }
                .offset(y: -50)
                
                
                // Create Account
                VStack {
                    Text("New around here?")
                    
                    NavigationLink {
                        RegisterView()
                    } label: {
                        Text("Create an Account")
                    }

                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
