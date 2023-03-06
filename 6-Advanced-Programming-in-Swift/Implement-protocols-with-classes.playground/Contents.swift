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
