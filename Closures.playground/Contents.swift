
func filterGreaterThanValue(value: Int, numbers: [Int]) -> [Int] {
    var filteredArray = [Int]()
    
    for num in numbers {
        if num > value {
            filteredArray.append(num)
        }
    }
    return filteredArray
}

let filteredList = filterGreaterThanValue(value: 3, numbers: [1,2,3,4,5,5,6,7,8])
//print(filteredList)

func filterPredicateClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
    var filteredMumbers = [Int]()
    for num in numbers {
        if closure(num) {
            filteredMumbers.append(num)
        }
    }
    return filteredMumbers
}

let filterLis = filterPredicateClosure(closure: { num in
    return num < 5
}, numbers: [1,2,3,4,5,6,6,7,9])
print(filterLis)

let small = filterPredicateClosure(closure: { i in
    return i > 5
}, numbers: [1,2,3,4,5,6,7,8,9])
print(small)
