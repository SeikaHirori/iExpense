//
//  AddView.swift
//  iExpense
//
//  Created by Seika Hirori on 4/4/23.
//

import SwiftUI

struct AddView: View {
    
    @State private var name: String = ""
    @State private var type: String = "Personal"
    @State private var amount: Double = 0.0
    
    let types:[String] = ["Business", "Personal"]
    
    var body: some View {

        return NavigationStack {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.automatic)
                
                TextField("Amount", value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
                
            }
            .navigationTitle("Add new expense")
        }

    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
