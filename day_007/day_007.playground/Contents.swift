import Cocoa

var greeting = "Hello, playground"

// How to reuse code with functions

func showWelcome(){
    print("Welcome to my App!")
    print("By default this prints out random stuff")
    print("I'd like to get shenhe in genshin impact")
    print("But i'm also saving for Kazuha T-T")
}

showWelcome()

print("---")

func printTimesTable (number: Int, end: Int) {
    for i in 1...end {
        print ("\(number) * \(i) is \(i * number)")
    }
}

printTimesTable(number: 7, end: 13)

// How to return value from fucntions
print("---")
let root = sqrt(169)
print(root)

func rollDice (sides: Int) -> Int {
    Int.random(in: 1...sides)
}

print()
let result = rollDice(sides: 6)
print(result)

let string1 :String
let string2 :String

func useSameLetters (string1: String, string2: String) -> Bool {
    let string1Letters = Set(string1.sorted()).sorted()
    let string2Letters = Set(string2.sorted()).sorted()
    
    return string1Letters == string2Letters
}

string1 = "ana banana"
string2 = "bana ana"
print(useSameLetters(string1: string1, string2: string2))

func pythagoras (a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

print(pythagoras(a: 3, b: 4))

func greet(name: String) -> String {
    name.isEmpty ? "Who are you?" : "Hello, \(name)"
}

print(greet(name:"Yoneda"))

// How to return multiple values from a function

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Tiago", lastName: "Yoneda")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")
print("Name: \(user.0) \(user.1)")

let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")

// How to customize parameter labels

func play(song: String) {
    print("Hey listen to this song called \(song)")
}

func play(movie: String) {
    print("Hey, let's watch \(movie)")
}

func play(sport: String) {
    print("Anyone wants to play \(sport)")
}

play(song: "All the small things")
play(movie: "Tropical Thunder")
play(sport: "Volleyball")

func printTimesTable(for number:Int){
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(for: 5)
