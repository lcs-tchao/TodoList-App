//
//  ItemView.swift
//  TodoList App
//
//  Created by Yuk Yeung Chao on 2025-02-01.
//

import SwiftUI

struct ItemView: View {
    
    let title: String
    let done: Bool
    
    
    var body: some View {
        Label(
            title: {
                Text(title)
            }, icon: {
                Image(systemName: done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}


#Preview {
    List{
        ItemView(title: "shoot a puck", done: false)
    }
}
