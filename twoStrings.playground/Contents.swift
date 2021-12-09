//import UIKit
//
//var input: [[Int]] = [[1,1,1],[1,1,1],[1,1,1]]
//
//func largstArea(samples: [[Int]]) {
//    var satir: Int = 0
//    for k in 0...samples[0].count - 1 {
//        satir = k + 1
//    }
//    var sutun = samples.count
//
//    var T = Array(repeating: Array(repeating: 0, count: satir), count: sutun)
////    print(T)
//    var maxC = 0
//    for i in 0...samples.count - 1 {
//        for j in 0...samples[0].count - 1 {
//            T[i][j] = samples[i][j]
//            if i > 0 && j > 0 {
//                if samples[i][j] == 1 {
//                    T[i][j] = min(T[i][j-1], T[i-1][j], T[i-1][j-1]) + 1
//                    print("\nT[i][j]: ", T[i][j])
//                }
//            }
//            if maxC < T[i][j] {
//                maxC = T[i][j]
//            }
//        }
//    }
////    print(maxC)
//
////    for i in 0...samples.count {
////        for j in 0...samples[0].count {
////            T[i][j] = samples[i][j]
////
////        }
////    }
//}
//
//largstArea(samples: input)

var name : [String] = ["ball","bat","glove", "glove", "glove"]
var price : [Int] = [2,3,1,2,1]
var weight : [Int] = [2,5,1,1,1]

struct pro {
    var name: String
    var price: Int
    var weight: Int
}

var persons: [pro] = []


for i in 0...name.count - 1 {
    let t = pro(name: name[i], price: price[i], weight: weight[i])
    persons.append(t)
}


//for j in persons {
//    for k in persons {
//        if j.name == k.name {
//            if j.weight == k.weight && j.price == k.price {
//                print("aynı")
//            }
//        }
//    }
//}
var count = 0
for j in persons {
    for k = j + 1 in 1...persons.count - 1 {
        if j.name == persons[k].name {
            if j.price == persons[k].price && j.weight == persons[k].weight {
                count += 1
            }
        }
    }
}
print(count)

