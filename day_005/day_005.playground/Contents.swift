import Cocoa

var greeting = "Hello, playground"

// how to check a condition is true or false
var score = 80
if score > 80 {
    print("Great Job!!")
} else {
    print("Try harder next time =/")
}

let speed = 88
if speed >= 88 {
  print("Where we're going, we don't need roads.")
}

// How to check multiple conditions

var age = 16

if age >= 18 {
    print("You can vote in the next election.")
} else if age >= 16 {
    print("Almost there, soon you can vote")
} else {
    print("Sorry you are way too young to vote")
}

let temp = 25

if temp > 20 && temp < 30 {
    print("It's a nice day")
}

let favoriteColor = "Blue"

if favoriteColor == "Red" || favoriteColor == "Blue" {
    print("You can use this Shirt")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.bicycle

if transport == .airplane || transport == .helicopter {
    print("let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic.......")
} else {
    print("I am going to hire a scooter now.")
}

// How to use switch statements to check multiple conditions

enum Weather {
    case sun, rain, wind, snow, unknown
}

var forecast = Weather.sun

if forecast ==  .sun {
    print("It should be a nice day.") // then continue with each case?
}

forecast = .snow

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled")
case .unknown:
    print("Our forecast generator is broken!")
default:
    print("This is the default method")
}

// How to use the ternary conditional operator for quick tests

age = 18
let canVote = age >= 18 ? "Yes" : "No"

print("Can vote: ", canVote)

var singers = ["Taylor Swift"]
print(singers == "Taylor Swift" ? "Success" : "Failure")
