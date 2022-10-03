var password = "1234"
let passcode = Int(password)
print("the password of the app is \(passcode!)")


password = "Hello World"
//password = "12345"
if Int(password) != nil {
    print("The password is ok")
} else {
    print("Invalid password")
}


func passwordCheck() {
    guard Int(password) != nil else {
        print("Invalid password")
        return
    }
    print(password)
}
passwordCheck()


let accessCode: Int
if Int(password) != nil {
    accessCode = Int(password)!
} else {
    accessCode = 1111
}
print("\(accessCode)")


password = "23455"
let accessToken: Int
if let code = Int(password) {
    accessToken = code
} else {
    accessToken = 2222
}
print(accessToken)
print("")


//The first scenario
var firstPassword = "Hello"
var secondPassword = "World"
if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    print("The first passcode is \(firstPasscode). The second passcode is \(secondPasscode)")
} else {
    print("One of the passcodes is invalid")
}


var firstAccessCode, secondAccessCode: Int
if let firstPassCode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    firstAccessCode = firstPassCode
    secondAccessCode = secondPasscode
} else {
    firstAccessCode = 1111
    secondAccessCode = 2222
}
print("The first access code is \(firstAccessCode). The second access code is \(secondAccessCode)")
print("")


//The second scenario
firstPassword = "123456"
secondPassword = "09876"
if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    print("The first passcode is \(firstPasscode). The second passcode is \(secondPasscode)")
} else {
    print("One of the passcodes is invalid")
}


if let firstPassCode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    firstAccessCode = firstPassCode
    secondAccessCode = secondPasscode
} else {
    firstAccessCode = 1111
    secondAccessCode = 2222
}
print("The first access code is \(firstAccessCode). The second access code is \(secondAccessCode)")
print("")


//The third scenario
firstPassword = "123gke456"
secondPassword = "09876"
if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    print("The first passcode is \(firstPasscode). The second passcode is \(secondPasscode)")
} else {
    print("One of the passcodes is invalid")
}


if let firstPassCode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    firstAccessCode = firstPassCode
    secondAccessCode = secondPasscode
} else {
    firstAccessCode = 1111
    secondAccessCode = 2222
}
print("The first access code is \(firstAccessCode). The second access code is \(secondAccessCode)")
print("")


//The fourth scenario
firstPassword = "123456"
secondPassword = "09jl;eoe876"
if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    print("The first passcode is \(firstPasscode). The second passcode is \(secondPasscode)")
} else {
    print("One of the passcodes is invalid")
}


if let firstPassCode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    firstAccessCode = firstPassCode
    secondAccessCode = secondPasscode
} else {
    firstAccessCode = 1111
    secondAccessCode = 2222
}
print("The first access code is \(firstAccessCode). The second access code is \(secondAccessCode)")

