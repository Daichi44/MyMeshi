//: Playground - noun: a place where people can play

import Foundation // this "imports" / includes helper code from Apple

//: **Variables**: a place to store data. Variables have a name and value
//:コメントだよー
//: let -> constant, never changes
//: var -> variable, can be updated or re-asigned to a new value with the same type
//: Capitalized using *lower camelcase* (fisrt word lowercase, every word after capotalized)
let fullName = "Daichi Kitayama"
var age = 23
age = 24
age = age + 1
let emotion = "😄"
let 🧐 = "thinking"


//: **Types**: all values in Swift have a type
//: `String` -> hold Unicode characters, surrounded by " "
//: `Int` -> (short for integer), holds full numbers
//: `Double` -> "double precision", holds numbers with a demical place and preferred over Float for accuracy
//: `Float` -> "floating precision", holds mumbers with a demical place and can be less accurate than 'Double'
//: `Bool` -> boolean value, a `true` or `false` value. Result od a conditional expression (`x > 10`, etc).

//: We can use math in our code
//: + for addition
//: - for subtraction
//: * for multiplication
//: / for division
//: % for modulo
4 * 5 // 20, remainder after division `余り`
5 / 2 // 2, because of interger division
5 % 2 // 1, remainder after division
5.0 / 2.0 // 2.5
(10 - 2) * 5 // 40
let calculation = 3 + 12 * 4 // 51
let newCalculation = (3 + calculation) * 4 // 216

//: **Functions:** named, reusable blocks of code. Surrounded by {}
func hello() {
    print("Hello Microsoft Japan!")
}
hello()
hello()

func hello(student: String) {
    print("Hello \(student)!")
}
hello(student: "Imagine")
hello(student: "fullName")

func hello(student1: String, student2: String) {
    hello(student: student1)
    hello(student: student2)
}
hello(student1: "Imagine", student2: fullName)

//: Functions can also *return* or output values
//: You *return* a value with the `return` keyword, thi immdediately exits the function

func addFive(number: Int) -> Int {
    let value = number + 5
    return value
}

addFive(number: 10) // 15
addFive(number: 37) // 42

func subtractAndDouble(number1: Int, number2: Int) -> Int {
    return (number1 - number2) * 2

}
subtractAndDouble(number1: 10, number2: 7) // 6

//: **Conditionals:** allow you to change what code runs, depending on condiotion
//: Can use boolean operators...
//: <, less than
//: > greater than
//: ==, equal to
//: <= less than or equal to
//: >= greater then or equal to
//: ||, or -- either condiotion is true
//: &&, and -- both conditions are true
age = 20
if age < 18 {
    print("No, you cannot drive")
} else {
    print("Sure, take the test and you can drive")
}

if fullName == "Dion" || fullName == "Imagine Kawabe" {
    print("You are teaching!")
} else {
    print("You are a student.")
}

if age < 13 {
    print("You are in Junior High")
} else if age < 18 {
    print("You are in High School")
} else if age < 22 {
    print("You are in University")

} else {
    print ("You are finished with school (or in grad school!)")
}

//: **Arrays:** collections of items, zero indexed
//          [   0         1         2          4              5     ]
var fruit = ["apple", "orange", "banana", "watermelon", "strawberry"]

print(fruit[0])
print(fruit[1])
print(fruit[3])
print(fruit[4])
print(fruit.count)
fruit.append("grape") // adds "grape" to the end of the array
print(fruit.count)
print(fruit[5])
fruit[5] = "mango" // changes the 5th element to "mango"
print(fruit[5])

//: **For-loops:** do something over and over and over again
//
// for element in array {
//     CODE TO REPEAT
// }
//
//: `element` represents *any* name of your choosing, `array` is the list to iterate over

for f in fruit {
    print(f)
}

// range from 0 to (but no including) fruit.count
for i in 0..<fruit.count {
    print(fruit[i])
}



