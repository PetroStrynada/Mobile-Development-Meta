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

//Access control
//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/wWzlb/access-control


