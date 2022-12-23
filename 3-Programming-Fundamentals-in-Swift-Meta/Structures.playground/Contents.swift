import Cocoa

var greeting = "Hello, playground"


struct MenuItems {
    let name: String
    var price: Double
    var ingredients: [String]
    
    func callIngredients() {
        print("Ingredients are \(ingredients)")
    }
    func getInformation() {
        print("\(name): \(price)$")
    }
    
    init(price: Double = 0.00, name: String = "Unknown", ingredients: [String]){
        self.price = price
        self.name = name
        self.ingredients = ingredients
    }
    
}


let apple = MenuItems(price: 1.00, name: "Apple", ingredients: ["App", "le"])
apple.getInformation()
apple.callIngredients()

print()

let macaroniWithCheese = MenuItems(price: 9.99, name: "Macaroni with cheese", ingredients: ["Cheese", "Macaroni"])
macaroniWithCheese.getInformation()
macaroniWithCheese.callIngredients()

print()



struct Recipe {
    let name: String
    let ingredients: Set<String>
    let steps: [String]
    
    
    func getName() {
        print(name)
    }
    func getIngredients() {
        print(ingredients)
    }
    func getSteps() {
        for step in steps {
            print(step)
        }
    }
    
    func getInformation() {
        print("For \(name) you should have:")
        getIngredients()
        print("And do all in such way:")
        getSteps()
    }
    
}

let chickenWithApples = Recipe(
    name: "Chicken with apples" ,
    ingredients: [
        "Chicken",
        "Apples",
        "Spices"
    ],
    steps: [
        "Step one take chicken",
        "Step two take apple",
        "Step tree put apple inside the chicken",
        "Step four add spices",
        "Step five put it all in oven"
    ]
)

chickenWithApples.getInformation()

print()




//mutating method need to change properties in structure
struct Car {
    var number: Int = 0
    let name: String
    let color: String
    
    mutating func numberIncrease() {
        number += 1
    }
    mutating func numberDecrease() {
        number -= 1
    }
}

var newCar = Car(name: "Mercedes", color: "White")
print(newCar.number)
newCar.numberIncrease()
print(newCar.number)
newCar.numberIncrease()
newCar.numberIncrease()
newCar.numberIncrease()
newCar.numberDecrease()
print(newCar.number)

print()



