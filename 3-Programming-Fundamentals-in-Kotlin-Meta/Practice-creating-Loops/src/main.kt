fun main() {
    //https://www.coursera.org/learn/meta-programming-fundamentals-kotlin/supplement/QxKhB/exercise-practice-creating-loops
    /*
    Task 1

    The first task is to display the following triangle built using star symbols:

    *****
     ****
      ***
       **
        *

     */
    var starsNumber = 5
    for (i in 1..starsNumber) {
        var crutch = starsNumber + 1
        var currentStarsNumber = crutch - i
        var currentSpace = i -1
        for (k in 1..currentSpace) {
            print(" ")
        }
        for (j in 1..currentStarsNumber) {
            print("*")
        }
        println()
    }

    /*
    Task 2

    Now that you have created a triangle using a for in loop, you should now attempt to use for in loops
    to display the triangle shape below. You can use the steps in Task 1 as a guide to solving this task.

     *********
      *******
       *****
        ***
         *

     */

    starsNumber = 9
    var stepRange = 2
    var spaceStep = 1
    var currentLines = starsNumber/stepRange + starsNumber % stepRange
    for (i in 1..currentLines) {
        var crutch = starsNumber + stepRange
        var currentStarsNumber = crutch - i * stepRange
        var currentSpace = i - 1
        for (k in 1..currentSpace) {
            print(" ")
        }
        for (j in 1..currentStarsNumber) {
            print("*")
        }
        println()
    }

    /*
    Task 3

    Various shapes can be built by using for in loops in this way.  For this task attempt to use for in loops
    to display the triangle shape below. You can use the steps in Tasks 1 and 2 as a guide to solving this task.



         *
        **
       ***
      ****
     *****
      ****
       ***
        **
         *

     */

    for (i in 1 until 5) {
        val numberOfSpaces = 5 - i
        for (j in 1..numberOfSpaces) {
            print(" ")
        }
        val numberOfStars = i
        for (j in 1..numberOfStars) {
            print("*")
        }
        println()
    }
    for (i in 1..5) {
        val numberOfSpaces = i - 1
        for (j in 1..numberOfSpaces) {
            print(" ")
        }
        val numberOfStars = 6 - i
        for (j in 1..numberOfStars) {
            print("*")
        }
        println()
    }

}