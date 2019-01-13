//: [Previous](@previous)

import Foundation

enum Line {
    case solid(width: Float)
    case dash(width: Float, dashWidth: Float, spaceWidth: Float)
    
    static func dash(width: Float) -> Line {
        return .dash(width: width, dashWidth: 2, spaceWidth: 2)
    }
    /* The static method below will cause redeclaration error */
//    static func dash(width: Float, dashWidth: Float, spaceWidth: Float) -> Line {
//        return .dash(width: width, dashWidth: dashWidth, spaceWidth: dashWidth)
//    }
    
    func output() {
        switch self {
        case let .solid(width):
            print("solid: \(width)")
        case let .dash(width, dashWidth, spaceWidth):
            print("dash: \(width) dashWidth: \(dashWidth) spaceWidth: \(spaceWidth)")
        }
    }
}

Line.dash(width: 1).output()
Line.dash(width: 2, dashWidth: 1, spaceWidth: 1).output()

if case Line.dash = Line.dash(width: 1) {
    print("equal")
} else {
    print("not equal")
}
if case Line.dash = Line.dash(width: 2, dashWidth: 1, spaceWidth: 1) {
    print("equal")
} else {
    print("not equal")
}

//: [Next](@next)
