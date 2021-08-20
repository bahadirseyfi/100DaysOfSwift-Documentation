import Foundation

//func getPosts(completion: @escaping ([String]) -> ()) {
//    var posts: [String] = []
//
//    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//        posts = ["bahadir","seyfi"]
//        completion(posts)
//    }
//}
//
//getPosts { posts in
//    print(posts)
//}


enum Session {
    case keynote(title: String, speaker: String, date: Date, isRecorded: Bool)
    case normal(title: String, speaker: String, date: Date)
    case workshop(title: String, speaker: String, date: Date, isRecorded: Bool)
    case joint(title: String, speakers: [String], date: Date)
}

let keynote = Session.keynote(title: "WWDC 2021", speaker: "Tim Cook", date: Date(), isRecorded: true)

func displaySession(session: Session) {
    switch session {
    case let .keynote(title: title, speaker: speaker, date: date, isRecorded: isRecorded):
        print("\(title)-\(speaker)-\(date)-\(isRecorded)")
    case let .normal(title: title, speaker: speaker, date: date):
        print("\(title)-\(speaker)-\(date)")
    default:
        print("")
    }
}

//displaySession(session: keynote)

struct Teacher {
    let name: String
    let courses: [String]
}

struct Student {
    let name: String
    let courses: [String]
    var grade: String?
}

let teacher = Teacher(name: "Bahadır", courses: ["math","science"])
let student = Student(name: "omer", courses: ["math","history"])

let users: [Any] = [teacher, student]

for user in users {
    switch user {
    case let user as Student:
        print(user.name)
    case let user as Teacher:
        print(user.courses)
    default:
        print("not matched")
    }
}

enum User {
    case teacher(Teacher)
    case student(Student)
}

let allUsers = [User.teacher(teacher), User.student(student)]

for user in allUsers {
    switch user {
    case .student(let student):
        print(student.grade ?? "")
    case .teacher(let teacher):
        print(teacher.courses)
    }
}


