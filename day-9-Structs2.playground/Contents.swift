

/*
struct User {
    var username : String
}

var user = User(username: "bahadir")
*/


struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}


var user = User()
user.username = "bahadir"

// Mark : - Referring to the current instance

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person {
    var name: String
    var familyTree = FamilyTree()

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}
var ed = Person(name: "ed")
var person = Person(name: "selami")

//lazy var familyTree = FamilyTree()

ed.familyTree

// Mark : - Static properties and methods



struct deneme {
    static var size = 0
    private var id : String
    var name : String
    
    init(name : String, id: String) {
        self.name = name
        deneme.size += 1
        self.id = id
    }
    func identify() -> String {
            return "My social security number is \(id)"
        }
}

deneme(name: "seyfi", id: "1")
//deneme(name: "seyfi2", id: "2")

print(deneme.size)
var bahadir = deneme(name: "bahadir", id: "5")

var gelen = bahadir.identify()
print(gelen)
