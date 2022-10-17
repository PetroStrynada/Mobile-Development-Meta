//https://www.coursera.org/learn/programming-fundamentals-swift/supplement/P4Ss2/exercise-use-functions-to-modularize-a-program

//total gold bars protagonist have
var goldBars = 0

//was if func
//func openChest(inventory: Int) -> Int {
//    inventory + 100
//}
//was if it full description in closure
//let openChest = {(inventory: Int) -> Int in
//    return inventory + 100
//}
//if it short
//let openChest = {(inventory) in inventory + 100 }

//closure to open chest with gold bars using inout parameter
let openChest = {(inventory: Int) in inventory + 100 }
goldBars = openChest(goldBars)
print("You have \(goldBars) gold bars in your inventory")

//my decision
func spendTenGoldBars (from inventory: inout Int) {
    inventory -= 10
}
spendTenGoldBars(from: &goldBars)
print("You spent ten gold bars")
print("You have \(goldBars) gold bars")

for _ in 1...3 {
    goldBars = openChest(goldBars)
    spendTenGoldBars(from: &goldBars)
}
print("You have \(goldBars) gold bars")

//lesson decision
//var goldBars = 100
//func spendTenGoldBars(from inventory: inout Int, completion: (Int) -> Void) {
//  inventory -= 10
//  completion(inventory)
//}
//print("You had \(goldBars) gold bars.")
//spendTenGoldBars(from: &goldBars) { goldBars in
//  print("You spent ten gold bars.")
//  print("You have \(goldBars) gold bars.")
//}

//exercise for inout parameters
//we need inout parameter to put some value into your function parameter
func change(toTwo two: inout Int) {
    two = 2
}
var huyamber = 908
var number = 1
change(toTwo: &number)
change(toTwo: &huyamber)
print(number, huyamber)


//find max number
let maxNumber = {(n1: Int, n2: Int) -> Int in
    return n1 > n2 ? n1:n2
}
print("\(maxNumber(6, 4))")
print("\(maxNumber(3, 9))")
let findMaxNumber = {(n1: Int, n2: Int) in n1 > n2 ? n1 : n2}
print("\(findMaxNumber(4, 7))")
//find max in array
let arrayInt = [1, 6, 8, 4, 9, 2]
print(arrayInt.max()!)
print(arrayInt.min()!)
//The same as
//names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 < s2 })
//names.sorted(by: { s1, s2 in return s1 < s2 } )
//names.sorted(by: { s1, s2 in s1 < s2 } )
//names.sorted(by: { $0 < $1 } )
//Finally the shortest option
//names.sorted(by: <)
print(arrayInt.sorted(by: <))
print(arrayInt.sorted(by: >))
