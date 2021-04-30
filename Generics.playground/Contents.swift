import UIKit

func multiplication<T :Numeric>(a: T, b: T) -> T {
    return a * b
}

let a = 5; let b = 10
let c = multiplication(a: a, b: b)

struct cember {
    var r : Int
    
    func cevre() -> Int {
        let result = 2 * Int(Double.pi) * r
        return result
    }
}

let cember1 = cember(r: 3)
cember1.cevre()
