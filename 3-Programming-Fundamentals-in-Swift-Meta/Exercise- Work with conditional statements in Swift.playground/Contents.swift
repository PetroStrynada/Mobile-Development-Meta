let freeApp = true
if freeApp == true {
    print("You are using the free version of the app. Buy the full version of the app to get access to all of its features")
}


let morningTemperature = 70
let eveningTemperature = 80
if morningTemperature < eveningTemperature {
    print("The morning temperature is lesser then evening and equals \(morningTemperature) F ")
} else {
    print("The evening temperature is lesser then morning and equals \(eveningTemperature)")
}


let fahrenheitDegree = "Fahrenheit F"
let celsiusDegree = "Celsius C"
var temperatureDegree = fahrenheitDegree
if temperatureDegree ==  fahrenheitDegree {
    print("The app uses \(fahrenheitDegree)")
} else {
    print("The app uses \(celsiusDegree)")
}


let kelvinDegree = "Kelvin K"
temperatureDegree = "unknown"
switch temperatureDegree {
    case kelvinDegree: print("The app uses \(kelvinDegree)")
    case fahrenheitDegree: print("The app uses \(fahrenheitDegree)")
    case celsiusDegree: print("The app uses \(celsiusDegree)")
    default: break
}


temperatureDegree = fahrenheitDegree
if temperatureDegree == fahrenheitDegree || temperatureDegree == celsiusDegree {
    print("The app is configure properly")
} else {
    print("The app is not configure properly")
}


switch temperatureDegree {
    case fahrenheitDegree: print("The app is configured for the US")
    case celsiusDegree: print("The app is configured for Europe")
    case kelvinDegree: print("The app is configured for scientists")
    default: print("The app has unknown configuration")
}
