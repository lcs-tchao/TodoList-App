//
//  ItemView.swift
//  TodoList App
//
//  Created by Yuk Yeung Chao on 2025-02-01.
//

import SwiftUI

struct ItemView: View {
    
    let currentItem: TodoItem
    
    
    var body: some View {
        Label(
            title: {
                Text(currentItem.title)
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}


#Preview {
    List{
        ItemView(currentItem: firstItem)
        ItemView(currentItem: secondItem)
        ItemView(currentItem: thirdItem)
    }
}
