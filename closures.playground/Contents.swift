import SwiftUI

//its important to know that functions also have types just like strings, Int, bools and doubles

func greetUser() {
    print("Hi there")
}

//greetUser()

//the function greetCopy accepts no parameters, dosent return values and dosent throw errors
//in this case if we want to explicitly precise de type annotation (even tho its not mandatory), we wouls say that the functions returns a void like this↓

//var greetCopy = greetUser
var greetCopy: () -> Void = greetUser
//greetCopy()


func getUserData (for id : Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

getUserData(for: 9)

let data: (Int) -> String = getUserData
let user = data(2)


var sayHello = {
    print("Hi there!")
}
//sayHello()





//Closure
let sayhello = { (name: String) -> String in
    "Hi \(name)!"
}

print(sayhello("bruh"))
