
import Foundation

print("hello")


class Dog: SayHello {
    var name : String
    var breed : String
    
    init(name: String, breed: String){
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "karabaş", breed: "Poodle")

class Poodle: Dog {
    init(name: String){
        super.init(name: name, breed: "Poodle")
    }
}


class SayHello {
    func makeNoise(){
        print("hello")
    }
}
    

let kopek = Dog(name: "kopek", breed: "selam")

