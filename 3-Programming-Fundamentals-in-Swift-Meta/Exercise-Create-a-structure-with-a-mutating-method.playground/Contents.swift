/*
struct TableReservations {
    var personName: String
    let tableNumber: Int
    
    func printInfo() {
        print("\(personName) reserved table \(tableNumber)")
    }
    
    mutating func changeName(newPersonName: String) {
        self.personName = newPersonName
    }
    
    init(personName: String, tableNumber: Int) {
        self.personName = personName
        self.tableNumber = tableNumber
    }
}

var gestOne = TableReservations(personName: "Petro", tableNumber: 5)
gestOne.printInfo()
gestOne.changeName(newPersonName: "Olga")
gestOne.printInfo()
*/

struct TableReserve {
    var name: String
    let tableNumber: Int
    
    mutating func updateName(newName: String) {
        name = newName
    }
    
    func printInfo() {
        print("\(name) reserved table number \(tableNumber)")
    }
}

var gest1 = TableReserve(name: "Petro", tableNumber: 3)
gest1.printInfo()
gest1.updateName(newName: "Alex")
gest1.printInfo()
