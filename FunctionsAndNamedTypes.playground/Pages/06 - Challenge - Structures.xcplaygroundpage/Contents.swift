//: [Episode 05: Structures](@previous)
//: ## Episode 06: Challenge - Structures
/*:
 # Challenge 1

1. Create a structure named `Student` with three properties: first name, last name and grade.
2. Create a structure named `Classroom` with two properties: the subject, and an array of students.
3. Create a method that returns the highest grade in the classroom.
*/
struct Student {
    let firstName: String
    let lastName: String
    let grade: Int
}

struct Classroom {
    let subject: String
    let students: [Student]
    
//    func getHighestGrade() -> Int? {
//        var currentGrade = 0
//        for student in students where student.grade > currentGrade {
//            currentGrade = student.grade
//        }
//        return currentGrade
//    }
    
    func getHighestGrade() -> Int? {
        var grades: [Int] = []
        for student in students {
            grades.append(student.grade)
        }
        return grades.max()
    }
    
}
/*:
 # Challenge 2

 1. Create an instance of a `Classroom`
 2. Use the `getHighestGrade` method
*/
let aman = Student(firstName: "Aman", lastName: "Srivastava", grade: 49)
let ayush  = Student(firstName: "Ayush", lastName: "Srivastava", grade: 69)
let shivanshu = Student(firstName: "Shivanshu", lastName: "Rajput", grade: 89)
let himanshu = Student(firstName: "Himanshu", lastName: "Rajput", grade: 99)
let classRoom = Classroom(subject: "iOS Development", students: [aman, ayush, shivanshu, himanshu])
classRoom.getHighestGrade()

//: [Episode 07: Classes](@next)
