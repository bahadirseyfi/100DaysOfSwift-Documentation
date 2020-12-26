
import Foundation

print("hello")


class Dog {
    var name : String
    var breed : String
    
    init(name: String, breed: String){
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "karabaş", breed: "Poodle")

print(poppy.name)

class Poodle: Dog {
    init(name: String){
        super.init(name: name, breed: "Poodle")
    }
}


