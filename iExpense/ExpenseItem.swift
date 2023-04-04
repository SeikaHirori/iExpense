import SwiftUI

struct ExpenseItem {

    let name: String
    let type: String
    let amount: Double
}

class Expenses: ObservableObject {

    @Published var items:[ExpenseItem] = [ExpenseItem]()
}