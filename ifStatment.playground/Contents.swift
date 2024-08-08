import SwiftUI

let score = 85

if score > 85 {
    print("Goodjob")
} else {
    //print("Be bigger")
}


var numbers = [1, 2, 3, 4]
numbers.append(5)

if numbers.count > 4 {
    numbers.remove(at: 0)
}
//print(numbers)

var userName = "Chris"

if userName.isEmpty {
    userName = "Annonymous"
}
//print("Welcome, \(userName)")


let temp = 28
let rain = true
           //and
if temp > 25 && temp < 30 {
    print("It's a nice day today")
}
            //or
if temp < 25 || rain {
    print("It humid today")
} else {
    print("It's very hot today")
}

enum transportOption {
    case  Airplane, Helicopter, bicycle, car, eScooter
}

let transport = transportOption.Airplane

if transport == .Airplane || transport == .Helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path")
} else if transport == .car {
    print("Time to get stuck in traffic")
} else {
    print("I'll tkae my scooter now")
}
