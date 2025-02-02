//
//  ContentView.swift
//  TodoList App
//
//  Created by Yuk Yeung Chao on 2025-02-01.
//

import SwiftUI

struct LandingView: View {
    // MARK: Stored properties
    
    // The item currently being addded
    @State var newItemDescription: String = ""
    
    
    //The search text
    
    @State var searchText = ""
    
    //The list of to-do items
    @State var todos: [TodoItem] = exampleItem
    
    // MARK: computed properties
    
    var body: some View {
        NavigationStack{
            VStack {
                
                List($todos){ $todo in
                    ItemView(currentItem: $todo)
                    // Delete a to-do Item
                        .swipeActions {
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    delete(todo)
                                }
                            )
                        }
                
                    
                    
                    
                }
                .searchable(text: $searchText)
                
                HStack{
                    TextField("Enter a to-do item", text: $newItemDescription)
                    
                    Button("ADD") {
                        createToDo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(20)
                
                
            }
            .navigationTitle("To do")
            
            
            
        }
    }
    
    // Mark: Function
    func createToDo(withTitle title: String){
        
        //create the new to-do item instance
        let todo = TodoItem(
            title: title,
            done: false
        )
        
        // Append to the array
        todos.append(todo)
        
    }
    
    func delete(_ todo: TodoItem){
        //Remove the provided to-do item from the array
        todos.removeAll {  currentItem in
              currentItem.id == todo.id
        }
    }
    
    
    
}


//#Preview {
//    LandingView()
//}

