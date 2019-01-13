//: [Previous](@previous)

import Foundation

struct Line {
    enum Content {
        case solid(width: Float)
        case dash(width: Float, dashWidth: Float, spaceWidth: Float)
    }
    let content: Content
    
    static func solid(width: Float) -> Line {
        return Line(content: .solid(width: width))
    }
    
    static func dash(width: Float, dashWidth: Float = 2, spaceWidth: Float = 2) -> Line {
        return Line(content: .dash(width: width, dashWidth: dashWidth, spaceWidth: spaceWidth))
    }
    
    func output() {
        switch content {
        case let .solid(width):
            print("solid: \(width)")
        case let .dash(width, dashWidth, spaceWidth):
            print("dash: \(width) dashWidth: \(dashWidth) spaceWidth: \(spaceWidth)")
        }
    }
}

Line.dash(width: 1).output()
Line.dash(width: 2, dashWidth: 1, spaceWidth: 1).output()
