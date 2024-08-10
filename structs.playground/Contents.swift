import SwiftUI

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Swift", year: 2012)
print(red)

//red.printSummary()

struct Employee {
    let name: String  // here we can specifiy a default value like "Anonymous" but since it a constant, it would not be mutable when calling the instance of employee
    var vacationRemaining: Int = 14  //here since vacationRemaining is a variable, it can have a default value so it dosent have to be specified when calling the struct Employee

   mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            // all the data inside of a struct is constant becuz structs are constants by defauult which mean we cannot modifiy name and vacationRemaining. IN order for a functiont modify data in a struct, we need to name the function " mutating Func".
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var chris = Employee.init(name: "Chris Teg", vacationRemaining: 20)
var ange = Employee(name: "Ange Teg")

ange.takeVacation(days: 15)
chris.takeVacation(days: 18)
