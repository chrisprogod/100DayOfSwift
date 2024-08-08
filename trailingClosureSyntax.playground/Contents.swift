import SwiftUI

let team = ["Bob", "Dora", "Celine", "Ange", "Eric", "Chris"]


let sorted = team.sorted(by: { (a: String, b: String) -> Bool in
    if a == "Dora"{
        return true
    } else if b == "Dora" {
        return false
    }
    return a < b
})
// since the function sorted HAS to take in two strings and return a bool, we do not have to specify it in our code
//when a function like sorted() accepts another functiond as a paramter, swifts lets ur use trailling closure syntax to make our code shorter we can remove the "(by:" and the last parathenesis

let Sorted = team.sorted { a, b in
    if a == "Dora"{
        return true
    } else if b == "Dora" {
        return false
    }
    return a < b
}


//here's a closure that filters all the names that start with the letter C from an array and return those names in an array

let cOnly = team.filter {$0.hasPrefix("C")}
print(cOnly)


