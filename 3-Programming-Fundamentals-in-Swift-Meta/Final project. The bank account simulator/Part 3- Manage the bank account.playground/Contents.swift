//https://www.coursera.org/learn/programming-fundamentals-swift/supplement/Q01IX/part-3-manage-the-bank-account

//Part 3: Manage the bank account

//After completing part 3, output should be:

//What would you like to do?
//1. Check bank account
//2. Withdraw money
//3. Deposit money
//4. Close the system
//Which option do you choose? (1, 2, 3 or 4)
//The selected option is 4.
//The system is closed.

//My decision on part 3:

//Step 1: Add the starter code to the playground
func getBalanceInfo() -> String {
    "Current balance: $\(balance)"
}
func withdraw(_ amount: Int) {
    balance -= amount
    print("Withdrew: $\(amount). \(getBalanceInfo())")
}
func debitWithdraw(_ amount: Int) {
    if amount > balance {
        print("Insufficient funds to withdraw $\(amount). \(getBalanceInfo())")
    } else {
        withdraw(amount)
    }
}
func deposit(_ amount: Int) {
    balance += amount
    print("Deposited $\(amount). \(getBalanceInfo())")
}
func creditDeposit(_ amount: Int) {
    deposit(amount)
    if balance == 0 {
        print("Paid off account balance.")
    } else if balance > 0 {
        print("Overpaid account balance.")
    }
}
print("Welcome to your virtual bank system. What kind of account would you like to make?")
print("1. Debit account")
print("2. Credit account")
print("3. Bank account")
var accountType = ""
var input = 0
repeat {
    print("Which option do you choose? (1, 2 or 3)")
    input = Int.random(in: 1...3)
    print("Selected option: \(input)")
    switch input {
    case 1: accountType = "debit"
    case 2: accountType = "credit"
    case 3: accountType = "generic"
    default: break
    }
} while accountType == ""
var balance = 100
let transferAmount = 50
print("Current balance: $\(balance)")
print("Transfer amount: $\(transferAmount)")

//Step 2: Implement the transfer operation for generic, debit, and credit accounts
func transferMoney(_ transferType: String) {
    switch transferType {
    case "withdraw": if accountType == "debit" {
        debitWithdraw(transferAmount)
    } else {
        withdraw(transferAmount)
    }
    case "deposit": if accountType == "credit" {
        creditDeposit(transferAmount)
    } else {
        deposit(transferAmount)
    }
    default:
        break
    }
}

//Step 3: Store states with variables
var isSystemOpened = true
var option = 0

//Step 4: Manage the bank account based on the user interface option
repeat {
    print("What would you like to do?")
    print("Check bank account")
    print("Withdraw many")
    print("Deposit money")
    print("Close the system")
    print("Which option do you choose?(1, 2, 3 or 4)")
    option = Int.random(in: 1...5)
    print("Selected option \(option)")
    switch option {
        case 1: print("Current balance: $\(balance) dollars")
        case 2: transferMoney("withdraw")
        case 3: transferMoney("deposit")
        case 4:
            isSystemOpened = false
            print("The system is closed.")
        default: break
    }
} while isSystemOpened == true





