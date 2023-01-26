import SwiftUI

//let menu = ["Lasagna",
//            "Fettuccini Alfredo",
//            "Spaghetti",
//            "Avocato Toast",
//            "Tortellini",
//            "Pizza"]

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            List {
//                    ForEach(menu, id: \.self) {
//                        item in Text(item)
//                }
//            }
//        }
//
//    }
//}


struct ContentView: View {
    @ObservedObject var menuItems = MenuItems()
    
    var body: some View {
        VStack {
            List {
                ForEach(menuItems.meals) {
                    item in Text(item.name)
                }
            }
        }
    }
}


struct Item: Identifiable {
    let id = UUID()
    let name: String
}


class MenuItems: ObservableObject {
    @Published var meals: [Item] = itemsMenu()

    static func itemsMenu() -> [Item] {
        return [
            Item(name: "Lasagna"),
            Item(name: "Fettuccini Alfredo"),
            Item(name: "Spaghetti"),
            Item(name: "Avocato Toast"),
            Item(name: "Tortellini"),
            Item(name: "Pizza")
        ]
    }
}



