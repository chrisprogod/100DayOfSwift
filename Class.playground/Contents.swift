import Cocoa

class Game {
    var score = 0 {
        didSet {
     
            print("Score is now \(score)")
        }
    }
}
//the only difference between this class and a struct is the word "class" because we could swtich it out to "struct" and it would still work.
var newGame = Game()
newGame.score += 10
