import Cocoa

// ###############################
// Raw Strings
// ###############################

var quote = "As my friend\\coworker always said, \"Don't let the truth get in the way of telling good story\"!"

var rawQuote = ##"As my friend\coworker always said, "Don't let the truth get in the way of telling good story"!"##

print(quote)
print(rawQuote)

print(#"My friend says: \#(rawQuote)"#)

// ###############################
// String Interpolation
// ###############################

class Dog {
    var age = 0
    var name = ""
}

extension String.StringInterpolation {
    mutating func appendInterpolation(_ dog: Dog) {
        appendInterpolation("\(dog.name) - \(dog.age) years old")
    }
}

var myDawg = Dog()
myDawg.age = 8
myDawg.name = "Fido"

print("Frist Place \(myDawg)")


// ###############################
// Result Type
// ###############################

enum APIError: Error {
    case badURL
    case rateLimitHit
    case other(reason: String)
}

func hitUpAPI() -> Result<String,Error> {
    //return .success("It works fam!")
    return .failure(APIError.badURL)
}

print(hitUpAPI())

// ###############################
// Set and Dictionary Order
// ###############################

let a: Set<Int> = [1, 2, 3, 4, 5]
let b: Set<Int> = [1, 2, 3, 4, 5]
a == b
print(a)
print(b)

let aDic: Dictionary<String,Int> = ["Fido":8,"Sarah":13,"Judlah":6]
let bDic: Dictionary<String,Int> = ["Fido":8,"Sarah":13,"Judlah":6]
aDic == bDic
print(aDic)
print(bDic)

// ###############################
// compactMapValues
// ###############################

let allDogs = ["Fido":8,"Sarah":13,"Judlah":6]

let dogsYoungerThan10 = allDogs.compactMapValues { (age) -> Int? in
    if age < 10 {
        return age
    }
    return nil
}

print(dogsYoungerThan10)

let dogsOlderThan10 = allDogs.compactMapValues { $0 > 10 ? $0 : nil }

print(dogsOlderThan10)

let allDogs2 = ["Fido":8,"Sarah":nil,"Judlah":6]

print(allDogs2.compactMapValues({ $0 }))


// ###############################
// Enum Fix
// ###############################

//enum Food {
//    case friedRice
//    case milkshake
//    case pizza(toppings: String...)
//}
//
//Food.pizza(toppings: "Pepperoni","Cheese","Olives")

enum Food {
    case friedRice
    case milkshake
    case pizza(toppings: [String])
    case yakisoba
}

Food.pizza(toppings: ["Pepperoni","Cheese","Olives"])

// ###############################
// Future Enums
// ###############################

let lunch = Food.friedRice

switch lunch {
case .friedRice:
    print("Cool lunch fam")
case .milkshake:
    print("Is this really a meal?")
case .pizza(let toppings):
    print("Your toppings: \(toppings)")
@unknown default:
    print("A new food")
}

// ###############################
// Optional Simplified
// ###############################

func translate(original: String) throws -> String? {
    return "ok"
}

var helloInJapanese = try? translate(original: "Hello")

// ###############################
// Is Multiple Of
// ###############################

let number = 205

number % 6 == 0

number.isMultiple(of: 6)
