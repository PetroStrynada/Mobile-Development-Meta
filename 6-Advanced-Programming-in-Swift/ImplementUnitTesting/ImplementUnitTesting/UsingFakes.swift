//
//  UsingFakes.swift
//  ImplementUnitTesting
//
//  Created by Petro Strynada on 20.03.2023.
//  https://www.coursera.org/learn/advanced-programming-in-swift/supplement/R1yrb/using-fakes


import Foundation

//for fake testing
protocol NetworkManager {
    func getMealsList() -> [String]
}

class MenuManager {
    let networkManager: NetworkManager
    
    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
    
    func allMeals() -> String {
        return networkManager.getMealsList().joined(separator: ", ")
    }
}

class FakeNetworkManager: NetworkManager {
    func getMealsList() -> [String] {
        return ["Soda", "Milkshake"]
    }
}
