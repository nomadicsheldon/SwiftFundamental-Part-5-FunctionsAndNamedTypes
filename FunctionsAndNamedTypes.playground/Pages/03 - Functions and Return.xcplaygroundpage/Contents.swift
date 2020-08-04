//: [Episode 02: Introduction to Functions](@previous)
//: ## Episode 03: Functions and Return
// It makes a name for Tuple or any custom type so we don't have to rewrite each and every time
typealias Student = (name: String, grade: Int, pet: String?)
// --------------------------------------------
let passingGrade = 50
//let chris = (name: "Chris", grade: 49, pet: "Mango")

//let sam = (name: "Sam", grade: 99)
//let sam = (name: "Sam", grade: 99, pet: nil) // It will through an error because swift don't know about nil.
//let sam: (name: String, grade: Int, pet: String?) = (name: "Sam", grade: 99, pet: nil) // Nice, now it's clear, swift is happy.🙃

// Perfect use of typealias, why to repeat code every time, leave your bad habit. 🤭
let chris: Student = (name: "Chris", grade: 49, pet: "Mango")
let sam: Student = (name: "Sam", grade: 99, pet: nil)
// --------------------------------------------

// return Type function - but you know when there is only one line in the implementation, we don't have to write return, swift is smart enough. 😎
func getPassStatus(for grade: Int, lowerPass: Int = 50) -> Bool {
        grade >= lowerPass
}

let chrisPassStatus = getPassStatus(for: chris.grade)
let samPassStatus = getPassStatus(for: sam.grade)

let classPassStatus = getPassStatus(for: chris.grade) && getPassStatus(for: sam.grade)

func orderPetCollar(for student: Student) {
    // This is another way to unwrap optional
    // 1. optional Binding 2. coalescing 3. guard let
    // in this return is compulsory.
    guard let pet = student.pet else { return }
    print("One custom collar for \(student.name)'s pet, \(pet)!")
}

orderPetCollar(for: chris)
orderPetCollar(for: sam)
//: [Episode 04: Challenge - Functions](@next)
