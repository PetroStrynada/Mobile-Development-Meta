/*
 I think the character takes the first value of numberPlate "W" and prints it
 Then the character takes the second value on numberPlate ''W" and also prints it
 ...
 And so on
 ...
 Until it prints the last value of numberPlate "P"
 Then it will stop
 The for loop is completed
 */

let numberPlate = "WW87GP"
for character in numberPlate {
    print("character is = \(character)")
}

let number = "Glory to Ukraine"
for x in number {
    print("x is = \(x)")
}


for dice in 1...6 {
    print("Roll a \(dice)")
}


var firstDice = Int.random(in: 1...6)
var secondDice = Int.random(in: 1...6)
while firstDice != secondDice {
    firstDice = Int.random(in: 1...6)
    secondDice = Int.random(in: 1...6)
    print("""
The first dice = \(firstDice)
The second dice = \(secondDice)
""")
}
print("You rolled a double \(firstDice).")


firstDice = 0
secondDice = 0
repeat {
    firstDice = Int.random(in: 1...6)
    secondDice = Int.random(in: 1...6)
    print("""
The first dice = \(firstDice)
The second dice = \(secondDice)
""")
} while firstDice != secondDice
print("You rolled a double \(firstDice).")
