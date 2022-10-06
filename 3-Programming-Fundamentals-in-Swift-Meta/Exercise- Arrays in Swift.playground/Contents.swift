var levelScores:[Int] = []
if levelScores.count == 0 {
    print("Hello, welcome to the first level")
}


let firstLevelScore = 10
levelScores.append(firstLevelScore)
print("The first level score is \(levelScores[0])")


let levelBonusScore = 40
levelScores[0] += levelBonusScore
print("The first level score + bonus is \(levelScores[0])")


let freeLevelScores = [20, 30]
levelScores += freeLevelScores
print(levelScores)


let freeLevels = 3
if levelScores.count == freeLevels {
    print("You have to buy the game in order to play its full version")
    levelScores = []
    print("Game restarted!")
}
print(levelScores)

levelScores += [103]
levelScores.append(6896)
print(levelScores)
