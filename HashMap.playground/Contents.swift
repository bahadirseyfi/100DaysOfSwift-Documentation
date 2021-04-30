import UIKit

var sampleString = "2237"

// 1. for loop
// 2. hash map

func convert(string: String) -> Int? {
    
    var total = 0
    
    let valueMap = [
        "1" as Character: 1,
        "2":2,
        "3":3,
        "7":7,
    ]
    
    for (index,i) in string.enumerated() {
        let exponent = string.count - index - 1
       
        if let value = valueMap[i] {
            let num = Decimal(value) * pow(10, exponent)
            total += NSDecimalNumber(decimal: num).intValue
        } else {
            return nil
        }
    }
  
    return total
}

convert(string: sampleString)

