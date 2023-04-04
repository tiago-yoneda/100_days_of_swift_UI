import Cocoa

var greeting = "Hello, playground"
// checkpoint 6
// Create a struct to store information about a car. Include: it's model, number of seats, current gear
// add a method to change gears up or down
// have a think about variables and access control
// don't allow invalid gears


struct Car {
    private let model: String
    private let numberOfSeats: Int
    private var currentGear = 1
    
    init (model: String, numberOfSeats: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
    }
    
    mutating func gearUp () {
        if self.currentGear < 10 {
            self.currentGear += 1
            print("GEAR UP - currently in gear \(self.currentGear)")
        } else {
            print("You are already at the highest gear(\(self.currentGear)), you can't go UP")
        }
    }
    
    mutating func gearDown () {
        if self.currentGear > 1 {
            self.currentGear -= 1
            print("GEAR DOWN - currently in gear \(self.currentGear)")
        } else {
            print("You are already at the lowest gear(\(self.currentGear)), you can't go down")
        }
    }
    
    static var example = Car(model: "Brasilia", numberOfSeats: 5)
}

var sandeiro = Car(model: "Renault", numberOfSeats: 5)
for _ in 1...15 {
    sandeiro.gearUp()
}
for _ in 1...15 {
    sandeiro.gearDown()
}

