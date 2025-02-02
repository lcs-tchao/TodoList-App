//
//  ContentView.swift
//  TodoList App
//
//  Created by Yuk Yeung Chao on 2025-02-01.
//

import SwiftData
import SwiftUI

struct LandingView: View {
    // MARK: Stored properties
    
    // The item currently being addded
    @State var newItemDescription: String = ""
    
    
    //The search text
    
    @State var searchText = ""
    
    
    // Access the model context (required to do addition, deletions, updations, et cetera)
    @Environment(\.modelContext) var modelContext
    
    //The list of to-do items
    @Query var todos: [TodoItem]
    
    // MARK: computed properties
    
    var body: some View {
        NavigationStack{
            VStack {
                
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)
                 
                    }
                    .onDelete(perform: removeRows)
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
        modelContext.insert(todo)
        
    }
    
    func removeRows(at offsets: IndexSet){
        for offset in offsets{
            modelContext.delete(todos[offset])
        }
    }
    
    
    
}


//#Preview {
//    LandingView()
//}

