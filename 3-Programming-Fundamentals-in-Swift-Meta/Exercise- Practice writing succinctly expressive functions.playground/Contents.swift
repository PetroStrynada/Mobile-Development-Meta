//https://www.coursera.org/learn/programming-fundamentals-swift/supplement/qX3RY/exercise-practice-writing-succinctly-expressive-functions

//from video
func additionTwoNumbers(a: Int, b: Int) -> Int {
    let result = a + b
    return result
}
var sumTwoNumbers = additionTwoNumbers(a: 5, b: 9)
print("Result : \(sumTwoNumbers)")

//from materials for self education
func helloThere(firstname: String, surname: String) {
    print("Hello there \(firstname) \(surname)")
}
helloThere(firstname: "Petro", surname: "Strynada")
print("")

//my option
func yourDefenseIsTerrifying(_ nm: String, _ sn: String) {
    for _ in 1...3{
        print("\(nm) \(sn) your defense in terrifying!")
    }
    print("\(nm) \(sn)")
    for _ in 1...2 {
        print("""
    Na, Na, Na, Na, Na, Na, Na,
    Na, Na, Na,
    Na, Na!
    """)
    }
}
yourDefenseIsTerrifying("Harry", "Maguire")
print("")
yourDefenseIsTerrifying("kerch bridge", "ON FIRE")
print("")


//Start the exercise
var goldBars = 0
func incrementInventory(_ inventory: inout Int, by amount: Int = 100) {
    inventory += amount
}
incrementInventory(&goldBars)
print("\(goldBars)")
for _ in 1 ... 2 {
    incrementInventory(&goldBars)
    print("\(goldBars)")
}
incrementInventory(&goldBars, by: 300)
print("\(goldBars)")
incrementInventory(&goldBars, by: 50)
print("\(goldBars)")
