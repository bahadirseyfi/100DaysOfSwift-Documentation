
let driving = {
    print("I'm driving in my Car")
}

driving()

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("bahadir")

// Mark : Returning values from a closure

let driving3 = {(place: String) -> String in
    return "I'm going to \(place) in my Car"
}

let message = driving3("Selami")
print(message)


func travel(action: () -> Void) {
    print("AAAI'm getting ready to go")
    action()
    print("BBBBI arrived")
}

//travel(action: driving)

travel {
    print("Deneme")
}


func gezmek(action: (String) -> String){
    print("Gezmeye hazırım.")
    let aciklama = action("Bursa")
    print(aciklama)
    print("Bursaya Geldim")
}

//gezmek { (place: String) -> String in
//    return "\(place) 'ya doğru gidiyorum"
//}

gezmek {
    "\($0) ' ya doğru gidiyorum"
}



func calismak(action: (String, Int) -> String){
    print("çalışmaya hazırım.")
    let aciklama = action("Java",4)
    print(aciklama)
    print("Ödevlerimi Bitirdim")
}


calismak {
    "\($0) yazılım diline \($1) saat kadar çalıştım"
}


func araba() -> (String) -> Void {
    return {
        print("Arabanın markası : \($0)")
    }
}

let result = araba()
result("bmw")



