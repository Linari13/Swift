import Foundation

// Switches

var age = 30

switch age {
case 0...12:
    print("A young child")
case 13...18:
    print("A teenager")
case 19...105:
    print("An adult")
case 105...300:
    print("You are a miracle")
default:
    print("Something else")
}
















enum Compass {
    case north
    case south
    case east
    case west
}

var direction : Compass = .east

func getDirections(whichWay : Compass) {
    switch whichWay {
    case .north:
        print("TurnUp!")
    case .south:
        print("Turn Down for what!?")
    case .east:
        print("Turn right")
    case .west:
        print("Turn left")
    }
}


getDirections(whichWay: .south)















enum FurColor {
    case Black
    case Brown
    case White
    case Golden
}

struct Dog {
    var age : Int
    var name : String
    var furColor : FurColor
    
    func whichColor() {
        switch furColor {
        case .Golden:
            print("The furr is magnificant")
        default:
            print("Well it's not golden...")
        }
    }
}

Dog(age: 4, name: "GGEW", furColor: .Golden).whichColor()
