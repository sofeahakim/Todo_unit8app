//
//  ContentView.swift
//  Todo_unit8app
//
//  Created by sofea hakim on 27/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [ Todo(title: "unit 8", subtitle: "CRUD"),
                                 Todo(title: "Unit 9"),
                                 Todo(title: "Adding feature in RehabCare", isComplete: true, subtitle: "calculating score" )]
    
    var body: some View {
        
        NavigationStack {
            List($todos) { $todo in
                NavigationLink{
                    TodoDetailView(todo: $todo)
                        
                    } label: {
                        HStack {
                            Image(systemName: todo.isComplete ? "checkmark.circle.fill" : "circle")
                                .onTapGesture {
                                    todo.isComplete.toggle()
                                }
                            VStack (alignment: .leading){
                                Text(todo.title)
                                    .strikethrough(todo.isComplete)
                                
                                if !todo.subtitle.isEmpty {
                                    Text(todo.subtitle)
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                        .strikethrough(todo.isComplete)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Todos")
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

