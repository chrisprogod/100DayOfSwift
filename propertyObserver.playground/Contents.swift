import Cocoa

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10

game.score -= 3

game.score += 1

// here we didnt print the socre after the last change and that is a possible mistake that can lead to bugs
//we canfix that with 


struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        //willSet
        ///Purpose: willSet is called just before the value of the property is changed.
        ///Parameters: It has a default parameter newValue that contains the value that will be set.
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
            //didSet
            ///Purpose: didSet is called immediately after the value of the property has been changed.
            ///Parameters: It has a default parameter oldValue that contains the previous value before the change.
        
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Chris Teg")

