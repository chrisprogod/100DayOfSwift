import SwiftUI

func shoWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}



func multiplicationTables(numbers: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(numbers) = \(i * numbers)")
    }
}

//multiplicationTables(numbers: 5, end: 10)

func rollDice() -> Int {
    Int.random(in: 1...6)
}

let result = rollDice()




func checkForIdenticalStrings(str1: String, str2: String) -> Bool {
     str1 == str2
}

checkForIdenticalStrings(str1: "Papa", str2: "Papa")


func pithgore(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let pyth = pithgore(a: 1, b: 2)


//tuples
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let (name1, name2) = getUser()
print("Name: \(name1) \(name2)")


func printTimesTable(_ number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) = \(i * number)")
    }
}

//printTimesTable(3)

//In this case, the word "number" feels redundant because we know the function take integers
//instead of repeating (number: 3) we can add "_ " to the parameter called in the function to remove the external parameter name

func printTimesTable2(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) = \(i * number)")
    }
}
 
//printTimesTable2(for: 1)

//you can also add "for" before the parameter name in order to make the external paramter easier to understand





//It is possible to ad default values to parameters when they are not specified and this is how you do it

func printTimesTables(for number: Int = 1, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 3)



