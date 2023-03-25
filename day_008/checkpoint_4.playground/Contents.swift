import Cocoa

var greeting = "Hello, playground"
// Checkpoint 4
// Write a function that accepts an integer from 1 through 10_000 and returns the integer square root of that number.
// You can't use the build-in sqrt() function or similar -  you need fo tind the square root yourself
// if the number os less thatn 1 or greater than 10_000 you should throw an "out of bounds" error
// you should only consider integer square roots
// if you can't find the square root, throw a "no root" error.

enum rootErrors: Error {
    case outOfBounds, noRoot
}

func returnSquareRoot (for number: Int) throws -> Int {
    if number < 1 || number > 10_000 { throw rootErrors.outOfBounds }
    var root = 1
    while true {
        if root * root == number {
            return root
        } else if root * root > number {
            throw rootErrors.noRoot
        } else {
            root += 1
        }
    }
}

let myNumber = 9801

do {
    let result = try returnSquareRoot(for: myNumber)
    print("The root for \(myNumber) is \(result)")
} catch {
    print("We got an error -> \(error)")
}

