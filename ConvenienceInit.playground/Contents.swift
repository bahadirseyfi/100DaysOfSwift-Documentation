import UIKit

protocol CarType {
    init(make: String, model: String)
}

class Car: CarType {
    var make: String
    var model: String
    var color: String
    
    init(make: String, model: String, color: String) {
        self.make = make
        self.model = model
        self.color = color
    }
    
    required convenience init(make: String, model: String) {
        self.init(make: make, model: model, color: "White")
    }
    /*
    class func makeCar(make: String, model: String) -> Self {
        let car = self.init(make: make, model: model)
        // setup engine
        // setup fuel lines
        // setup tires
        return car
    }
    */
}

let car = Car(make: "deneme", model: "dene")
//print(car.color)


class Tesla: Car {
    var range: Double = 300
    
    override init(make: String, model: String, color: String) {
        self.range = 300
        super.init(make: make, model: model, color: color)
    }
}

let tesla = Tesla(make: "", model: "")
//print(tesla.range)


class ArticleCounter {

    // MARK: - Properties
    var readArticleCount: Int = 0 {
        willSet(newReadArticleCount) {
            print("About to set readArticleCount to \(newReadArticleCount).")
        }
        didSet(oldReadArticleCount) {
            if readArticleCount > oldReadArticleCount  {
                print("Added \(readArticleCount - oldReadArticleCount) articles.")
            }
        }
    }
}


let articleCounter = ArticleCounter()
articleCounter.readArticleCount = 10


var animals = ["fish", "cat", "chicken", "dog"]
animals.sort(by: <)

class Address {
  var fullAddress: String
  var city: String
  
  init(fullAddress: String, city: String) {
    self.fullAddress = fullAddress
    self.city = city
  }
}

class Person {
  var name: String
  var address: Address
  
  init(name: String, address: Address) {
    self.name = name
    self.address = address
  }
}

var headquarters = Address(fullAddress: "123 Tutorial Street", city: "Appletown")
var ray = Person(name: "Ray", address: headquarters)
var brian = Person(name: "Brian", address: headquarters)


brian.address.fullAddress = "148 Tutorial Street"

print (ray.address.fullAddress)


public class ThermometerClass {
  private(set) var temperature: Double = 0.0
  public func registerTemperature(_ temperature: Double) {
    self.temperature = temperature
  }
}

let thermometerClass = ThermometerClass()
thermometerClass.registerTemperature(56.0)

public struct ThermometerStruct {
  private(set) var temperature: Double = 0.0
  public mutating func registerTemperature(_ temperature: Double) {
    self.temperature = temperature
  }
}

var thermometerStruct = ThermometerStruct()
thermometerStruct.registerTemperature(56.0)

var thing = "cars"

let closure = {
  print("I love \(thing)")
}

thing = "airplanes"

closure()
