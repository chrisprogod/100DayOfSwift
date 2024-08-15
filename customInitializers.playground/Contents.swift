import Cocoa

struct Player {
    let name: String
    let number: Int
    let tall: Bool

    init(name: String) { // dosent return anything. Number is not added as a parameter because we dont want the user to specify its handled by a andomizer
        //Struct    //aberrgument
        self.name = name
        tall = Bool.random()
        number = Int.random(in: 1...99)
        ///The name is passed in as a parameter and assigned to self.name.The number is not passed in by the user; instead, it is assigned within the initializer using Int.random(in: 1...99), ensuring that every new Player instance automatically gets a valid random number.
        ///The initializer is responsible for assigning values to all the properties of an instance when it is created. In your code, the initializer takes a name parameter and uses it to set the name property of the Player structure.
        ///once a custom initializer is created, swifts own initializer dosent run automatically anymore
    }
}

let chris = Player(name: "Chris")
chris.number
print("Name: \(chris.name) \nNumber: \(chris.number) \nTall status: \(chris.tall)")
