import SwiftUI


enum possibleErrors: Error {
    case outOfBounds, noRoot
}

func findSqrt(for number: Int) throws -> Int {
    if number > 10_000 || number < 1 {
        throw possibleErrors.outOfBounds
    }
    

    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    throw possibleErrors.noRoot
}


do {
    try print(findSqrt(for: 5))
} catch possibleErrors.outOfBounds {
    print("Error: You must choose a number between 1 and 10 000")
} catch possibleErrors.noRoot {
    print("Error: This number has no natural root")
} catch {
    print("UNEXPECTED ERROR")
}
