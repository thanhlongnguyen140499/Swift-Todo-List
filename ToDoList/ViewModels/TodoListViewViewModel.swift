//
//  TodoListViewModel.swift
//  ToDoList
//
//  Created by Edward Nguyen on 31/8/24.
//

import Foundation

//// ViewModel for list of items view
//// Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init () {}
}
