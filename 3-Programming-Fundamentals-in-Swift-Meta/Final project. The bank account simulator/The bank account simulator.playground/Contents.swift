//https://www.coursera.org/learn/programming-fundamentals-swift/supplement/yvCUw/part-1-create-the-bank-account

//Part 1: Create the bank account

//After completing part 1, output should be:

//Welcome to your virtual bank system. What kind of account would you like to make?
//Debit account
//Credit account
//Bank account
//Which option do you choose? (1, 2 or 3)
//The selected option is 1.
//You have opened a debit account.

//My decision for part 1:
print("Welcome to your virtual bank system. What kind of account would you like to make?")
print("Debit account")
print("Credit account")
print("Bank account")
print("Which option do you choose? (1, 2 or 3)")
var accountOption: Int
var yourNewOpenedAccount = ""
repeat {
    accountOption = Int.random(in: 1...5)
    switch accountOption {
    case 1:
        yourNewOpenedAccount = "debit account"
        print("The selected option is 1.")
        print("You have opened a \(yourNewOpenedAccount)")
    case 2:
        yourNewOpenedAccount = "credit account"
        print("The selected option is 2.")
        print("You have opened a \(yourNewOpenedAccount)")
    case 3:
        yourNewOpenedAccount = "bank account"
        print("The selected option is 3.")
        print("You have opened a \(yourNewOpenedAccount)")
    default:
        break
    }
} while accountOption < 1 || accountOption > 3


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

//My decision part 2:



//https://www.coursera.org/learn/programming-fundamentals-swift/supplement/Q01IX/part-3-manage-the-bank-account

//Part 3: Manage the bank account

//After completing part 2, output should be:

//What would you like to do?
//1. Check bank account
//2. Withdraw money
//3. Deposit money
//4. Close the system
//Which option do you choose? (1, 2, 3 or 4)
//The selected option is 4.
//The system is closed.
