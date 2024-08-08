import SwiftUI


enum passwordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw passwordError.short
    }

    if password == "12345" || password == "password" {
        throw passwordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let pass = "12003"


do {
   let result = try checkPassword(pass)
    print("Password rating: \(result)")
} catch passwordError.short{
    print("Error: Password to short")
} catch passwordError.obvious {
    print("Error: Password to obivous")
} catch {
    print("Error encountered")
}
