//
//  TodoDetailView.swift
//  Todo_unit8app
//
//  Created by sofea hakim on 27/07/2023.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
        
        Form {
            TextField("Title", text: $todo.title)
            Text(todo.title)
            TextField("Subtitle", text: $todo.subtitle)
            Toggle("isCompleted?", isOn: $todo.isComplete)
        }
        .navigationTitle("Todo detail")
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            TodoDetailView(todo: .constant(Todo(title:"Some Title")))
        }
    }
}
