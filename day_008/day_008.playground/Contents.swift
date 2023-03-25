import Cocoa

var greeting = "Hello, playground"
// How to provide default value for parameters

func printTimesTables (for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(number) x \(i) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

// How to handle errors in functions
enum PasswordError: Error {
    case short, obvious, niceTry
}

func checkPassword (_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password.hasPrefix("1234") { throw PasswordError.obvious }
    if password.hasPrefix("qwert") { throw PasswordError.niceTry }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let myPassword = "qwert"

do {
    let result = try checkPassword(myPassword)
    print("Password rating \(result)")
} catch PasswordError.short {
    print("Please use a longer Password")
} catch PasswordError.obvious {
    print("My grandma has a password like this")
} catch {
    print("There was an error.")
    print(error)
}
