//
//  ContentView.swift
//  iExpense
//
//  Created by Seika Hirori on 4/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return VStack {
            new_tools_section_1_dot_6()
            
        }
        .padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct new_tools_section_1_dot_1: View {
    @StateObject var user:User = User()
    
    var body: some View {
        return VStack {
            List {
                Section {
                    Text("Your name is \(user.firstName) \(user.lastName)")
                    
                }
            
                Section {
                    TextField("First name", text: $user.firstName)
                    TextField("Last name", text: $user.lastName)
                }
                
            }
        }
        .padding()
    }
}

struct new_tools_section_1_dot_4: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        return VStack {
            Button("Show Sheet") {
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) {
                SecondView(name: "二")
            }
        }
    }
    
}

struct SecondView: View {
    let name: String
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        return VStack {
            Text("Hello, \(name)")
            
            Button("Dismiss") {
                dismiss()
            }
        }
    }
    
}

struct new_tools_section_1_dot_5: View {
    @State private var numbers = [Int]()
    @State private var currentNumber:Int = 1
    
    var body: some View {
        return NavigationView {
        
            VStack {
                List {
                    if numbers.isEmpty {
                        Text("meep")
                    }
                    
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                
                Button("Add Number :3") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .toolbar {
                EditButton()
            }
            
        }
    }
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

struct new_tools_section_1_dot_6: View {
    
    
    var body: some View {
        return VStack{
            Text("Hello :3")
        }
    }
    
}
