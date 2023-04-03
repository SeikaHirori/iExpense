//
//  iExpenseApp.swift
//  iExpense
//
//  Created by Seika Hirori on 4/2/23.
//

import SwiftUI

@main
struct iExpenseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class User {
    @Published var firstName: String = "Bilbo"
    @Published var lastName: String = "Baggins"
}
