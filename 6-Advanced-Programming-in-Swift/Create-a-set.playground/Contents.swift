import Cocoa

//Store unique items in sets

//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/Y7bZV/store-unique-items-in-sets

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

//Remove method
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

//Union method
var pastaUnionSet = pastaTypesSet.union(pastaTypesSet2)
print(pastaUnionSet)
print(pastaUnionSet.count)

print()

var numbersSet1: Set<Int> = [1, 2, 3, 4, 5]
var numbersSet2: Set = [1, 2, 3, 4, 5, 6, 7, 7, 7]
print(numbersSet1.count)
print(numbersSet2.count)

print()


//Exercise: Create a set

//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/WfTEV/exercise-create-a-set

//Step 1: Declare sets for each booking method
let reservationsInPerson: Set = ["000-111-11-11", "000-222-22-22"]
let reservationsOverPhone: Set = ["000-333-33-33", "000-444-44-44"]
let reservationsOverInternet: Set = ["000-555-55-55", "000-666-66-66"]

//Step 2: Combine all the sets into a single set
var inPersonAndOverPhone = reservationsInPerson.union(reservationsOverPhone)
print(inPersonAndOverPhone)
var allPhoneNumbers = inPersonAndOverPhone.union(reservationsOverInternet)
print(allPhoneNumbers)

var ABC = reservationsInPerson.union(reservationsOverPhone).union(reservationsOverInternet)
print(ABC)

//Step 3: Create a Set for the reservation codes
var confirmationCodes: Set = ["LL1111", "LL2222", "LL3333", "LL4444", "LL5555"]

//Step 4: Compare the number of codes to the number of phone numbers
print("Count of all phone numbers \(allPhoneNumbers.count), and confirmation codes \(confirmationCodes.count)")

//Step 5: Insert more confirmation codes if it is less than phone numbers
confirmationCodes.insert("LL6666")
print("Confirmation codes count \(confirmationCodes.count) \(confirmationCodes)")

//Step 6: Remove the confirmation code and phone number for canceled reservations
allPhoneNumbers.remove("000-111-11-11")
allPhoneNumbers.remove("000-222-22-22")
confirmationCodes.remove("LL1111")
confirmationCodes.remove("LL2222")
print("All phone numbers \(allPhoneNumbers)")
print("All confirmation codes \(confirmationCodes)")
