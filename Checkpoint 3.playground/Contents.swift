import SwiftUI

let multiple1 = 3
let multiple2 = 5

for i in 1...100 {
    if i.isMultiple(of: multiple1) && i.isMultiple(of: multiple2) {
        print("FizzBuzz")
        
    } else if i.isMultiple(of: multiple1) {
        print("Fizz")
        
    } else if i.isMultiple(of: multiple2) {
        print("Buzz")
        
    } else {
        print(i)
    }
}

