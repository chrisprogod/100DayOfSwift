import SwiftUI
//create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

var Family = ["Theophile", "Rosine", "Christian", "Ange", "Céline", "Theophile", "Rama", "Rama"]

print(Family.count)

//Sets cannot have duplicate values
let setFamily = Set(Family)

print(setFamily.count)
