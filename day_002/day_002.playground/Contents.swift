import Cocoa

var greeting = "Hello, playground"
// Playground for day 2

// How to store truth with booleans
var launchGame = true
print(launchGame)
launchGame = !launchGame
print("Does this work?", launchGame)
launchGame.toggle()
print("This should be true -", launchGame)

let myVariable = "xablau"
print("This will show before the variable (", myVariable, ") and this will show after.")

// how to join strings together

let firstPart = "Hello, "
let secondPart = "world"
let wholeSentece = firstPart + secondPart
print(wholeSentece)

let name = "Tiago"
let age = 35
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)
print("5 * 5 is \(5*5)")

var answer = ""
answer = name == "Tiago" ? "ok" : "not OK"
print(answer)
