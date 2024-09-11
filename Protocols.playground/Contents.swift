import Cocoa

protocol Vehicule {
    func estimateTime(for distance: Int) -> Int
    //no function body allowed
    func travel(distance: Int)
}

struct Car: Vehicule {
    func estimateTime(for distance: Int) -> Int {
        distance/50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance) km")
    }
    
    func openSunroff() {
        print("It's a nice day")
    }
}


//because the struct Car conforms to the protocol Vehicule, it must have at least all of it methods. Car must contain both func estimateTime with the same parameter and return type and func travel(distance: Int)
