//
//  TodoListView.swift
//  ToDoList
//
//  Created by Edward Nguyen on 31/8/24.
//

import FirebaseFirestore
import SwiftUI

struct TodoListView: View {
    @StateObject var viewModel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        // users/<id>/todos/<entries>
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos"
        )
        
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }
    
    var body: some View {
        NavigationView(content: {
            VStack {
                List(items) { item in
                    TodoListItemView(item: item).swipeActions {
                        Button(action: {
                            // Delete
                            viewModel.delete(id: item.id)
                        }, label: {
                            Text("Delete")
                        })
                        .tint(.red)
                    }
                    
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button(action: {
                    // Action
                    viewModel.showingNewItemView = true
                }, label: {
                    Image(systemName: "plus")
                })
            }
            .sheet(isPresented: $viewModel.showingNewItemView, content: {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            })
        })
    }
}

#Preview {
    TodoListView(userId: "kfCmKldMuzOjcoFrAEt0yUt0jyV2")
}
