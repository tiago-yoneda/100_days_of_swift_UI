import Cocoa

var greeting = "Hello, playground"
// How to create and use closures

func greetUser () {
    print("Hi there!")
}

greetUser()

// var greetCopy = greetUser
var greetCopy: () -> Void = greetUser

greetCopy()

let sayHello = { (name: String) -> String in
    return "Hi there! Welcome \(name)"
}

print(sayHello("Yoneda"))

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

print(sayHello("Yoneda"))

var team = ["Suzanne", "Gloria", "Piper", "Yoneda", "Tasha", "Tiffany"]
//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Yoneda" {
//        return true
//    } else if name2 == "Yoneda" {
//        return false
//    }
//
//    return name1 < name2
//})
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: {
    (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
});

print(captainFirstTeam)

// How to use trailing closures and shorthand syntax

let captainFirstTeamNew = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
};

print(captainFirstTeamNew)

// how to accept functions as parameters

func greetUser2() {
    print("Hi there!")
}

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}
    
func generateNumber () -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)

print(newRolls)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third and last work")
}
 
func goCamping(then action: () -> Void) {
    print("We're going camping!")
    action()
}
goCamping {
    print("Sing songs")
    print("Put up tent")
    print("Attempt to sleep")
}

func goOnVacation(to destination: String, _ activities: () -> Void) {
    print("Packing bags...")
    print("Getting on plane to \(destination)...")
    activities()
    print("Time to go home!")
}
goOnVacation(to: "Mexico") {
    print("Go sightseeing")
    print("Relax in sun")
    print("Go hiking")
}
