import UIKit

var str = "Hello, playground"


protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()

}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee : Payable, NeedsTraining, HasVacation { }


extension Int {
    func squared() -> Int {
        return self * self
    }
}

extension Int {
    func sumTwo() -> Int {
        return self + 2
    }
}

let number = 8
number.sumTwo()
number.squared()

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
       // for name in self {
       //     print(name)
       // }
    }
}
pythons.summarize()
beatles.summarize()

/*
protocol Identifiable {
    var id: String { get set }
    func identify()
}
*/

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}
struct User: Identifiable {
    var id: String
}

let bahadir = User(id: "Bahadir")
bahadir.identify()
