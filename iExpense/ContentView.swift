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
            new_tools_section_1_dot_2()
            
        }
        .padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct new_tools_part_1: View {
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

struct new_tools_section_1_dot_2: View {
    
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
    
    var body: some View {
        return VStack {
            Text("Hello, \(name)")
        }
    }
    
}
