import SwiftUI

struct ContentView: View {

    @State private var tasks: [String] = []
    @State private var newTask = ""

    var body: some View {
        NavigationView {
            VStack {

                TextField("New Task", text: $newTask)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button("Add Task") {
                    if !newTask.isEmpty {
                        tasks.append(newTask)
                        newTask = ""
                    }
                }
                .padding()

                List(tasks, id: \.self) { task in
                    Text(task)
                }
            }
            .navigationTitle("ToDo App")
        }
    }
}
