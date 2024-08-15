import Cocoa
//property observers like willSet and didSet have to be added directly after the property we want to document. If i want a message to appear each time the property "gear" changes, i have to open a bracket right after the variable to call didset or willSet
struct Car {
    let model: String
    let numberOfSeats: Int
    var gear: Int {
        didSet {
            print("Gears changed from \(oldValue) to \(gear)")
        }
    }
    
    mutating func changeGear(gear: String) {
        if gear == "up" && self.gear < 10 && self.gear >= 0 {
            self.gear += 1
            
        } else if gear == "down" && self.gear < 10 && self.gear >= 0 {
            self.gear -= 1
            
        } else {
            print("Gears are either out of range, or enter a valid inpunt ('up' or 'down')")
        }
    }
}

var tc = Car(model: "Toyota", numberOfSeats: 4, gear: 0)
tc.changeGear(gear: "up")
tc.gear = 10
tc.changeGear(gear: "up")

