//https://www.coursera.org/learn/programming-fundamentals-swift/supplement/lERJj/exercise-practice-using-functions

/*
var goldBars = 0
func unlockTreasureChest(inventory: Int) -> Int {
   return inventory + 100
}
goldBars = unlockTreasureChest(inventory: goldBars)
goldBars = unlockTreasureChest(inventory: goldBars)
goldBars = unlockTreasureChest(inventory: goldBars)

for _ in 1...3 {
    goldBars = unlockTreasureChest(inventory: goldBars)
}

print("You have \(goldBars) gold bars")
*/


/*
func numberOfUnlockedTreasureChests(numberOfUnlocked: Int) -> String {
    for _ in 1 ... numberOfUnlocked {
        unlockTreasureChest()
    }
}
*/


var goldCoins = 0
var doubleGoldCoins = 0
var coinsAmount = 1000
func openChestWithCoins(loot: Int, coins: Int = coinsAmount) -> Int {
    loot + coins
}

func openChestWithDoubleCoins(loot: Int, coins: Int = coinsAmount) -> Int {
    loot + coins * 2
}

for _ in 1...5 {
    goldCoins = openChestWithCoins(loot: goldCoins)
    doubleGoldCoins = openChestWithDoubleCoins(loot: doubleGoldCoins)
}


print("You have \(goldCoins) gold coins. If You have double bonus, then amount of golden coins is \(doubleGoldCoins)")

