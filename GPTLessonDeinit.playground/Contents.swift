import Cocoa

///TASK 1: Basic Class with a Deinitializer
    //1.    Create a class named Resource that has:
    //•    A property name of type String.
    //•    An initializer that accepts a name parameter and prints a message like "Resource <name>: Acquired!".
    //•    A deinitializer that prints a message like "Resource <name>: Released!".
    //2.    Write a loop that creates and destroys several instances of Resource inside the loop. Observe the output to see when the deinitializer is called.
///TASK 2  Scope and Object Lifecycles
    //1.    Modify the loop so that the Resource instances are stored in an array after they are created.
    //2. After the loop, clear the array using removeAll(). Observe the output to understand when the deinitializers are called.

class Resource {
    var name: String
    
    init(name: String) {
        self.name = name
        print("Resource \(name): Acquired")
    }
    
    deinit {
        print("Resource \(name): Released")
    }
}

var fileNames = ["Secret", "Public", "Corporate", "Personal"]

var listFile = [Resource]()

for file in fileNames {
    let res = Resource(name: file)
    listFile.append(res)
}

print("Loop is finished!")
listFile.removeAll()
print("Array is clear!")
