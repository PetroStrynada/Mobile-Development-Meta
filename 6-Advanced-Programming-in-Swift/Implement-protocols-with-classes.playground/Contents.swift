import Cocoa

//Protocol examples

//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/WXF0o/protocol-examples

//Multiple Protocols in Practice
protocol GoodChef {
    func cookGoodFood()
}

protocol GreatChef {
    func cookGreatFood()
}

protocol ExcellentChef {
    func cookExcellentFood()
}

//Inheriting the GoodChef protocol
class Person1: GoodChef {
    func cookGoodFood() {
        <#code#>
    }
}

//Inheriting the GreatChef protocol
class Person2: GoodChef, GreatChef {
    func cookGoodFood() {
        <#code#>
    }
    
    func cookGreatFood() {
        <#code#>
    }
}

extension Person2: ExcellentChef {
    func cookExcellentFood() {
        <#code#>
    }
}

//Here is an example of organizing protocol inheritance using extensions:
class Person3 {
    
}

extension Person3: GoodChef {
    func cookGoodFood() {
        <#code#>
    }
}
extension Person3: GreatChef {
    func cookGreatFood() {
        <#code#>
    }
}
extension Person3: ExcellentChef {
    func cookExcellentFood() {
        <#code#>
    }
}

//At this point, you’ve explored how you can make a class inherit three different protocols.
protocol BlackBeltChef: GoodChef, GreatChef, ExcellentChef {
    func cookBlackBeltFood()
}

class Person4: BlackBeltChef {
    func cookGoodFood() {
        <#code#>
    }
    
    func cookGreatFood() {
        <#code#>
    }
    
    func cookExcellentFood() {
        <#code#>
    }
    
    func cookBlackBeltFood() {
        <#code#>
    }
}

//Exercise: Implement protocols with classes
//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/ZgeC8/exercise-implement-protocols-with-classes

//The Little Lemon’s iOS team wants to create a consistent blueprint for each dish in their menu app codebase.
//You’ve been asked to create a dish protocol to set the requirements of each dish.

//Step 1: Define a custom protocol
protocol Dish {
    
    //Step 2: Define protocol properties requirements
    var name: String { get }
    var preparationMinutes: Int { get set }
    
    //Step 3: Define protocol methods requirements
    func prepare()
    func plate(artisticLevel: Int)
}

//Step 4: Adopt the custom protocol in a class
class MainDish: Dish {
    //Step 6: Create a memberwise initializer
    var name: String
    var preparationMinutes: Int
    
    //Step 7: Conform to the protocol methods requirements
    func prepare() {
        print("Preparing \(name) in \(preparationMinutes) minutes")
    }
    func plate(artisticLevel: Int) {
        print("Plate artistic level \(artisticLevel)")
    }
    
    init(name: String, preparationMinutes: Int) {
        self.name = name
        self.preparationMinutes = preparationMinutes
    }
}

//Step 8: Instantiate a MainDish class instance
let superSpaghetti = MainDish(name: "Super Spaghetti", preparationMinutes: 35)

//Step 9: Calling the prepare method
superSpaghetti.prepare()

//Step 10: Calling the plate(artisticLevel :) method
superSpaghetti.plate(artisticLevel: 10)
