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
func openChestWithCoins(loot: Int) -> Int {
    loot + 100
}
for _ in 1...3 {
    goldCoins = openChestWithCoins(loot: goldCoins)
}
print("You have \(goldCoins) gold coins")
