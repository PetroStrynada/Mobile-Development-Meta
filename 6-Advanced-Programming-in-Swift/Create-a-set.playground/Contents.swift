import Cocoa

//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/Y7bZV/store-unique-items-in-sets

//Store unique items in sets

//Set declaration
var pastaTypesSet = Set<String>()
var pastaTypesArray = [String]()

//Insert method
pastaTypesSet.insert("Linguine")
pastaTypesSet.insert("Tagliatelle")
pastaTypesSet.insert("Fettuccine")
pastaTypesSet.insert("Spaghetti")
pastaTypesSet.insert("Spaghetti")
pastaTypesSet.insert("Spaghetti")
print(pastaTypesSet)
print(pastaTypesSet.count)

pastaTypesSet.remove("Spaghetti")
pastaTypesSet.remove("Petro")
print(pastaTypesSet)
print(pastaTypesSet.count)

var pastaTypesSet2 = Set<String>()
pastaTypesSet2.insert("Tortellini")
pastaTypesSet2.insert("Ziti")
pastaTypesSet2.insert("Tagliatelle")
pastaTypesSet2.insert("Lasagna")
pastaTypesSet.insert("Fettuccine")
pastaTypesSet.insert("Spaghetti")

var pastaUnionSet = pastaTypesSet.union(pastaTypesSet2)
print(pastaUnionSet)
print(pastaUnionSet.count)

print()

var numbersSet1: Set<Int> = [1, 2, 3, 4, 5]
var numbersSet2: Set = [1, 2, 3, 4, 5, 6, 7, 7, 7]
print(numbersSet1.count)
print(numbersSet2.count)

