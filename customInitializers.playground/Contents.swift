import Cocoa

struct Player {
    let name: String
    let number: Int
    
    init(name: String) { // dosent return anything
        self.name = name
         number = Int.random(in: 1...99)
        ///The name is passed in as a parameter and assigned to self.name.The number is not passed in by the user; instead, it is assigned within the initializer using Int.random(in: 1...99), ensuring that every new Player instance automatically gets a valid random number.
    }
}

let player = Player(name: "Chris")
print(player.number)

