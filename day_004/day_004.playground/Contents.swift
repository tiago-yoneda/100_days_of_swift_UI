import Cocoa

var greeting = "Hello, playground"

// How to use type annotations

let surname: String = "Yoneda"

var score: Double = 22

print(score)

var albums: [String] = ["Red", "Fearless"] // an array of strings

var user: [String: String] = ["id": "@Yoneda"] // An dictionary where the keys and values are strings.

var books: Set<String> = Set([
    "The Philosopher stone",
    "The Chamber of Secrets",
    "The prisoner of Azkaban"
])

// those do the same thing
var teams: [String] = [String]()

var cities: [String] = []

var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

// you can remove the enum name now that style MUST be an USStyle

style = .dark

