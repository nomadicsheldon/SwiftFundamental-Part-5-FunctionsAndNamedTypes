//: [Episode 04: Challenge - Functions](@previous)
//: ## Episode 05: Structures
//---------------------------------------------------------
//typealias Student = (name: String, grade: Int, pet: String)
//---------------------------------------------------------

// struct is value type and basic implementation is here
struct Student {
    let name: String
    var grade: Int
    var pet: String?
    
    // creating a function which returns bool, remember only one line in the implementation so no need to write return. Swift is really smart. 😎
    func getPassStatus(lowestPass: Int = 50) -> Bool {
        grade >= lowestPass
    }
    
    // when ever we are trying to change a value of struct inside a function, we need to use mutating
    mutating func earnExtraCredit() {
        grade += 10
    }
}

//let himanshu = Student(name: "Himanshu", grade: 49, pet: "Tom")

// same concept - if you want to change anything inside the struct properties make it var, because everytime you create a new instance of struct it will allocate new position in the memory, in sort you can say new struct is generated every time with default values.
// New memory allocated
var himanshu = Student(name: "Himanshu", grade: 49, pet: "Tom")
// New memory allocated
let shivanshu = Student(name: "Shivanshu", grade: 99, pet: nil)
// New memory allocated
let aman = Student(name: "Aman", grade: 75, pet: "Ozma")
himanshu.getPassStatus()
//himanshu.earnExtraCredit()
himanshu.earnExtraCredit()
himanshu.getPassStatus()

//let evilAman = aman
//evilAman.grade = 100

// New memory allocated with the default values of aman.
var evilAman = aman
evilAman.grade = 100
evilAman.pet = "Mustachioed Ozma"
print(aman)
print(evilAman)

//: [Episode 06: Challenge - Structures](@next)
