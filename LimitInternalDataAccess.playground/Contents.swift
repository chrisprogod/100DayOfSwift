import Cocoa

struct BankAccount {
    var funds = 0
    
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
        
    }
}

var myAccount = BankAccount()
myAccount.deposit(amount: 100)

let success = myAccount.withdraw(amount: 200)

if success == true {
    print("The money was successfully withdrawned!")
} else {
    print("Failed to withdraw money.")
}

//this code is correct but nothing stops us from messing with the value of our funds
// like this funds -= 1000, like withdrawing 1000 when we dont necessarly have it

