
import Cocoa

class Employee {
     let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I worked \(hours) hours today.")
    }
}

//class dont automatically create memberwise initializer so we always need a custom one

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {   // we use override to change a method from a superclass(parentclass)
                                     //if a parent class has a method that dosent take a parameter and dosent return anything and the parent class has child class with the same emthod that takes in a paramteter, the methods are considered different and wont require the override keyword.
                                     //In this case, printSummary() is the same in both classes
        print("As a Dev, I worked \(hours) hours today. ")
    }
}
                                                            // Developer and Manager both inherit the Employee propertie (hours) and its initializer

final class Manager: Employee {  //we can use final to identify a class that wont have any subclass
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 3)
let marc = Manager(hours: 5)

robert.work()
marc.work()

robert.printSummary() // we can call the function printSUmmary from the superclass Emloyee

