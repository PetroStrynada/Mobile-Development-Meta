import Cocoa

//Common recursion examples
//https://www.coursera.org/learn/advanced-programming-in-swift/supplement/dyvAJ/common-recursion-examples

//Fun Algorithms: Recursive Search through Binary Tree
//https://www.youtube.com/watch?v=beQEimO3-3E

//Output n numbers to console

//with the while loop
var n = 6

while n > 0 {
    print(n)
    n -= 1
}

print()

//with recursion
n = 6

func output(n: Int) {
    if (n==0) { // step 1 base case
        return
    }
    else {
        print(n) // step 2 perform the work
        output(n: n-1) // step 3 repeat recursion with smaller problem
    }
}

output(n:6)

print()

//Finding a sum of all numbers from 1 to n

//with the while loop
n = 6
var sum = 0

while n > 0 {
    sum += n
    n -= 1
}
print(sum)

print()

//with recursion
n = 6
sum = 0

func outputSum(n: Int) -> Int {
    if(n==0) { // step 1 base case
        return 0
    }
    else {
        return n + outputSum(n: n - 1) // step 2 and step 3
    }
}

