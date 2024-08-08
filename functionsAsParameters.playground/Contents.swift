import SwiftUI

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for i in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}
let rolls = makeArray(size: 4) {
    Int.random(in: 1...20)
}
print(rolls)
