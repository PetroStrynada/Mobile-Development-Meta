//
//  Checkout.swift
//  ImplementUnitTesting
//
//  Created by Petro Strynada on 21.03.2023.
//
//  Exercise: Implement a unit test
//  https://www.coursera.org/learn/advanced-programming-in-swift/supplement/YTtK7/exercise-implement-a-unit-test

import Foundation

struct CheckoutItem {
    let name: String
    let price: Int
}


func calculateTotal(items: [CheckoutItem], localTaxPercent: Int) -> Int {
    let itemsTotal = items.reduce(0) { $0 + $1.price }
    let taxAmount = itemsTotal * localTaxPercent / 100
    return itemsTotal + taxAmount
}
