//
//  Stack(p111~p112).swift
//  
//
//  Created by baby1234 on 2019/10/24.
//

import Foundation

public struct Stack<T> {
    private var elements = [T]()
    public init() {}
    public mutating func pop() -> T? {
        return self.elements.popLast()
    }

    public mutating func push(element: T) {
        self.elements.append(element)
    }

    public func peek() -> T? {
        return self.elements.last
    }

    public var isEmpty: Bool {
        return self.elements.isEmpty
    }

    public var count: Int {
        return self.elements.count
    }
}
