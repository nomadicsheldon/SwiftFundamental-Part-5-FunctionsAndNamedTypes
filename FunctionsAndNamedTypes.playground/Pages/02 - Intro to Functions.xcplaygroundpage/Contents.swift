//: ## Episode 02: Introduction to Functions
// Basic function definition
func printHello() {
    print("Hello!")
}

printHello()
printHello()

// ------------------------------
let passingGrade = 50
let chrisGrade = 49
let samGrade = 99

let chrisPassed = chrisGrade >= passingGrade
let samPassed = samGrade >= passingGrade
// ------------------------------

/*
 
 // Basic function definition with paramater
 
func printPassStatus(grade: Int) {
    print(grade >= passingGrade ? "You passed!" : "Keep studying.")
 }

printPassStatus(grade: samGrade)
*/

/*
 
 // Basic function definition with two paramater
 
func printPassStatus(grade: Int, lowerPass: Int) {
    print(grade >= passingGrade ? "You passed!" : "Keep studying.")
 
 }
printPassStatus(grade: samGrade, lowerPass: 80)
*/

/*
 
 // Basic function definition with two paramater, in which one have a default value
 
 func printPassStatus(grade: Int, lowerPass: Int = passingGrade) {
     print(grade >= passingGrade ? "You passed!" : "Keep studying.")
 }

 // lowerPass parameter have a default value so it is not compulsory to pass this parameter value
 printPassStatus(grade: samGrade)

 */

/*
 
 */

// Basic function definition with two paramater and ignoring argument
func printPassStatus(_ grade1: Int, _ grade2: Int) {
    print(grade1 > grade2 ? grade1 : grade2)
}

// since we are using "_" it will ignore the argument. Usually we have to use it when naming doesn't related to internal implementation and end result is always same.
printPassStatus(chrisGrade, samGrade)

// we are defining argument name which is different from parameter name so it is easy to understand and more readable when we are using this function.
func printPassStatus(for grade: Int, lowerPass: Int = passingGrade) {
    print(grade >= passingGrade ? "You passed!" : "Keep studying.")
}

printPassStatus(for: samGrade)



//: [Episode 03: Functions and Return](@next)
