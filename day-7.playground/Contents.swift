import UIKit


//----------------ÇALIŞMA SORULARI---------------------------
var str = "Hello, playground"

let x = "iOS 101".prefix(1)

let y = "iOS 101".trimmingCharacters(in: CharacterSet(charactersIn: "iOS"))

let a = "iOS 101".components(separatedBy: CharacterSet.decimalDigits.inverted)

let xY = "iOS 101".uppercased(with: Locale(identifier: "tr_TR"))

let xZ = "iOS 101".components(separatedBy: " ").map({ $0 }).map({ $0.prefix(1) }).joined()
//print(xZ)


let xZa = "iOS 101".components(separatedBy: " ")

let dizi = ["İOS"]

dizi.map({ $0 }).map({$0.prefix(1)})


let xas = "ios selami".components(separatedBy: " ").map({ $0 }).map({ $0.prefix(1).uppercased(with: Locale(identifier: "tr_TR")) + $0.dropFirst() }).joined(separator: " ")

print(xas)


let deneme = "selam ben iahadir"

print(deneme.capitalized)


//------------------------COLLECTION TYPES------------------

var shoppingList: [String] = ["Eggs", "Milk","ananas","armut","erik"]

let apples = shoppingList.removeLast()

print(apples)

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}


/*
            Sets
 
 A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items is not important, or when you need to ensure that an item only appears once
 */

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
// letters now contains 1 value of type Character
letters = []

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
var favoriteGenres2: Set = ["Rock", "Classical", "Hip hop"]

print("I have \(favoriteGenres2.count) favorite music genres.")
