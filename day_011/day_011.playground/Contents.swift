import Cocoa

var greeting = "Hello, playground"
// How to limit access to internal data using access control

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
        print("Successfuly deposited $\(amount)")
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else{
            return false
        }
    }
    
    func currentState () {
        print("Currently you have $\(funds) in your account")
    }
}

var myWallet = BankAccount()

myWallet.deposit(amount: 5000)
myWallet.currentState()

// myWallet.funds = 10000
// myWallet.currentState()

struct School {
  static var studentCount = 0

  static func add(student: String) {
    print("\(student) joined the school")
    studentCount += 1
  }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

struct AppData {
    static let vesion = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeYURL = "https://www.hackingwithswift.com"
}
