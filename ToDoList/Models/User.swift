//
//  User.swift
//  ToDoList
//
//  Created by Edward Nguyen on 31/8/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
