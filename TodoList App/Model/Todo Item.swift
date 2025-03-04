//
//  Todo Item.swift
//  TodoList App
//
//  Created by Yuk Yeung Chao on 2025-02-01.
//

import SwiftData

@Model

class TodoItem: Identifiable{
    var title: String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
    
    
}

let firstItem = TodoItem(title: "study for chemistry test", done: false)

let secondItem = TodoItem(title: "Finish Computer Science assignment", done: true)

let thirdItem = TodoItem(title: "go for a run around campus", done: false)


let exampleItem = [
    
    firstItem,
    
    secondItem,
    
    thirdItem,
    
]
