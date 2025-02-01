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
                    ItemView(currentItem: firstItem)
                    ItemView(currentItem: secondItem)
                    ItemView(currentItem: thirdItem)
                
                    
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

