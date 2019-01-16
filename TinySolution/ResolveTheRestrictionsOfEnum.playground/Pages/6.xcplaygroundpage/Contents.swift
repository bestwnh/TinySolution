//: [Previous](@previous)

import Foundation

enum Line {
    case solid(width: Float)
    case dash(width: Float)
    case dash(width: Float, dashWidth: Float, spaceWidth: Float)
    
    func output() {
        switch self {
        case let .solid(width):
            print("solid: \(width)")
        case let .dash(width, dashWidth, spaceWidth):
            print("dash: \(width) dashWidth: \(dashWidth) spaceWidth: \(spaceWidth)")
        case let .dash(width): // This will cause warning, but warning not show in playground page
            print("dash: \(width)")
        default:
            print("default")
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
