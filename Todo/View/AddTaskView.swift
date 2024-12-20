//
//  AddTaskView.swift
//  Todo
//
//  Created by Baba Yaga on 20/12/24.
//

import SwiftUI

struct AddTaskView: View {
    @Environment(\.dismiss) var dismiss
    @State private var taskTitle: String = ""
    @State private var selectedPriority: Priority = .high
        
    var body: some View {
        VStack (alignment: .center) {
            TextField("Note Title", text: $taskTitle)
            Picker("Priority", selection: $selectedPriority) {
                ForEach(Priority.allCases, id: \.self) { priority in
                    Text(priority.rawValue.capitalized)
                }
            }
            Button(action: {
                ModelData.tasks.append(Task(id: UUID().uuidString, title: taskTitle, priority: selectedPriority))
                dismiss()
                
            }, label: { Text("Add") } )
        }
    }
}

#Preview {
    AddTaskView()
}
