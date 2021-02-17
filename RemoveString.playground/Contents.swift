
import Foundation

let myString = "The dog jumped over a fence"
let myStringWithoutLastWord = myString.components(separatedBy: " ").dropLast().joined(separator: " ")

print(myStringWithoutLastWord)


extension String {
    var wordList: [String] {
        return components(separatedBy: CharacterSet.alphanumerics.inverted).filter { !$0.isEmpty }
    }
}


print(myString.wordList[0])
