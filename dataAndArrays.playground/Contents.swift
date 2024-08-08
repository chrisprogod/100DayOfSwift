import SwiftUI

var beatles = ["John", "Paul", "George", "Ringo"]
beatles.append("Adrien")
//print(beatles)
beatles.remove(at: 2)
//print(beatles)

let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

///Create an empty array
///var siblings = Array<Int>()
var siblings = [String]()
siblings.append("Ange")
siblings.append("Céline")
siblings.append("Christian")
siblings.count
//print(siblings)


//dicitonries
var employee = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]
///keys are not always guaranteed to be there
///For that we have to add a default value to not confuse the program in case the key is not in the array
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

var height = [String: String]()
height["Chris"] = "178"
height["Ange"] = "175"
height["Papa"] = "180"
print(height["Chris", default: "Unknown"])
height.count
height.removeValue(forKey: "Chris")
height.count
height["Céline"] = "130"
print(height)
