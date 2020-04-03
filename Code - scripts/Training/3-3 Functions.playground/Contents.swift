import Foundation

// Functions

func hello(person : String) {
    print("Hello \(person)!")
}

func addTwoNumbers(num1 : Int, num2 : Int) -> Int {
    return num1 + num2
}

var c = addTwoNumbers(num1: 4, num2: 7)
var d = addTwoNumbers(num1: c, num2: addTwoNumbers(num1: 4, num2: 8))

// Make a function that take an Int and a string and prints the string as many times as the Int is

func printMachine(text : String, numberOfTimes : Int) {
    for _ in 1...numberOfTimes {
        print(text)
    }
}

printMachine(text: "I love Swift!", numberOfTimes: 4)

