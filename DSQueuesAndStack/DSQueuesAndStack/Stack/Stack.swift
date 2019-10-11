//
//  DSStack.swift
//  DSQueuesAndStack
//
//  Created by Nishant Kumbhare on 10/10/19.
//  Copyright © 2019 Nishant Kumbhare. All rights reserved.
//

import Foundation

struct DSStack<Element: Equatable>: Equatable {
    
    var storage: [Element] = []
    
    var isEmpty: Bool {
        return self.peak() == nil
    }
    
    init() { }
    
    init(_ elements: [Element]) {
        self.storage = elements
    }

    mutating func push(_ element: Element) {
        self.storage.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Element? {
        self.storage.popLast()
    }
    
    func peak() -> Element? {
        self.storage.last
    }
}

extension DSStack: CustomStringConvertible {
    var description: String {
        return storage.map { "\($0)" }.joined(separator: " ")
    }
}

extension DSStack: ExpressibleByArrayLiteral {
  init(arrayLiteral elements: Element...) {
    storage = elements
  }
}
