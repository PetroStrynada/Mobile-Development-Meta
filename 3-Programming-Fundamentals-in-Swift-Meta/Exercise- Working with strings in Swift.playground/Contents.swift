let day = "Thursday"
print("Today is \(day)")
let hour = "11"
let minutes = "41"
let period = "PM"

var time:String
time = hour + ":" + minutes + " " + period
print("It is \(time)")
print("It is \(time) on \(day)")

let timezone = "PST"
time += " \(timezone)"
print("It is \(time)")
print ("It is \(time) on \(day)")

let shortDay = day.prefix(3)
print("Today is \(shortDay)")
print("It is \(time) on \(shortDay)")
