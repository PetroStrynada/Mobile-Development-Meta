import Cocoa

//What are subclasses?
//https://www.coursera.org/learn/advanced-programming-in-swift/lecture/BClQD/what-are-subclasses

protocol God {
    var divineAbility: String { get }
}

//to do with protocol
class SuperHero {
    //is a record for calculated properties
    var name: String {
        "Name"
    }
    var planet: String {
        "Some"
    }

    func greeting() {
        print("Hi, I'm \(name) from \(planet)")
    }
}

class BlackWidow: SuperHero {
    override var name: String {
        "Natasha Romanoff"
    }
    override var planet: String {
        "Earth"
    }
}

class Loki: SuperHero, God {
    let divineAbility: String = "lie"
    
    override var name: String {
        "Loki"
    }
    override var planet: String {
        "Jotunheim"
    }
    
    override func greeting() {
        print("Hi, I'm \(name) from \(planet), the God of \(divineAbility)")
    }
}

class Thor: SuperHero, God {
    let divineAbility: String = "thunder"
    
    override var name: String {
        "Thor"
    }
    override var planet: String {
        "Asgard"
    }
    
    override func greeting() {
        print("Hi, I'm \(name), the God of \(divineAbility)")
        print("From \(planet)")
    }
}

let blackWidow = BlackWidow()
let loki = Loki()
let thor = Thor()
blackWidow.greeting()
loki.greeting()
thor.greeting()

print()

//Access control
//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/wWzlb/access-control

class ClassIdentifier {
    open var number = 1
    open func doSomething() {
    }
}

/* 'ingredients' is inaccessible due to 'private' protection level
class SecretFood {
    private var ingredients: [String] = []
}

class Chef {
    func cookSecretFood(secretFood: SecretFood) {
        secretFood.ingredients = []
    }
}
*/

open class SecretFood {
    private var ingredients: [String] = ["LOVE, HONEY"]
    fileprivate func readSecretIngredients() {
        print("Secret ingredients")
        print(ingredients)
    }
    //For the Chef2 that must be in another file:
    internal func readSecretIngredientsChef2() {
        print("Secret ingredients")
        print(ingredients)
    }
}

class Chef {
    func cookSecretFood(secretFood: SecretFood) {
        print(secretFood.readSecretIngredients())
    }
}
let chef = Chef()
print(chef.cookSecretFood(secretFood: SecretFood()))

//For the Chef2 that must be in another file
class Chef2 {
    func cookSecretFood(secretFood: SecretFood) {
        print(secretFood.readSecretIngredientsChef2())
    }
}
let chef2 = Chef2()
print(chef2.cookSecretFood(secretFood: SecretFood()))

print()


//Exercise: Inheritance
//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/NhlJX/exercise-inheritance

//Step 1: Create a base class
class Dish {
    //Step 2: Declare the properties private
    private let name: String
    private let ingredients: [String]
    
    //Step 3: Create a memberwise initializer
    init(name: String, ingredients: [String]) {
        self.name = name
        self.ingredients = ingredients
    }
    
    //Step 4: Define a method
    func printInfo() {
        //Step 5: Update the method body
        print(name)
        print(ingredients)
    }
}

//Step 6: Subclass the base class
//Step 9: Declare child classes as final
final class AppetizerDish: Dish {
    override func printInfo() {
        print("Appetizer")
        super.printInfo()
    }
}

//Step 8: Create another child class
//Step 9: Declare child classes as final
final class MainDish: Dish {
}

//Step 10: Create a for-loop
for _ in 1...5 {
    let randomNumber = Int.random(in: 0...1)
    //Step 11: Create a random dish
    let dish: Dish
    if randomNumber == 0 {
        dish = AppetizerDish(name: "Margherita Flatbread",
                             ingredients: [
                                "Margherita",
                                "Flatbread",
                             ]
        )
    } else {
        dish = MainDish(name: "Super Spaghetti",
                        ingredients: [
                            "Spaghetti",
                            "Tomato sauce",
                        ]
        )
    }
    //Step 12: Downcast using an if let statement
    if let appetizerDish = dish as? AppetizerDish {
        dish.printInfo()
    }
    
    //Step 13: Type check
    if dish is MainDish {
        dish.printInfo()
    }
}


