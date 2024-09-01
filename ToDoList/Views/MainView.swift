//
//  ContentView.swift
//  ToDoList
//
//  Created by Edward Nguyen on 29/8/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
        
    var body: some View {
        if viewModel.isSignedIn {
            // signed in
            TodoListView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
