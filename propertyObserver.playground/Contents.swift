import Cocoa

struct Game {
    var score = 0
}

var game = Game()
game.score += 10
print("Score is now \(game.score)")
game.score -= 3
print("Score is now \(game.score)")
game.score += 1

// here we didnt print the socre after the last change and that is a possible mistake that can lead to bugs
//we canfix that with 
