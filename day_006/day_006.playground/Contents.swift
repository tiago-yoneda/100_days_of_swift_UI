import Cocoa

var greeting = "Hello, playground"

// How to use a for loo to repeat work

let platform = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platform {
    print("Swift works great on \(os)")
}

for i in 1...10 {
    print("5 x \(i) is \(5 * i)")
}

for i in 2..<10 {
    print("The \(i) times table")
    
    for j in 2..<10 {
        print("   \(j) x \(i) is \(j * i)")
    }
    print()
}

// How to use a while loop to repeat work

var countdown = 5

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

var roll = 0
var counter = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    counter += 1
    print("I rolled a \(roll)")
}

print("Critical Hit!!!")
print("I rolled \(counter) times")
print()

var newRoll = 0
counter = 10
var rollCounter = 0

while counter > 0 {
    var tempRoll = newRoll
    newRoll = Int.random(in: 1...20)
    print("I rolled a \(newRoll)")
    if newRoll == tempRoll {
        print("Same number, roll again!!")
        counter += 1
    }
    counter -= 1
    rollCounter += 1

}

print("I rolled \(rollCounter) times")

// how to skip loop item with break and continue
let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
    if filename.hasSuffix(".txt") {
        continue
    }
    print(filename)
}
print()
let number1 = Int.random(in: 3...9)
let number2 = Int.random(in: 11..<25)
var multiples = [Int]()
for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        if multiples.count == 20 {
            break
        }
    }
}

print("The first 20 multiples of \(number1) and \(number2) are \(multiples)")
