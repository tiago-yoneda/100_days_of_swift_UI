import Cocoa

var greeting = "Hello, playground"
greeting = "Hello, everyone"

var playerName = "Yoneda"
print(playerName)
playerName = "Tiago"
print(playerName)
playerName = "Sayuri"
print(playerName)

let movieName = """
This in
an example of
a multi line string
"""

print(movieName)
print(movieName.count)

let quote = "I like shorts, they are comfy and easy to wear"
let quote2 = "This text reads \"Start\" I think"
print(quote)
print(quote2)

print(movieName.uppercased())
print(movieName.lowercased())
movieName.hasPrefix("This")
movieName.hasSuffix("strings")

let amountOfMoney = 1_000_000_000
print(amountOfMoney)

var myNumber = 10
myNumber += 5
print(myNumber)
myNumber *= 2
myNumber /= 3
myNumber -= 5

myNumber = 120
myNumber.isMultiple(of: 6)

var newNumber = 0.1 + 0.2
print(newNumber)
