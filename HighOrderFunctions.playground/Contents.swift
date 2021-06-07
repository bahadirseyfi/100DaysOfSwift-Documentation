import UIKit


// Map - Filter - Flatmap - Reduce - Sorted

//**************************************************


// Mark: - Map

let numbers = [1,2,3,4,5]

var doubleNumbers = [Int]()

for i in numbers {
    doubleNumbers.append(i*2)
}
print(doubleNumbers)

doubleNumbers = numbers.map({ (number) -> Int in
    return number * 2
})
print(doubleNumbers)

let newNumbers = numbers.map { $0 * 2 }
print(newNumbers)

var developer = [String:String]()
developer["name"] = "Ata"
developer["age"] = "27"
developer["city"] = "İzmir"

let keys = developer.map { $0.key }
let values = developer.map { $0.value }

print("Keys: ", keys, " Values: ",values)

//**************************************************

// Mark: - Compact Map

let nums = [1,2,3,nil,5,nil]
// let twoNums = nums.map { $0 * 2 }

let yeni2 = nums.map { (num) -> Int? in
    if let num = num {
        return num * 2
    } else {
        return nil
    }
}
print(yeni2) // Optional Değer gelmeye devam ediyor

let yeni3 = nums.map { $0 != nil ? $0! * 2 : nil }
print(yeni3)

//**************************************************

// Mark: - FlatMap

let cities = [["izmir","istabul","ankara"],["antalya","mersin"],["Van","ağrı"]]

var allcities = [String]()

/*
for city in cities {
    allcities.append(contentsOf: city)
}
print(allcities)
*/

allcities = cities.flatMap { $0 }
print(allcities)
