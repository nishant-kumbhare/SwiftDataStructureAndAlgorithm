//
//  DSQueueStack.swift
//  DSQueuesAndStack
//
//  Created by Nishant Kumbhare on 11/10/19.
//  Copyright © 2019 Nishant Kumbhare. All rights reserved.
//

import Foundation

struct DSQueueStack<Element: Equatable>: Equatable {
    
    private var enqueueStack: [Element] = []
    private var dequeueStack: [Element] = []
    
    var isEmpty: Bool {
        return enqueueStack.isEmpty && dequeueStack.isEmpty
    }
    
    init() { }
    
    init(_ elements: [Element]) {
        self.enqueueStack = elements
    }
    
    func peak() -> Element? {
        return dequeueStack.isEmpty ? enqueueStack.first : dequeueStack.last
    }
    
    mutating func enqueue(_ element: Element) {
        self.enqueueStack.append(element)
    }
    
    @discardableResult
    mutating func dequeue() -> Element? {
        if dequeueStack.isEmpty {
            self.dequeueStack = enqueueStack.reversed()
            self.enqueueStack.removeAll()
        }
        return dequeueStack.popLast()
    }
    
}

extension DSQueueStack: CustomStringConvertible {
    var description: String {
        return enqueueStack.map{"\($0)"}.joined(separator: " ")
    }
}
