//
//  TLButton.swift
//  ToDoList
//
//  Created by Edward Nguyen on 31/8/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            // Action
            
        }, label: {
            ZStack(content: {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            })
        })
        .padding()
    }
}

#Preview {
    TLButton(title: "button", background: .pink) {
        // Do Action
    }
}
