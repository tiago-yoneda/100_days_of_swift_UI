import Cocoa

// var greeting = "Hello, playground"
// Checkpoint 5
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
// Filter out any numbers that are even
// Sort the array in ascending order
// Map them to strings in the format “7 is a lucky number”
// Print the resulting array, one item per line

func formatLuckyNumbers (_ array: [Int]) {
    (array.filter {!$0.isMultiple(of: 2)}.sorted()).map { print("\($0) is a lucky number") }
}

formatLuckyNumbers(luckyNumbers)

luckyNumbers.filter {!$0.isMultiple(of: 2)}.sorted().map { print("\($0) is a lucky number") }
