import Foundation

// Optionals

if let age = Int("40") {
    print(age)
}

// Make a function that take in a String? and if it's nil, print "IT IS NIL!" and if not print whatever is in the String

func printOptional(text : String?) {
    if let theText = text {
        print(theText)
    } else {
        print("IT IS NIL!")
    }
}

printOptional(text: nil)
