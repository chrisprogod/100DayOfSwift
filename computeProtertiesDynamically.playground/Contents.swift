import SwiftUI

struct Employee {
    let name: String
    var vacationRemaining: Int
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)

archer.vacationRemaining -= 5
//print(archer.vacationRemaining)
archer.vacationRemaining -= 3
//print(archer.vacationRemaining)

//This code is correct but we losee the initial value of vacationRemaining

struct employee {
    let person: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var remaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue //newValue is the value assigned to remaining
        }
    }
    //"remaining" is a computed property as it runs a a calculation automatically whenever its called
}

var chris = employee(person: "Chris", vacationAllocated: 20)
chris.vacationTaken += 10
chris.remaining = 2 
print(chris.vacationAllocated)

// a getter(get) reads info and is used to define what happens when we get values
// a setter is used to define what happens when you change (or "set") the value of the property. You can customize how the new value is handled or how it affects other properties
//The logic now is that if we take 10 days of vacation and then we have four days remaining, vacationAllocated = 14


