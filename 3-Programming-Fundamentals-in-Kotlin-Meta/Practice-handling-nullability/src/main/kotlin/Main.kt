//https://www.coursera.org/learn/meta-programming-fundamentals-kotlin/supplement/LaqiL/exercise-practice-handling-nullability

class Student (
    val id: Int,
    val name: String,
    val grade: Double
        ) {
    fun students () {

    }
    
}




fun main(args: Array<String>) {
    println("Hello World!")



    val students = listOf<Student>()
    // Try adding program arguments via Run/Debug configuration.
    // Learn more about running applications: https://www.jetbrains.com/help/idea/running-applications.html.
    println("Program arguments: ${args.joinToString()}")
}