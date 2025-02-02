//
//  TodoList_AppApp.swift
//  TodoList App
//
//  Created by Yuk Yeung Chao on 2025-02-01.
//
import SwiftData
import SwiftUI

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: TodoItem.self)
        }
    }
}
