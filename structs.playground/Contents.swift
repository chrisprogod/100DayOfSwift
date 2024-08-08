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
//print(red.artist)

//red.printSummary()

struct Employee {
    let name: String
    var vacationRemaining: Int

   mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            // all the data inside of a struct is constant becuz structs are constants by defauult which mean we cannot modifiy name and vacationRemaining. IN order for a functiont modify a struct, we need to name the function " mutating Func"
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Chris Teg", vacationRemaining: 20)

archer.takeVacation(days: 18)
