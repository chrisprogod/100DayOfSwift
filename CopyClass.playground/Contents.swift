import Cocoa

class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let x = User()
        x.username = username
        return x
    }
}

//Copies of a class intance, point to the same instance, if one changes, they all do

var user1 = User()
var user2 = user1.copy()
//user2.username = "Taylor"

print(user1.username)
print(user2.username)
