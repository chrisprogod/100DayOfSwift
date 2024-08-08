import SwiftUI
import Foundation

//var countdown = 10
//
//while countdown > 0 {
//    print("\(countdown)...")
//    countdown -= 1
//}
//
//print("Blastoff!")


//Getting a random number/doubles
let id = Int.random(in: 1...10000)
print(id)

// create an integer to store our roll
var roll = 0
var rollNum = 0
var rollRange = 1

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: rollRange...100)
    print("I rolled a \(roll)")
    rollNum += 1
    //rollRange += 1
 
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit in \(rollNum) tries")


