import UIKit

// Learning about Operators

let myAge = 10
let myFriendsAge = 8

if myAge > myFriendsAge {
    print("I'm older than my friend.")
} else if myAge < myFriendsAge {
    print("My friend is older than me.")
} else {
    print("We're the same age!")
}

let a = 10
let b = 5

let c = a + b
let d = a - b
let e = a * b
let f = a / b
print(c)
print(d)
print(e)
print(f)

// Learning about Strings

let firstName = "Ethan"
let lastName = "Duong"

let fullName = firstName + " " + lastName
print(fullName)

let greeting = "Hi " + fullName + "!"
print(greeting)

// Learning about Loops

for i in 1...10 {
    print(i)
}

var myNumber = 0

while myNumber < 10 {
    print(myNumber)
    myNumber += 1
}

// Learning about Arrays

let colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]

for color in colors {
    print(color)
}

let numbers = [1, 2, 3, 4, 5]

var sum = 0

for number in numbers {
    sum += number
}

print(sum)

// Learning about Dictionaries

let people = ["John": 23, "Jane": 25, "Bob": 27]

for (name, age) in people {
    print("\(name) is \(age) years old.")
}

// Learning about Functions

func greet(name: String) {
    print("Hi \(name)!")
}

greet(name: "Ethan")

func addTwoNumbers(a: Int, b: Int) -> Int {
    return a + b
}

let result = addTwoNumbers(a: 10, b: 20)
print(result)

// Learning about Classes

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHi() {
        print("Hi, my name is \(name).")
    }
}

let john = Person(name: "John")
john.sayHi()

// Learning about Optionals

var optionalName: String? = nil

if let name = optionalName {
    print("The optional name is \(name).")
} else {
    print("The optional name is empty.")
}

// Learning about Protocols

protocol Greetable {
    func greet()
}

class Employee: Greetable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func greet() {
        print("Hi, my name is \(name).")
    }
}

let ethan = Employee(name: "Ethan")
ethan.greet()