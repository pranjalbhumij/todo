//
//  TodoApp.swift
//  Todo
//
//  Created by Baba Yaga on 20/12/24.
//

import SwiftUI

@main
struct TodoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(tasks: ModelData.tasks)
        }
    }
}
