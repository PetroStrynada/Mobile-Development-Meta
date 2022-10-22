fun main() {

    //https://www.coursera.org/learn/meta-programming-fundamentals-kotlin/supplement/nIjFz/exercise-practice-using-conditions

    //Scenario
    //The Little Lemon cafeteria opens at various times depending on the day of the week, according to the following table:

    /*
    Day           Times
    Monday        8 AM to 12 PM (8:00 - 12:00)
    Tuesday       8 AM to 6 PM (8:00 - 18:00)
    Wednesday     8 AM to 6 PM (8:00 - 18:00)
    Thursday      8 AM to 6 PM (8:00 - 18:00)
    Friday        8 AM to 9 PM (8:00 - 21:00)
    Saturday      9 AM to 4 PM (9:00 - 16:00)
    Sunday        8 AM to 4 PM (8:00 - 16:00)
    */

    //Task 1
    //Your first task is to write a program that, based on a weekday, prints opening hours.

    //Step 1: Create a variable
    val weekday = "Friday"

   // Step 2: Print the weekday
    println("On $weekday, the opening hours are:")

    //Step 3: Use if-else-if, to print opening hours
    if (weekday == "Monday") {
        println("8 AM to 12 PM")
    } else if (weekday == "Tuesday") {
        println("8 AM to 6 PM")
    } else if (weekday == "Wednesday") {
        println("8 AM to 6 PM")
    } else if (weekday == "Thursday") {
        println("8 AM to 6 PM")
    } else if (weekday == "Friday") {
        println("8 AM to 9 PM")
    } else if (weekday == "Saturday") {
        println("9 AM to 4 PM")
    } else if (weekday == "Sunday") {
        println("8 AM to 4 PM")
    } else {
        println("There is on such day in week")
    }

    //Alternative Step 3: Alternatively use  when to print opening hours
    when {
        weekday == "Monday"     -> println("8 AM to 12 PM")
        weekday == "Tuesday"    -> println("8 AM to 6 PM")
        weekday == "Wednesday"  -> println("8 AM to 6 PM")
        weekday == "Thursday"   -> println("8 AM to 6 PM")
        weekday == "Friday"     -> println("8 AM to 9 PM")
        weekday == "Saturday"   -> println("9 AM to 4 PM")
        weekday == "Sunday"     -> println("8 AM to 4 PM")
        else                    -> println("There is on such day in week")
    }

    //Task 2
    //Your second task is to make a program that, based on a weekday and the opening hours, it prints either
    //"Little Lemon is open now" or "Little Lemon is closed now". Either if-else-if or when could be used to implement this.

    //Step 1: Create a variable
    //val weekday = "Friday"
    val hour = 20

    //Step 2: Use when to check opening hours

    val isOpen = when (weekday) {
        "Monday" -> hour >= 8 && hour <= 12
        "Tuesday" -> hour >= 8 && hour <= 18
        "Wednesday" -> hour >= 8 && hour <= 18
        "Thursday" -> hour in 8..18
        "Friday" -> hour in 8..21
        "Saturday" -> hour in 9..16
        "Sunday" -> hour in 8..16
        else -> Boolean
    }

    //Step 3: Check Lemon’s opening status
    when (isOpen) {
        true -> println("Little Lemon is open now")
        else -> println("Little Lemon is closed now")
    }


}