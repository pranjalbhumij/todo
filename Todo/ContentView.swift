//
//  ContentView.swift
//  Todo
//
//  Created by Pranjal Bhumij on 20/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var tasks: [Task]
    @State var isNewtask: Bool = false
    
    var orderedTasks: [Task] {
        orderByPriority()
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                taskList
            }
            .navigationDestination(isPresented: $isNewtask) {
                AddTaskView()
            }
            .padding()
            .onAppear {
                tasks = ModelData.tasks
            }
        }
    }
    
    var taskList: some View {
        List {
            ForEach(orderedTasks) { task in
                TaskView(task: task)
            }
        }
        .scrollContentBackground(.hidden)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing){
                Button(action: {
                    isNewtask = true
                }) {
                    Image(systemName: "plus")
                }
            }
        }
    }
    
    func orderByPriority() -> [Task] {
        tasks.sorted {
            $0.priority < $1.priority
        }
    }
}

#Preview {
    ContentView(tasks: ModelData.tasks)
}
