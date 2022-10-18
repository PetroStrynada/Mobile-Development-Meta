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

