//
//  UsingMocks.swift
//  ImplementUnitTesting
//
//  Created by Petro Strynada on 21.03.2023.
//
//  Using mocks
//  https://www.coursera.org/learn/advanced-programming-in-swift/supplement/8St87/using-mocks

import Foundation

protocol NetworkManagerATB {
    func createNewsletterSubscription(email: String)
}

class NewsNetworkManagerATB {
    let networkManagerATB: NetworkManagerATB
    init(networkManagerATB: NetworkManagerATB) {
        self.networkManagerATB = networkManagerATB
    }
    
    func subscribe(email: String) {
        return networkManagerATB.createNewsletterSubscription(email: email)
    }
}

class MonkNetworkManagerATB: NetworkManagerATB {
    var howManyTimesFunctionCalled = 0
    var emailTheFunctionReceived = ""
    
    func createNewsletterSubscription(email: String) {
        howManyTimesFunctionCalled += 1
        emailTheFunctionReceived = email
    }
}
