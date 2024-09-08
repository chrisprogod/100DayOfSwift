import Cocoa

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}


class Car: Vehicle {
    var isConvertible: Bool = true

      
//    init(isConvertible: Bool, isElectric: Bool) {
//        self.isConvertible = isConvertible
//        super.init(isElectric: isElectric) // keyword super allows us to call from parent class
                                            // if a child class has any custom initializers, it must always call the parent’s initializer after it has finished setting up its own properties, if it has any.
        
        //if a child class dosent have its own initiailyzer (had a default value for its property) it automatically inherit the initiailizer of its parent class
}

let teslaX = Car(isElectric: true)
//we couldve aslo written let teslaX = Vehicule(isElectric: true) but in that case the property "isCOnvertible" wouldnt existe
teslaX.isConvertible = false
