
/*
class Human {
    func programming() {
        fatalError("doldurulmak zorunda")
    }
}

class Serhad: Human {
    override func programming() {
        print("Kotlin")
    }
}

class Ege: Human {
    override func programming() {
        print("Swift")
    }
}


Ege().programming()
Serhad().programming()
*/


protocol MyInterface {
    func method() -> String
}

extension MyInterface {
    func method() -> String {
        fatalError("hata")
    }
}

class myClass: MyInterface {
    func method() -> String {
        return "çıktı"
    }
}


myClass().method()
















