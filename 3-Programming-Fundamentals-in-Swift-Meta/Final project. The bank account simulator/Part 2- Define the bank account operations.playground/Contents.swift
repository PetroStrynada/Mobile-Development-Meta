//https://www.coursera.org/learn/programming-fundamentals-swift/supplement/6wt3U/part-2-define-the-bank-account-operations

//Part 2: Define the bank account operations

//After completing part 2, output should be:

//Current balance: $100
//Withdrew: $20. Current balance: $80
//Insufficient funds to withdraw $81. Current balance: $80
//Withdrew: $80. Current balance: $0
//Deposited $100. Current balance: $100
//Withdrew: $200. Current balance: $-100
//Deposited $50. Current balance: $-50
//Deposited $50. Current balance: $0
//Paid off account balance.
//Deposited $100. Current balance: $100
//Overpaid account balance.

/*
//My decision part 2:
var currentCash: Int
currentCash = 100
print("Current balance: $\(currentCash)")

//functions for withdrew cash from the deposit balance
//credit unavailable
func withdrewCashWithoutCredit (withdrew: Int) {
    if withdrew > 0 {
        currentCash = currentCash - withdrew
        if currentCash >= 0 {
            print("Withdrew: $\(withdrew). Current balance: $\(currentCash)")
        } else {
            currentCash = currentCash + withdrew
            print("Insufficient funds to withdraw $\(withdrew). Current balance: $\(currentCash)")
        }
    }
}

//credit available
func withdrewCashInCredit(withdrewInCredit: Int) {
    if withdrewInCredit > 0 {
        currentCash = currentCash - withdrewInCredit
        print("Withdrew: $\(withdrewInCredit). Current balance: $\(currentCash)")
    }
}

//functions to deposit cash on the deposit balance
//credit unavailable
func depositedCash (deposit: Int) {
    if deposit > 0 {
        currentCash = currentCash + deposit
        print("Deposited $\(deposit). Current balance: $\(currentCash)")
    }
}

//credit available (already in credit)
func depositedCashToPayCredit(depositToPayCredit: Int) {
    if depositToPayCredit > 0 {
        currentCash = currentCash + depositToPayCredit
        if currentCash == 0 {
            print("Deposited \(depositToPayCredit). Current balance: $\(currentCash)")
            print("Paid off account balance.")
        } else if currentCash < 0 {
            print("Deposited \(depositToPayCredit). Current balance: $\(currentCash)")
        } else {
            print("Deposited \(depositToPayCredit). Current balance: $\(currentCash)")
            print("Overpaid account balance.")
        }
    }
}


withdrewCashWithoutCredit(withdrew: 20)
withdrewCashWithoutCredit(withdrew: 81)
withdrewCashWithoutCredit(withdrew: 80)
depositedCash(deposit: 100)
withdrewCashInCredit(withdrewInCredit: 200)
depositedCashToPayCredit(depositToPayCredit: 50)
depositedCashToPayCredit(depositToPayCredit: 50)
depositedCashToPayCredit(depositToPayCredit: 100)
*/


//Doing all followed instructions
//S​tep 1: Create the balance variable
var balance = 100

//S​tep 2: Create a function to get the balance
func getBalanceInfo()->String {
    "Current balance: $ \(balance)"
}
print(getBalanceInfo())

//Step 3: Implement the withdrawal operation for generic and credit bank accounts
func withdraw(_ amount: Int) {
    balance = balance - amount
    print("Withdrew: $ \(amount) \(getBalanceInfo())")
}

//Step 4: Test the withdrawal operation
withdraw(20)

//Step 5: Implement the withdrawal operation for debit accounts
func debitWithdraw(_ amount: Int) {
    if amount > balance {
        print("Insufficient fund to withdraw $ \(amount). \(getBalanceInfo())")
    } else {
        withdraw(amount)
    }
}

//Step 6: Test the withdrawal operation
debitWithdraw(81)
debitWithdraw(80)

//Step 7: Implement the deposit operation for generic and debit accounts
func deposit(_ amount: Int) {
    balance = balance + amount
    print("Deposited $ \(amount) \(getBalanceInfo())")
}

//Step 8: Test the deposit operation for generic and debit accounts
deposit(100)

//Step 9: Implement the deposit operation for credit accounts
func creditDeposit(_ amount: Int) {
    deposit(amount)
    if balance == 0 {
        print("Paid off balance.")
    } else if balance > 0 {
        print("Overpaid account balance.")
    }
}

//Step 10: Test the deposit operation
withdraw(200)
creditDeposit(50)
creditDeposit(50)
creditDeposit(100)
