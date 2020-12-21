func travel(action: (String) -> Void) {
    print("Im getting to go")
    action("London")
    print("I arrived")
}


travel { (place: String) in
        print("I'm going to \(place) in my Car")
}

func travel2(action: (String) -> String) {
    print("I'm getting to go")
    action("New York")
    print("I arrived")
}

travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


func travel3(action: (String) -> String) {
    print("haydi gidelim")
    let description = action("almanya")
    print(description)
    print("geldik bile !")
}

/*
travel3 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
*/

travel3 { "Gidiyorum \($0) ya arabamla birlikte"
}


func dersNotum(closure: (String, Int) -> String){
    print("Ders Notları Açıklandı!!!")
    let sonuc = closure("mat", 90)
    print(sonuc)
    print("Dersi Başarıyla Geçtiniz!")
}

dersNotum { //(String, <#Int#>) -> String in
    "dersin adı : \($0) dersin notu ise : \($1)"
}


func travel5() -> (String) -> Void {
    return {
        print("I m going to \($0)")
    }
}

let sonuc = travel5()
sonuc("Amerika")

let sonuc2: Void = travel5()("Hayrabolu")

