//https://www.coursera.org/learn/meta-programming-fundamentals-kotlin/supplement/pZcnH/exercise-practice-using-functions-with-results

/*
Step 5: Run the code
Run the code and the following should display in the console:

0
10
50
40
55

 */

//Step 2: Define the function name
//Step 3: Define the function parameters
//Step 4: Define the function return type
//Step 5: Implement the function
//Add your function below this line
/*
fun getPoints(basePoints: Int, boost: Int) :Int {
    return basePoints * boost
}
 */

//My option of function
fun getPoints(basePoints: Int, boost: Int) :Int = basePoints * boost

fun main() {
    //Step 1: Set up the initial code
    var score = 0;
    println(score)
    score += getPoints(10, 1)
    println(score)
    score += getPoints(20, 2)
    println(score)
    score += getPoints(-10, 1)
    println(score)
    score += getPoints(5, 3)
    println(score)
    score += getPoints(-15, 2)
}