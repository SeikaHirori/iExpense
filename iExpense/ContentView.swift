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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            new_tools_part_1()
            
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
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        .padding()
    }

    
}
