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
        case let .dash(width):     // This will cause warning, but warning not show in playground page
            print("dash: \(width)")
        default:
            print("default")
        }
    }
}

//: [Next](@next)
