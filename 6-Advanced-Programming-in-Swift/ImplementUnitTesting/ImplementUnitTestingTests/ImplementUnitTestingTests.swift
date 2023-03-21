//
//  ImplementUnitTestingTests.swift
//  ImplementUnitTestingTests
//
//  Created by Petro Strynada on 20.03.2023.
//
//  Exercise: Implement a unit test
//  Step 1: Locate the Unit tests file created for you by XCode
//  Step 2: Remove all the functions from the unit tests file
//
//  Step 3: Import the application module to be able to test its code
import XCTest
@testable import ImplementUnitTesting

final class ImplementUnitTestingTests: XCTestCase {
    
    //for fake testing
    var menu: MenuManager!
    var allMeals: String!
    
    //for monk testing
    var monkNetworkManagerATB: MonkNetworkManagerATB!
    var newsletter: NewsNetworkManagerATB!
    var email: String!

    //Exercise: Implement a unit test
    var items: [CheckoutItem]!
    var taxPercentage: Int!
    var totalToPay: Int!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        //for fake testing
        menu = MenuManager(networkManager: FakeNetworkManager())
        allMeals = menu.allMeals()
        
        //for monk testing
        monkNetworkManagerATB = MonkNetworkManagerATB()
        newsletter = NewsNetworkManagerATB(networkManagerATB: monkNetworkManagerATB)
        email = "example@mail.com"
        newsletter.subscribe(email: email)
        
        //Exercise: Implement a unit test
        items = [CheckoutItem(name: "Fish and Chips", price: 625), CheckoutItem(name: "Apple", price: 175), CheckoutItem(name: "Carrot", price: 45)]
        taxPercentage = 20
        totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        
        //for fake testing
        XCTAssertEqual(allMeals, "Soda, Milkshake")
        
        //for monk testing
        XCTAssertEqual(monkNetworkManagerATB.howManyTimesFunctionCalled, 1)
        XCTAssertEqual(monkNetworkManagerATB.emailTheFunctionReceived, email)
        
        //Exercise: Implement a unit test
        XCTAssertEqual(totalToPay, 1014)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
