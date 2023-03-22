import Cocoa

var greeting = "Hello, playground"

// checkpoint 3

for i in 1...100 {
    if i.isMultiple(of: 15) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Buzz")
    } else if i.isMultiple(of: 5) {
        print("Fizz")
    } else {
        print(i)
    }
}
