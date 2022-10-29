
//https://www.coursera.org/learn/meta-programming-fundamentals-kotlin/supplement/CkbTu/exercise-practice-defining-classes-methods-and-functions

/*
Scenario

Imagine you have secured a job with a game development company. Your first assignment is to create a small piece of code
to hold the player data for one of their games. The requirements of your program are:

    - Store and display the player’s full name
    - Store, manipulate and display the player’s score data
    - Store and display a personal best score (players get a score for each level played)
    - Display the winning player’s name and their total score and their best level score
 */

//Task 1: Data storage
//Task 2: Adding properties and functionality
//Task 3: Completing the code

//Step 1.1: Create a Player Class
//Step 2.1: Adding more properties to the Player class
class Player(val name: String = "",
             val surName: String = "",
             var totalScore: Double = 0.0,  //2.1
             var bestScore: Double = 0.0,    //2.1
             ) {
    fun fullName() {
        println(name + " " + surName)
    }
    fun checkBestScore (currentLevelScore: Double) {
        if(currentLevelScore > bestScore) bestScore = currentLevelScore
    }
}


/*
//Step 2.2: More functionality
class Scores(var currentLevelScore: Double = 0.0,
             var bestLevelScore: Double = 0.0) {
    fun newBestScore() {
        if (currentLevelScore > bestLevelScore)  currentLevelScore else bestLevelScore
    }
}
 */


fun main() {

    //Step 1.2: Initialise the Player class
    val P1 = Player("Petro", "Strynada")
    val P2 = Player("Magnus", "Carlsen")
    //Step 1.3: Test the new instances
    println("${P1.fullName()} ${P2.fullName()}")
    //Step 1: Prepare the main function
    //val scoring = Scores()
    var lvlScore: Double = 0.0
    fun playLevel(player: Player) {
        player.totalScore += lvlScore
        player.checkBestScore(currentLevelScore = lvlScore)
    }
    //Level1
    lvlScore = 20.0
    playLevel(P1)
    playLevel(P2)
    //Level2
    lvlScore = 35.0
    playLevel(P1)
    playLevel(P2)
    //Level3
    lvlScore = 25.0
    playLevel(P1)

    var winner = Player() //Creating and initialisation variable winner
    when {
        (P1.totalScore > P2.totalScore) -> winner = P1
        (P2.totalScore > P1.totalScore) -> winner = P2
        else -> println("DRAW")
    }
    println("The winner is ${winner.name} ${winner.surName} with a Score of ${winner.totalScore.toInt()}")
    println("Personal Best Sore is ${winner.bestScore.toInt()}")


    /*
    //Print the winner
    if (P1.totalScore > P2.totalScore) {
        println("The winner is ${P1.name} ${P1.surName} with a Score of ${P1.totalScore.toInt()}")
        println("Personal Best Sore is ${P1.bestScore.toInt()}")

    } else if (P2.totalScore > P1.totalScore) {
        println("The winner is ${P2.name} ${P2.surName} with a Score of ${P2.totalScore.toInt()}")
        println("Personal Best Sore is ${P2.bestScore.toInt()}")

    } else {
        println("DRAW")
    }

     */
}