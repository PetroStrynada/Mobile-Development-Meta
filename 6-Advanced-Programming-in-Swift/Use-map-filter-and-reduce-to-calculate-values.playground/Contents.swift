import Cocoa

//Common recursion examples
//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/dyvAJ/common-recursion-examples

//Fun Algorithms: Recursive Search through Binary Tree
//https://www.youtube.com/watch?v=beQEimO3-3E

//Output n numbers to console

//with the while loop
var n = 6

while n > 0 {
    print(n)
    n -= 1
}

print()

//with recursion
n = 6

func output(n: Int) {
    if (n==0) { // step 1 base case
        return
    }
    else {
        print(n) // step 2 perform the work
        output(n: n-1) // step 3 repeat recursion with smaller problem
    }
}

output(n:6)

print()

//Finding a sum of all numbers from 1 to n

//with the while loop
n = 6
var sum = 0

while n > 0 {
    sum += n
    n -= 1
}
print(sum)

print()

//with recursion
n = 6
sum = 0

func outputSum(n: Int) -> Int {
    if(n==0) { // step 1 base case
        return 0
    }
    else {
        return n + outputSum(n: n - 1) // step 2 and step 3
    }
}

print()


//Map, filter and reduce examples
//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/K4dVE/map-filter-and-reduce-examples


//Map
struct User {
    let id: Int
    let name: String
}

let users = [
    User(id: 1, name: "Petro"),
    User(id: 2, name: "Olga"),
]

//long
let usersIDs1 = users.map { user in
    return user.id
}
print(usersIDs1)

//short
let usersNames = users.map { $0.name }
print(usersNames)

//Compact map

//compactMap is a special type of map that discards any nil values.
//It is very useful if an object conversion function could produce nil.
//In this case, however, you only want the non-nil values in the resulting array.

let urlsAsStrings = ["https://www.google.com", "not a valid url"]
let urlsOrNil = urlsAsStrings.map { URL(string: $0) }
let urls = urlsAsStrings.compactMap { URL(string: $0) }
print(urlsOrNil)
print(urls)

/*
 An array of strings, each representing a URL, is created. Then, map is called on that array converting a String object into a URL object.
 Next, compactMap is called on the same array, which also converts each String into a URL object.
 
 The urlsOrNil array produced by the map function contains a nil value because one of the strings in the original urlsAsStrings array was invalid.
 However, the second URLs array, that was produced by the compactMap function contains only a single valid URL object as nil value was discarded automatically.
 */

//Flat map

/*
 flatMap is another special type of map that is useful in the following cases:

 The mapping closure returns an array of elements rather than just a single element, and
 The final resulting array must be a one-dimensional array.   This means that there must not be an array inside of an array.
 */

struct NewUser {
    let id: Int
    let name: String
    let languages: [String]
}

let newUsers = [
    NewUser(id: 1, name: "John", languages: ["English", "German"]),
    NewUser(id: 2, name: "Tom", languages: ["Russian", "Spanish"])
]

let allLanguages = newUsers.flatMap { $0.languages }
print(allLanguages)

//Filter

struct Article {
    let title: String
    let isPublished: Bool
}

let articles = [
    Article(title: "Breaking news", isPublished: true),
    Article(title: "Local news", isPublished: true),
    Article(title: "Unconfirmed", isPublished: false),
]

let articlesArePublished = articles.filter { $0.isPublished == true }
print(articlesArePublished)

//Reduce

//The reduce function lets you combine an array of elements into a single value

let numbers2 = [1, 4, 65, 3, -1]
var sum2 = 0

for i in numbers2 {
    sum2 += i
}
print(sum2)

let numbers1 = [1, 4, 65, 3, -1]
let sum1 = numbers1.reduce(0) { $0 + $1 }
print(sum1)

print()


//Exercise: Use map, filter and reduce to calculate values
//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/7NLGN/exercise-use-map-filter-and-reduce-to-calculate-values

struct Order {
    let price: Int
    let location: String
}
 
func totalRevenueOf(orders: [Order],  location: String) -> Int {
    //tep 1: Filter the players array
    let ordersAtLocation = orders.filter { $0.location == location }
    //Step 2: Confirm that the filtered array contains the correct values
    print(ordersAtLocation)
    //Step 3: Convert filtered orders array to array of their prices
    let orderPrices = ordersAtLocation.map { $0.price }
    //Step 4: Print the order prices array to confirm the result
    print(orderPrices)
    return orderPrices.reduce(0) { $0 + $1 }
}
 
let orders = [
    Order(price: 24, location: "New York"),
    Order(price: 37, location: "San Francisco"),
    Order(price: 101, location: "New York"),
]
 
let result = totalRevenueOf(orders: orders, location: "New York")

//Step 6: Confirm that function implementation works as expected
print(result)

print()


//ForEach
//https://github.com/PetroStrynada/Mobile-Development-Meta

//forEach is a dedicated method that loops over each element in an array or dictionary and does something with it.

//What is the forEach function
//array.forEach { element in
//    // Do something with an element
//}

//Why use forEach over the for or while loop?
let donationsInformation1  = ["John" : 56, "Tom": 15, "Charlie": 104]
let donationsTexts1 = donationsInformation1.map { "\($0.key) has donated \($0.value) so far"}
for text in donationsTexts1 {
    print(text)
}

print()

let donationsInformation2 = ["John": 56, "Tom": 15, "Charlie": 104]
donationsInformation2.map { "\($0.key) has donated \($0.value) so far" }
    .forEach { print($0) }
