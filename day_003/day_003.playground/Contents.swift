import Cocoa

var greeting = "Hello, playground"

// -- arrays --
var beatles = ["John", "Paul", "George", "Ringo"]

// let numbers = []

beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Vivian")
print(beatles)

var scores = Array<Int>()
scores.append(100)
scores.append(80)

print(scores)

var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")

print(albums)

let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen"))
print(beatles.sorted())
print(beatles)

beatles.remove(at: 2)
print(beatles)

// -- dictionaries --

let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee["name", default: "Unknown"])

// var varName = [type1: type2]()
// no duplicate keys.

// -- sets --

var actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])

print(actors)

var newActors = Set<String>()
newActors.insert("Brendan Frasier")
newActors.insert("Jim Carrey")

print(newActors)
print(actors.sorted())
print(actors.contains("Daniel Radcliffe"))

// -- enums --

enum daysOfTheWeek {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

print(daysOfTheWeek.thursday)

var day = daysOfTheWeek.saturday
print(day)
day = daysOfTheWeek.sunday
print(day)
day = .monday
print(day)
