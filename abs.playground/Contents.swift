import UIKit

//var greeting = "Hello, playground"
//
//var padd: [[Int]]
//var tracer: [[Int]]
//
//
//for i in 0...3 {
//    var c = 0
//    for j in 0...3 {
//        padd[i][j] = p[c] - "0"
//        tracer[padd[i][j]][0] = i
//        tracer[padd[i][j]][1] = j
//    }
//    c += 1
//}

protocol Movie {
    var name: String { get}
    var year: Int { get }
    func title() -> String
}

extension Movie {
    func title() -> String {
        return "\(name) (\(year))"
    }
    func bannertitle() -> String {
        return "\(name) (\(year))"
    }
}

struct DramaMo: Movie {
    let name: String
    let year: Int
}

struct sicifiMo: Movie {
    let name: String
    let year: Int
    
    func title() -> String {
        return "\(name)"
    }
    
    func bannertitle() -> String {
        return "\(name) (\(year)) best sicif movie ev"
    }
}

let forrest: Movie = DramaMo(name: "Forrest Gump", year: 1994)
let godfat: DramaMo = DramaMo(name: "The GOd Ftaher", year: 1972)
let inceptipn: Movie = sicifiMo(name: "Inception", year: 2010)
let theMatrix: sicifiMo = sicifiMo(name: "The Matrix", year: 1999)

let forrestTit = forrest.title()
let goda = godfat.title()
let inc = inceptipn.title()
let mat = theMatrix.title()

let forreBanTit = forrest.bannertitle()
let gods = godfat.bannertitle()
let incep = inceptipn.bannertitle()
let matri = theMatrix.bannertitle()
