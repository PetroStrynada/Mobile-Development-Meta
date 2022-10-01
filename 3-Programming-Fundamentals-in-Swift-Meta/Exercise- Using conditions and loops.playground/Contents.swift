let levels = 10
let freeLevels = 4
let bonusLevel = 3

for currentLevel in 1...levels {
    
    if currentLevel == bonusLevel {
        //Did it, just to see, that code after "continue" will never be executed
        continue
        print("""
Congratulations, you are at level \(bonusLevel)
You can skip bonus level and go on
Y/N ?
""")
    } else if currentLevel <= freeLevels {
        print("Play level \(currentLevel)")
    } else {
        print("There are 4 levels for free and 6 for pay")
        //Pay attention at the breakpoint. It closes the for-in loop
        break
    }
}
