import Cocoa

//Static properties and methods allow us to use those methods with the Struct itself withoud having to create an instance of the struct. We wont have to assign the struct to a variable to call it

struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}
// the static var studentCount and add belong to the struct School and not an instance of school (no need for mutating keyword )

School.add(student: "Chris")
print(School.studentCount)

// its not possible to acces non static properties or methods from static method and propertie but it is possible to access static methods and properties from non static ones


//Static propertie can be used to organize comon data  common data that is used in many places

struct AppData {
    static let version = "1.4 beta 9"
    static let saveFilename = "setting.json"
    static let homeURL = "mywebstie.com"
}

AppData.version

// now with this appraoch, we can easily check at anypoint of our code informtion regarding appData without having to create an instance of AppData



//static properties are alss very useful when creating sample data that can be used in SwiftUI to give us a preview of our layout

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "Nigger", password: "monkey")
}

//lets say we wanted to preview what this would look like on our UI we could call Employee directly
print(Employee.example.username)
