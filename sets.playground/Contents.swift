import SwiftUI

//Sets dont allow duplicates and dont remeber the order of the array
var actors = Set([
"Denzel Washington",
"Tom Cruise",
"Rupert Grint",
"Samuel L Jackson"
])

actors.insert("Tom Holland")

print(actors)


var myFamily = Set<String>()
myFamily.insert("Christian")
myFamily.insert("Ange")
myFamily.insert("Bob")
myFamily.insert("Céline")
myFamily.insert("Rosine")
myFamily.insert("Theophile")

print(myFamily.sorted())
var newFamArray = myFamily.sorted()
type(of: newFamArray)
newFamArray.append("Dominique")
