//https://www.coursera.org/learn/programming-fundamentals-swift/supplement/App0l/exercise-practice-using-closures

// my experiments with closures
print("Sorting within closures")

var letterArray = ["q", "w", "y", "u", "c", "d", "a", "Z"]
var сyrillicLetterArray = ["ф", "а", "Б", "в", "г", "Z", "я", "z"]
var numberArray = [4, 6, 7, 3, 0, 8, 9, 2, 1, 0, 5, 5]

//the longest entry method
let sortedLetterArray =  letterArray.sorted{(s1: String, s2: String) -> Bool in
    return s1 > s2
}
print("Unsorted letter array \(letterArray)")
print("Sorted letter array \(sortedLetterArray)")

//medium length method, "-> Bool" can be also missed
let sortedCyrillicLetterArray = сyrillicLetterArray.sorted{(s1, s2) -> Bool in s1 > s2 }
print("Unsorted сyrillic letter array \(сyrillicLetterArray)")
print("Sorted сyrillic letter array \(sortedCyrillicLetterArray)")


//shortest entry sort in reverse
//using pointers to array elements
let sortedNumberArray = numberArray.sorted{($0 > $1)}
print("Unsorted number array \(numberArray)")
print("Sorted number array \(sortedNumberArray)")

print("")

//sorting within func
print("Sorting within func")

//func for letter sorting
func reverseLetterSorting(s1: String, s2: String) -> Bool {
    return s1 > s2
}
func reversNumberSorting(n1: Int, n2: Int) -> Bool {
    return n1 > n2
}
print("Sorted letter array \(letterArray.sorted(by: reverseLetterSorting(s1:s2:)))")
print("Sorted сyrillic letter array \(сyrillicLetterArray.sorted(by: reverseLetterSorting))")
print("Sorted number array \(numberArray.sorted(by: reversNumberSorting))")

print("")

//So, my favorite is short sort method within closure using pointers to array elements:
print("My favorite is short sort method within closure using pointers to array elements")
//here some new arrays
var nameArray = ["Petro", "Anna", "Alexander", "Natasha", "Yaroslav", "Ivan", "Jone"]
var nameArrayCyrillic = ["Петро", "Анна", "Александр", "Наташа", "Ярослав", "Иван", "Джон"]
var positionArrayNumber = [1, 3, 5, 6, 2, 4, 7]

//revers sorting
let reversNameArray = nameArray.sorted{($0 > $1)}
let reversNameArrayCyrillic = nameArrayCyrillic.sorted{($0 > $1)}
let reversPositionArrayNumber = positionArrayNumber.sorted{($0 > $1)}
print("Sorted name array \(reversNameArray)")
print("Sorted cyrillic name array \(reversNameArrayCyrillic)")
print("Sorted position number array \(reversPositionArrayNumber)")

print("")


//The most simple closure without argument
var hiClosure = {() -> Void in
    print("hi")
}
hiClosure()
//Closure with passing argument
var hiName = {(name: String) -> Void in
    print("Hi, \(name)")
}
hiName("Petro")


//Exercise with "?" ternary operator
//find max number
var max = {(n1: Int, n2: Int) -> Int in
    n1 > n2 ? n1 : n2
}
print("Max is \(max(9, 857))")
//find min number
var min = {(n1: Int, n2: Int) -> Int in
    n1 < n2 ? n1 : n2
}
print("Min is \(min(5875, 57))")


//Capturing value number from the closure
//Int
var capturingNumber = {() -> Int in
    let number = 111
    return number
}
let closureNumber = capturingNumber()
//String
var capturingString = {() -> String in
    let string = "I do my best"
    return string
}
let closureString = capturingString()
print(closureString)

//Capturing value from func with closure
//Captured value will be safe even when it will change in func
func capturingValue() -> () -> Void {
    let value = 777
    return { print("\(value)") }
}
let capturedValue = capturingValue()
//right way to print captured value
capturedValue()
//bad way to print captured value
print("\(capturedValue())")

print("")


//The main exercise starts here
var goldBars = 0
let unlockTreasureChest = {(inventory: inout Int) -> Void in
    inventory += 100
}
unlockTreasureChest(&goldBars)
print("You have \(goldBars) gold bars in your inventory")
unlockTreasureChest(&goldBars)
print("You have \(goldBars) gold bars in your inventory")

//all the same with function
var silverBars = 0
func unlockSilverChest(inventory: inout Int) -> Void {
    inventory += 100
}
unlockTreasureChest(&silverBars)
print("You have \(silverBars) silver bars in your inventory")
unlockTreasureChest(&silverBars)
print("You have \(silverBars) silver bars in your inventory")
unlockSilverChest(inventory: &silverBars)
print("\(silverBars) silver bars")
unlockSilverChest(inventory: &goldBars)
print("\(goldBars) golden bars")
unlockTreasureChest(&silverBars)
print("\(silverBars) silver bars")
unlockTreasureChest(&goldBars)
print("\(goldBars) golden bars")


