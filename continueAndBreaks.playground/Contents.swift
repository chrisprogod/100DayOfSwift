import SwiftUI

let files = ["me.jpg", "rat.jpg", "essay.txt", "pc.jpg"]

for file in files {
    
    if file.hasSuffix(".jpg") == false {
        
        // print("\(file) is not an image.")
        continue
    }
    
    //print("I found an image called \(file)")
}


let number1 = 100
let number2 = 18
var multiples = [Int]()

for i in 1...10000 {
    
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
    
        if multiples.count == 10 {
            break
        }
    }
}
print(multiples)
