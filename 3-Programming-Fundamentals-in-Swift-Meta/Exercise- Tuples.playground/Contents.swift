var a:[Int] = [1, 2, 3]
var b = [4, 5, 6]
var c:[Any]

c = a + b
print(c)

var d = ["a", "b", "c"]
c += d
print(c)

print(c.count)
c.remove(at: 8)
print(c)
print(c.count)


//Tuples
var myAddress = (country: "Ukraine", city: "Kiev", street: "Obolonsky avenue", houseNumber: 14, flat: 227)

print(myAddress.street, myAddress.houseNumber, myAddress.flat)
myAddress.city = "Lviv"
print(myAddress.self)


//Credentials for logging into the banking app

//Tips
//
//Tuples can store elements of different types.
//Tuples use zero-based indexing to access their elements by default.
//Tuples may have custom labels that identify their elements.

let credentials = (password: "", passcode: -1111)
if credentials.password.count == 0 || credentials.passcode <= 0 {
    print("Invalid credentials!")
} else {
    print("Your password '\(credentials.password)'. Your passcode '\(credentials.passcode)'")
}


let fullCredentials = (password: "pass", passcode: 1111)
if fullCredentials.password == "" || fullCredentials.passcode <= 0 {
    print("Invalid credentials!")
} else {
    print("Your password '\(fullCredentials.password)'. Your passcode '\(fullCredentials.passcode)'")
}


