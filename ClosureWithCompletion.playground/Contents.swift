import Foundation

func getPosts(completion: @escaping ([String]) -> ()) {
    var posts: [String] = []
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        posts = ["bahadir","seyfi"]
        completion(posts)
    }
}

getPosts { posts in
    print(posts)
}
