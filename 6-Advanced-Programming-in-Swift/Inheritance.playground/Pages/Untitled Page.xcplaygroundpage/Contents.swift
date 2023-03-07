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

class SecretFood {
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


