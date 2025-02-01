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
    
    // MARK: computed properties
    
    var body: some View {
        NavigationStack{
            VStack {
                
                List{
                    ItemView(
                        title: "Study for chemistry test",
                        done: false
                    )
    
                    ItemView(
                        title: "Finish computer Science assignmnet",
                        done: true
                    )
                    
                    ItemView(
                        title: "go for a run around campus",
                        done: false
                    )
                   
                
                    
                }
                .searchable(text: $searchText)
                
                HStack{
                    TextField("Enter a to-do item", text: $newItemDescription)
                    
                    Button("ADD") {
                        //addd the new to-do item
                    }
                    .font(.caption)
                }
                    .padding(20)
            
                
            }
            .navigationTitle("To do")
            
            
            
        }
    }
}

#Preview {
    LandingView()
}

struct ItemView: View {
    
    let title: String
    let done: Bool
    
    
    var body: some View {
        Label(
            title: {
                Text(title)
            }, icon: {
                if done == true {
                    Image(systemName: "checkmark.circle")
                } else{
                    Image(systemName: "circle")
                }
                
                
                
            }
        )
    }
}
