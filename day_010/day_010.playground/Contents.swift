import Cocoa

var greeting = "Hello, playground"
// day 010
// How to create your own structs
struct Album {
  let title: String
  let artist: String
  let year: Int

  func printSummary() {
    print("\(title) (\(year)) by \(artist)")
  }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

red.printSummary()
wings.printSummary()

struct Employee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining")
        }
    }
}

var yoneda = Employee(name: "Yoneda", vacationRemaining: 30)
yoneda.takeVacation(days: 10)
print(yoneda.vacationRemaining)
print("---")

struct Book {
    var totalPages: Int
    var pagesLeftToRead = 0
    mutating func read(pages: Int) {
        if pages < pagesLeftToRead {
            pagesLeftToRead -= pages
        } else {
            pagesLeftToRead = 0
            print("I'm done!")
        }
    }
}

struct newEmploee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer = newEmploee(name: "Steerling Archer", vacationAllocated: 14)
archer.vacationTaken += 5
print(archer.vacationRemaining)

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score += 5

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
            print()
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was? \(oldValue)")
            print()
        }
    }
}

var app = App()
app.contacts.append("Yoneda T.")
app.contacts.append("Yamagata S.")

// How to create custom initializers
// memberwise initializer
struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Yoneda")
print(player.number)
