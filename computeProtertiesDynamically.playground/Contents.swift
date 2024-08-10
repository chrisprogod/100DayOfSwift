import SwiftUI

struct Employee {
    let name: String
    var vacationRemaining: Int
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)

archer.vacationRemaining -= 5
print(archer.vacationRemaining)
archer.vacationRemaining -= 3
print(archer.vacationRemaining)

//This code is correct but we losee the initial value of vacationRemaining

struct employee {
    let person: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var remaining: Int {
        vacationAllocated - vacationTaken
    }
    //"remaining" is a computed property as it runs a a calculation automatically whenever its called
}

var chris = employee(person: "Chris", vacationAllocated: 20)
chris.vacationTaken += 10
print(chris.remaining)
print(chris.vacationAllocated)

