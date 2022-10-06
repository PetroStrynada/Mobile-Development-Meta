//https://www.coursera.org/learn/programming-fundamentals-swift/supplement/qquRr/exercise-dictionaries-in-swift

/*
var weeklyTemperature = [String: Int]()
//var weeklyTemperature = Dictionary <String: Int>()
weeklyTemperature = [
                    "Monday": 70,
                    "Tuesday": 75
                    ]
print(weeklyTemperature)
weeklyTemperature.updateValue(80, forKey: "Wednesday")
weeklyTemperature.updateValue(85, forKey: "Thursday")
print(weeklyTemperature)
weeklyTemperature["Friday"] = 90
print(weeklyTemperature)
weeklyTemperature["Saturday"] = 95
print("\(weeklyTemperature)")

weeklyTemperature["Monday"]! += 20
print("The temperature on Monday \(weeklyTemperature["Monday"]!) F")


if let temperature = weeklyTemperature["Sunday"] {
    
} else {
    weeklyTemperature["Sunday"] = 100
}
print("The temperature on Sunday \(weeklyTemperature["Sunday"]!) F")

if weeklyTemperature.count == 7 {
    print("You have access to the weather forecast of the whole week")
    weeklyTemperature = [:]
    print("Reset weekly temperatures for next week!")
    print(weeklyTemperature)
}
*/



//Second repetition
var weeklyTemperature: Dictionary <String, Int> = [
    "Monday": 70,
    "Tuesday": 75,
    "Wednesday": 80,
    "Thursday": 85,
    "Friday": 90,
    "Saturday": 95,
    "abc": 123,
    "dfj": 456,
]
weeklyTemperature.removeValue(forKey: "abc")
weeklyTemperature["dfj"] = nil
print(weeklyTemperature)
print("The temperature o Monday \(weeklyTemperature["Monday"]! + 30) F")
print("\(weeklyTemperature["Monday"]!)")
print("Value 'abc' after .removeValue ''\(weeklyTemperature["abc"])'', value 'dfj' after = nil ''\(weeklyTemperature["dfj"])''")


weeklyTemperature.updateValue(90, forKey: "Monday")
print("\(weeklyTemperature["Monday"]!)")
weeklyTemperature["Monday"]! -= 20
print("\(weeklyTemperature["Monday"]!)")
weeklyTemperature["Monday"]! += 20
print("The temperature on Monday is \(weeklyTemperature["Monday"]!) F")


if let temperature = weeklyTemperature["Sunday"] {

} else {
    weeklyTemperature["Sunday"] = 100
}
print("The Sunday temperature is \(weeklyTemperature["Sunday"]!) F")

func resetTheWeatherForecastStatus() {
    if weeklyTemperature.count == 7 {
        print("""
The weather forecast for a week:
On Monday \(weeklyTemperature["Monday"]!) F
On Tuesday \(weeklyTemperature["Tuesday"]!) F
On Wednesday \(weeklyTemperature["Wednesday"]!) F
On Thursday \(weeklyTemperature["Thursday"]!) F
On Friday \(weeklyTemperature["Friday"]!) F
On Saturday \(weeklyTemperature["Saturday"]!) F
On Sunday \(weeklyTemperature["Sunday"]!) F
""")
        weeklyTemperature = [:]
    }
}


resetTheWeatherForecastStatus()


weeklyTemperature = [
    "Monday": 90,
    "Tuesday": 60,
    "Wednesday": 40,
    "Thursday": 50,
    "Friday": 70,
    "Saturday": 80,
    "Sunday": 110
]
weeklyTemperature["Monday"] = 1000
print("\(weeklyTemperature["Monday"])")
print("\(weeklyTemperature["Sunday"])")


resetTheWeatherForecastStatus()

weeklyTemperature = ["first": 1]
print("\(weeklyTemperature)")

weeklyTemperature = [
    "Monday": 90,
    "Tuesday": 60,
    "Wednesday": 40,
    "Thursday": 50,
    "Friday": 70,
    "Saturday": 80,
    "Sunday": 110
]
print("All the keys \(weeklyTemperature.keys)")
print("All the values \(weeklyTemperature.values)")

weeklyTemperature = [
    "Monday": 90,
    "Tuesday": 60,
    "Wednesday": 40
]
print("All the keys \(weeklyTemperature.keys)")
print("All the values \(weeklyTemperature.values)")

weeklyTemperature["First"] = 1
weeklyTemperature.updateValue(2, forKey: "Second")
print("All the keys \(weeklyTemperature.keys)")
print("All the values \(weeklyTemperature.values)")
