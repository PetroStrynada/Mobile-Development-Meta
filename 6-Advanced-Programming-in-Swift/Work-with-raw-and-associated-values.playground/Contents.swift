import Cocoa

//Enumerations with raw and associated values examples
//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/dZ4vd/enumerations-with-raw-and-associated-values-examples

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


//Exercise: Work with raw and associated values
//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/F7Gpt/exercise-work-with-raw-and-associated-values


enum Ingredient: String {
    case chicken = "Add chicken"
    case lettuce = "Add lettuce"
    case sauce = "Add sauce"
    case lemon = "Add lemon"
    case croutons = "Add croutons"
}

let ingredient0 = Ingredient.lettuce

switch ingredient0 {
case .lettuce:
  print("We use \(ingredient0.rawValue) that has the richest flavor from all the lettuces")
case .croutons:
  print("Our \(ingredient0.rawValue) makes sure we do not have to use additional salt in our salads")
case .chicken: print("Our meals tastes better with \(ingredient0.rawValue) to raise the quality")
case .sauce:
    print("We use \(ingredient0.rawValue) that has the richest flavor from all the lettuces.")
case .lemon:
    print("We use \(ingredient0.rawValue) that has the richest flavor from all the lettuces.")
}



func ingredientDescription(for ingredient: Ingredient) {
    switch ingredient {
    case .chicken:
        print("We use \(ingredient) that has the richest flavor from all the lettuces.")
    case .lettuce:
        print("We use \(ingredient) that has the richest flavor from all the lettuces.")
    case .lemon:
        print("We use \(ingredient) that has the richest flavor from all the lettuces.")
    case .sauce:
        print("We use \(ingredient) that has the richest flavor from all the lettuces.")
    case .croutons:
        print("We use \(ingredient) that has the richest flavor from all the lettuces.")
    }
}

let ingredient1 = ingredientDescription(for: .chicken)
print(ingredient1)
let ingredient2 = ingredientDescription(for: .lettuce)
print(ingredient2)


enum RecipeInformation {
    case allergens(information: String)
}

let recipeInformation = RecipeInformation.allergens(information: "peanuts, milk, gluten")

switch recipeInformation {
case .allergens(let information):
    print("The meal includes the following allergens: \(information)")
}


enum Week: Int, CaseIterable {
  case Monday = 1
  case Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

//To use allCases property in your code, must an enum conform to CaseIterable protocol
for day in Week.allCases {
  print("\(day) is day \(day.rawValue) of the week")
}

//Prints:
/*
 Monday is day 1 of the week

 Tuesday is day 2 of the week

 Wednesday is day 3 of the week

 Thursday is day 4 of the week

 Friday is day 5 of the week

 Saturday is day 6 of the week
 
 Sunday is day 7 of the week
 */

