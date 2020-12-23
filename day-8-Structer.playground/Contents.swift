import UIKit

struct Sport {
    var name : String
}

var tennis = Sport(name: "tennis")
print(tennis.name)


// Mark : Computed Properties

struct magaza {
    var name : String
    var pahali : Bool
    
    var durumu: String {
        if pahali {
            return "\(name) isimli mağaza pahalı"
        } else {
            return "\(name) isimli mağaza ucuz"
        }
    }
}


//let gucci = magaza(name: "gucci", pahali: false)
//print(magaza.durumu)


// Mark : - Property Observers

struct Progress {
    var task : String
    var amount : Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading Data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


// Mark : - Mutating Methods

struct Person {
    var name : String
    mutating func makeAnonymus(){
        name = "anonim"
    }
}

var person = Person(name: "Bahadir")
person.makeAnonymus()

print(person.name)


var toys = ["woody"]

toys.append("buzz")

print(toys.sorted())

toys.firstIndex(of: "buzz")

// Mark : - Referring to the current instance

struct AileAgaci{
    init() {
        print("Aile ağacı oluşturuldu")
    }
}

struct kisi{
    var name : String
    var aileAgaci = AileAgaci()
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

var ed = kisi(name: "ed")

//lazy var aileAgaci = AileAgaci()

//ed.aileAgaci()


