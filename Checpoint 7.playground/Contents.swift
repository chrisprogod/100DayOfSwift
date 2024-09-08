import Cocoa

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    
    func speak() {
        print("Dog barking")
    }
}

final class Corgi: Dog {
    override func speak() {
        print("Wouf, wouf")
    }
}

final class Poddle: Dog {
    override func speak() {
        print("yip, yip")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    func speak() {
        
        print("Feline sound")
    }
}

final class Persian: Cat {
    override func speak() {
        print("Miaouu")
    }
}

final class Lion: Cat {
    override func speak() {
        print("Roooaaar")
    }
}


let zeke = Poddle(legs: 4)
zeke.speak()
zeke.legs

let yorki = Persian(isTame: true)
yorki.legs
yorki.speak()
