import SwiftUI

func makeArray(size: Int, generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for i in 0..<size {
        numbers.append(generator())
    }
    return numbers
}

let rolls = makeArray(size: 4) {
    Int.random(in: 1...30)
}

//Since the closure is the last argument, Swift allows you to place it outside the parentheses for readability. This doesn't change the logic; it just makes the code look cleaner. It can also be written like this
let olls = makeArray(size: 4, generator: {
    Int.random(in: 1...30)
})

//here the generator is inside the parrentheses butd its not very readeble


print(rolls)

let letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

func RandomWord(size: Int, wordPick: () -> String) -> [String] {
    var word = [String]()
    
    for _ in 0..<size {
        word.append(wordPick())
    }
    return word
}

let firstWord = RandomWord(size: 4) {
    letters[Int.random(in: 0..<letters.count)]
}
print(firstWord)
