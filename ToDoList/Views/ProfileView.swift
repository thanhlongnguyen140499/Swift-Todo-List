//
//  ProfileView.swift
//  ToDoList
//
//  Created by Edward Nguyen on 31/8/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    init() {
        
    }
    
    var body: some View {
        NavigationView(content: {
            VStack {
                
            }
            .navigationTitle("Profile")
        })
    }
}

#Preview {
    ProfileView()
}
