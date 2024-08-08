import SwiftUI

let age = 18
let canVote = age >= 18 ? "Yes" : "No"
//    Check condition     True    False


let hour = 23

print(hour < 12 ? "It's before noon" : "It's afternoon")


//Check if an array is empty
let names = ["Chris", "Ange", "Céline"]
print(names.isEmpty ? "No one" : "There are \(names.count) people")

enum Theme {
    case dark, light
}

let screeTheme = Theme.dark

let backround = screeTheme == .dark ? "Black" : "White"
print(backround)
