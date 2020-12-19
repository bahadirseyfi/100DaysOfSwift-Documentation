

var str = "Hello, playground"

let deneme = true
let denem2 = 1

if deneme {
    print("çalışır")
    
}else{
    print("çalışmaz")
}

if denem2 == 0 {
    print("çalışır")
}else{
    print("çalışmaz")
}


let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// Prints "The status code is 404"


let http200status = (statusCode: 200, description: "OK")

print(http200status.0)
print(http200status.1)

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)!
print(convertedNumber)


if let firstNumber = Int("28"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

let age = 3
assert(age >= 0, "A person's age can't be less than zero.")

let (a,b) = (4,4)

if a == b {
    print("sevmiyor bu yazımı")
}

let three = 3
let minusThree = -three       // minusThree equals -3
let plusThree = -minusThree

print(plusThree)

let minusSix = -6
let alsoMinusSix = +minusSix

print(alsoMinusSix)

if (3,"cpple") < (3,"dird") {
    print("doğru")
}

let contentHeight = 40
let hasHeader = 5
let rowHeight = contentHeight + (hasHeader != 5 ? 50 : 20)
// rowHeight is equal to 90
print(rowHeight)


let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

//eğer userDefinedColorName değişkenimizi "green" olarak tanımlarsak ekrana green yazdıracaktır

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"
print(colorNameToUse)


let names = ["bahadir","hüseyin","hasan","hasanali","gamze"]

let count = names.count
for i in 0..<count {
    print("Kişiler \(i+1) is called \(names[i])")
}
for character in "Dog!🐶" {
    print(character)
}
print(#"Write an interpolated string in Swift using \(multiplier)."#)



//let greeting = "Guten Tag!"
//let index = greeting.index(greeting.startIndex, offsetBy: 6)
//greeting[index]
// a

let greeting = "Hello, world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
// beginning is "Hello"

// Convert the result to a String for long-term storage.
let newString = String(beginning)
print(newString)


let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place public a",
]
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1
    }
}
print("\(act1SceneCount) ")




//-----------------Functions---------------------

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}


printHelp()
