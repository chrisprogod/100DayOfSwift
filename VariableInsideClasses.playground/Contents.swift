import Cocoa

class User {
    var name = "Paul"
}

var user = User()
user.name = "Taylor"
user.name

var otherUser = User()
otherUser.name
//The name property of the user instance is nwo chaned to "Taylor" but the class keeps its name property as "Paul"
//    •    The sign represents the reference or constant that points to the instance (let user = User()). This sign points to a specific instance, just as user refers to a particular User object. Scribbling Out “Paul” and Writing “Taylor”: This represents changing the name property of the instance (user.name = "Taylor"). The person (instance) remains the same, but the name property is updated.

//since the user instantance is a var this mean that the intance can point to a complete another "instance of the classs"
user = User()
user.name

// we overwrote the value the instant by assigning to another User Class so this means that user.name is now paul
