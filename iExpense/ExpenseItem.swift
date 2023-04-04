import SwiftUI

struct ExpenseItem: Identifiable, Codable {

    var id: UUID = UUID()
    let name: String
    let type: String
    let amount: Double
}

class Expenses: ObservableObject {
    
    init() {
        
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {
                items = decodedItems
                return
            }
        }
        
        items = [ExpenseItem]()
    }
    
    @Published var items:[ExpenseItem] = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey:"Items")
            }
        }
    }
}
