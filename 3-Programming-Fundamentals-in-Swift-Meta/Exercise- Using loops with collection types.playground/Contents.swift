//https://www.coursera.org/learn/programming-fundamentals-swift/supplement/nE8I9/exercise-using-loops-with-collection-types


let levelScore = [10, 20, 30, 40, 50, 60, 70]
for (level, score) in levelScore.enumerated() {
    print("\(level + 1) level score = \(score)")
}

var gameScore = 0
for curentScore in levelScore {
    gameScore += curentScore
}
print("Final game score is \(gameScore)")


let weeklyTemperature = [
                        "Monday": 70,
                        "Tuesday": 75,
                        "Wednesday": 80,
                        "Thursday": 85,
                        "Friday": 90,
                        "Saturday": 95,
                        "Sunday": 100
                        ]

for (day, temperature) in weeklyTemperature {
    print("On \(day) is \(temperature) F")
}


let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
let temperatures = [70, 75, 80, 85, 90 ,95, 100]

var firstIndex: Int
firstIndex = 0
var secondIndex = days.count-1
for index in firstIndex...secondIndex {
    print("On \(days[index]) the temperature is \(temperatures[index])")
}
