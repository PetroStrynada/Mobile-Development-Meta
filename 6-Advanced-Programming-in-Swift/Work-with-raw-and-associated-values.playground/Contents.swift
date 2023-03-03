import Cocoa

//Enums with raw values
print("Enums with raw values")

enum WestTanks: Int {
    case Leopard2 = 68
    case Leopard1 = 101
    case Challenger2 = 14
    case M1A2Abrams = 31
}

let numberOfLeopard2 = WestTanks.Leopard2.rawValue
print("Ukraine will get \(numberOfLeopard2) Leopard2 tanks for the first time")

func numberOfTanksForUkraine(type: WestTanks) {
    let numberOfTanks = type.rawValue
    print("Ukraine will get \(numberOfTanks) \(type) tanks for the first time")
}
numberOfTanksForUkraine(type: .M1A2Abrams)
numberOfTanksForUkraine(type: .Leopard1)

print()

//CaseIterable Protocol
print("CaseIterable Protocol")

enum PastaTypes: Int, CaseIterable {
  case spaghetti
  case penne
  case ravioli
  case rigatoni
}

let totalCaseCount = PastaTypes.allCases.count
print(totalCaseCount)

print()

//Enums with associated values
print("Enums with associated values")

enum PastaTypesA {
  case spaghetti(cookingTime: Int)
  case penne(cookingTime: Int)
  case ravioli(cookingTime: Int)
  case fusilli(cookingTime: Int)
  case rigatoni(cookingTime: Int)
}

func CheckIfPastaIsCooked(pasta: PastaTypesA) {
    switch pasta {
    case .spaghetti(let cookingTime):
        if cookingTime < 8 {
            print("Spaghetti is not ready")
        } else {
            print("Spaghetti is ready")
        }
    default: return
    }
}

CheckIfPastaIsCooked(pasta: .spaghetti(cookingTime: 5))

print()

//Using "where" statements
print("Using (where) statements")

func CheckedIfCooked2(for pasta: PastaTypesA) {
    switch pasta {
        
    case .spaghetti(let cookingTime) where cookingTime >= 8:
        print("Spaghetti is ready")
    case .spaghetti(let cookingTime) where cookingTime < 8:
        print("Spaghetti is not ready")
        
    case .ravioli(let cookingTime) where cookingTime >= 10:
        print("Ravioli is ready")
    case .ravioli(let cookingTime) where cookingTime < 10:
        print("Ravioli is not ready")
        
    case.fusilli(let cookingTime) where cookingTime >= 5:
        print("Fusilli is ready")
    case.fusilli(let cookingTime) where cookingTime < 5:
        print("Fusilli is not ready")
        
    case.penne(let cookingTime) where cookingTime >= 11:
        print("Penne is ready")
    case.penne(let cookingTime) where cookingTime < 11:
        print("Penne is not ready")
        
    case.rigatoni(let cookingTime) where cookingTime >= 15:
        print("Rigatoni is ready")
    case.rigatoni(let cookingTime) where cookingTime < 15:
        print("Rigatoni is not ready")
        
    default: print("Error 404")
    }
}

CheckedIfCooked2(for: .ravioli(cookingTime: 12))
CheckedIfCooked2(for: .penne(cookingTime: 8))
