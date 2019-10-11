//
//  DSQueue.swift
//  DSQueuesAndStack
//
//  Created by Nishant Kumbhare on 10/10/19.
//  Copyright © 2019 Nishant Kumbhare. All rights reserved.
//

import Foundation

struct DSQueue<Element: Equatable>: Equatable {
    
    var storage: [Element] = []
    
    var isEmpty: Bool {
        return storage.isEmpty
    }
    
    init() { }
    
    init(_ elements: [Element]) {
        self.storage = elements
    }
    
    func peak() -> Element? {
        return storage.first
    }
    
    mutating func enqueue(_ element: Element) {
        self.storage.append(element)
    }
    
    @discardableResult
    mutating func dequeue() -> Element? {
        return isEmpty ? nil : storage.removeFirst()
    }
    
}

extension DSQueue: CustomStringConvertible {
    var description: String {
        return storage.map { "\($0)"}.joined(separator: " ")
    }
}
