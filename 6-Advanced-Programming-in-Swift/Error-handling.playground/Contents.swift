import Cocoa

//Choosing an error handling approach

//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/T6Ose/choosing-an-error-handling-approach


//Exercise: Error handling
//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/IkhBk/exercise-error-handling

//Step 5: Create a custom enumeration for errors
enum CalculatorError: Error {
    case divisionByZero
}

//Step 1: Create a class to represent a calculator
class Calculator {
    
    //Step 2: Create a division function
    func divide(_ x: Double, by y: Double) throws -> Double {
        
        if y == 0 {
            throw CalculatorError.divisionByZero
        }
        
        return x/y
    }
}

//Step 3: Initialize the class to a constant
let calculator = Calculator()
//Step 4: Call the function to divide two numbers
//let successfulResult: Double = try calculator.divide(10, by: 0)
//print(successfulResult)

//Step 7: Use do-catch on your function call to handle thrown errors
do {
    //Step 8: Create success and failure scenarios for calling the division function
    let successfulResult = try calculator.divide(1, by: 2)
    print(successfulResult)
    let invalidResult = try calculator.divide(1, by: 0)
}
catch CalculatorError.divisionByZero {
    print("Division by zero detected and not allowed")
}

//My example
enum Domain: Error {
    case by
    case ru
}

class Site {
    let dot = "."
    
    
    func getFullSiteName(_ siteName: String, domain: String) throws -> () {
        if domain == "by" {
            throw Domain.by
        } else if domain == "ru" {
            throw Domain.ru
        }
        
        var siteFullName: String
        siteFullName = siteName + dot + domain
        return print(siteFullName)
        
    }
}

var site = Site()

//throws only first error
do {
    print("case .ua")
    try site.getFullSiteName("ukrainian", domain: "ua")
    print("case .com")
    try site.getFullSiteName("ukrainian", domain: "com")
    print("case .ru")
    try site.getFullSiteName("ukrainian", domain: "ru")
    print("case .by")
    try site.getFullSiteName("ukrainian", domain: "by")
    
} catch Domain.by {
    print("fuck you lukashesko")
} catch Domain.ru {
    print("fuck you putin")
}

