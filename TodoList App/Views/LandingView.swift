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
                    Label(
                        title: {
                            Text("Study for chemistry test")
                        }, icon: {
                            Image(systemName: "circle")
                        }
                    )
    
                    Label(
                        title: {
                            Text("Finish computer science assignment")
                        }, icon: {
                            Image(systemName: "circle")
                        }
                    )
                    
                    Label(
                        title: {
                            Text("Go for a run around campus")
                             }, icon: {
                            Image(systemName: "circle")
                        }
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
