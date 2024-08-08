
import Foundation

//
//print("What would you like the range to be in: ")
//var rangeInput = Int(readLine()!)!
//
//var randInt = Int.random(in: 0...rangeInput)
//
//if randInt < 10 {
//    print("Your range has to be above 10")
//} else {
//    print("Have fun trying to guess the mystery number! \n Type what you think the correct number is:")
//    
//    while true {
//        var n = Int(readLine()!)!
//        if n == randInt {
//            print("You guessed the Mystery number!")
//            break
//            
//        } else if n > randInt {
//            print("Bigger")
//        } else {
//            print("Smaller")
//        }
//    }
//}
//


// Function to get user input from the console
func getInput(prompt: String) -> String? {
    print(prompt, terminator: ": ")
    return readLine()
}

// Function to convert user input to an integer
func getIntInput(prompt: String) -> Int? {
    if let input = getInput(prompt: prompt), let intInput = Int(input) {
        return intInput
    }
    return nil
}

// Main game function
func guessingGame() {
    guard let lowerBound = getIntInput(prompt: "Enter the lower bound of the range"),
          let upperBound = getIntInput(prompt: "Enter the upper bound of the range"),
          lowerBound < upperBound else {
        print("Invalid range. Please enter valid lower and upper bounds.")
        return
    }

    let randomNumber = Int.random(in: lowerBound...upperBound)
    var userGuess: Int?
    
    print("Guess the number between \(lowerBound) and \(upperBound)")

    while userGuess != randomNumber {
        userGuess = getIntInput(prompt: "Enter your guess")

        if let guess = userGuess {
            if guess < randomNumber {
                print("The number is bigger than \(guess)")
            } else if guess > randomNumber {
                print("The number is smaller than \(guess)")
            } else {
                print("Congratulations! You've guessed the number \(randomNumber)")
            }
        } else {
            print("Please enter a valid number")
        }
    }
}

// Start the game
guessingGame()
