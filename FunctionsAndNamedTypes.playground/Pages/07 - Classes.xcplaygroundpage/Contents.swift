//: [Episode 06: Challenge - Structures](@previous)
//: ## Episode 07: Classes
// -------------------------------------------
//struct Actor {
//    let name: String
//    var filmography: [String] = []
//
//    mutating func signOnForSequel(franchiseName: String) {
//        filmography.append("Upcoming \(franchiseName) sequal")
//    }
//}
//// -------------------------------------------
//var gotgStar = Actor(name: "Zoe Saldana", filmography: ["Guardians of the Galaxy"])
//gotgStar.filmography.append("Avatar")
//var starTrekStar = gotgStar
//starTrekStar.filmography.append("Star Trek")
//var avatarStar = starTrekStar
//for franchiseName in avatarStar.filmography {
//    avatarStar.signOnForSequel(franchiseName: franchiseName)
//}
//print(avatarStar.filmography)
//print(starTrekStar.filmography)
//print(gotgStar.filmography)

// This place is perfect for using class, because if i change value of one instance than it should reflect on all the instances
class Actor {
    let name: String
    var filmography: [String] = []
    // Classes don't have default initializer as struct so we need to write it
    init(name: String, filmography: [String]) {
        self.name = name
        self.filmography = filmography
    }
    // we don't need mutating for change value of properties of class.
    func signOnForSequel(franchiseName: String) {
        filmography.append("Upcoming \(franchiseName) sequal")
    }
}
// -------------------------------------------
// we don't need to use var here because at the end we are changing the value in same place and it's a reference of that.
let gotgStar = Actor(name: "Zoe Saldana", filmography: ["Guardians of the Galaxy"])
gotgStar.filmography.append("Avatar")
// we don't need to use var here because at the end we are changing the value in same place and it's a reference of that.
let starTrekStar = gotgStar
starTrekStar.filmography.append("Star Trek")
// we don't need to use var here because at the end we are changing the value in same place and it's a reference of that.
let avatarStar = starTrekStar
for franchiseName in avatarStar.filmography {
    avatarStar.signOnForSequel(franchiseName: franchiseName)
}
print(avatarStar.filmography)
print(starTrekStar.filmography)
print(gotgStar.filmography)

// Main differnces is here

/*
                      ---------------------------------
                     |  Structure   |    Classes       |
                       -------------------------------
                1.   |  valueTypes  |  referenceType   |
                2.   |  values      |    objects       |
                3.   |  copy        |    share         |
                4.   |  immutable   |    mutable       |
                      ---------------------------------
*/

// 2. when we create an instance of struct, it contains values in programming language and when we create a instance of class, it contains objects in programming language.
//: [Episode 08: challenge - Classes](@next)
