//
//  DSQueueStackTest.swift
//  DSQueuesAndStackTests
//
//  Created by Nishant Kumbhare on 11/10/19.
//  Copyright © 2019 Nishant Kumbhare. All rights reserved.
//

import XCTest

class DSQueueStackTest: XCTestCase {

    var queueStack: DSQueueStack = DSQueueStack<Int>()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        queueStack.enqueue(1)
        queueStack.enqueue(2)
        queueStack.enqueue(3)
        queueStack.enqueue(4)
    }
    
    func testInit() {
        let array = [1, 2, 3, 4]
        XCTAssertEqual(queueStack, DSQueueStack(array))
    }
    
    func testPeak() {
        XCTAssertEqual(queueStack.peak(), 1)
    }
    
    func testEnqueue() {
        XCTAssertEqual(queueStack.description, "1 2 3 4")
    }

    func testDequeue() {
        XCTAssertEqual(queueStack.dequeue(), 1)
    }
    
    func testIsEmptyFalse() {
        XCTAssertFalse(queueStack.isEmpty)
    }
    
    func testIsEmptyTrue() {
        queueStack.dequeue()
        queueStack.dequeue()
        queueStack.dequeue()
        queueStack.dequeue()
        XCTAssertTrue(queueStack.isEmpty)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
