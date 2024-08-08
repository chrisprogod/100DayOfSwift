import SwiftUI

func rollDice(sides: Int, count: Int) -> [Int] {
    
    var rolls = [Int]()
    
    for i in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    return rolls
}

print(rollDice(sides: 6, count: 4))
