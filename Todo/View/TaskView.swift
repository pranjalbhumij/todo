//
//  TaskView.swift
//  Todo
//
//  Created by Baba Yaga on 20/12/24.
//

import SwiftUI

struct TaskView: View {
    @State var task: Task
    
    var body: some View {
        VStack (alignment: .leading){
            Text(task.title).font(.headline)
            Text("priority: \(task.priority.rawValue)").font(.subheadline)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    TaskView(task: ModelData.tasks[0])
}
