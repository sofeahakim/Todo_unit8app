//
//  Todo.swift
//  Todo_unit8app
//
//  Created by sofea hakim on 27/07/2023.
//

import Foundation

struct Todo: Identifiable {
    var id = UUID()
    var title: String
    var isComplete = false
    var subtitle = ""
}
